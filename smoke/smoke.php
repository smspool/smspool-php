<?php
require __DIR__ . '/../vendor/autoload.php';

$config = SMSPool\Configuration::getDefaultConfiguration()->setHost('https://api.smspool.net');
$api = new SMSPool\Api\InformationApi(new GuzzleHttp\Client(), $config);
$countries = $api->countryRetrieveAll();
if (!is_array($countries) || !$countries) { fwrite(STDERR, "no countries\n"); exit(1); }
echo "countries: ", count($countries), " ", json_encode($countries[0]), "\n";
$rates = $api->requestSuccessRate('1');
if (!$rates) { fwrite(STDERR, "no success rates\n"); exit(1); }
echo "success_rate (form POST): ", substr(json_encode($rates), 0, 80), "\n";

$authed = (clone $config)->setAccessToken(str_repeat('0', 32));
try {
    (new SMSPool\Api\InformationApi(new GuzzleHttp\Client(), $authed))->requestBalance();
    fwrite(STDERR, "expected an auth error\n"); exit(1);
} catch (SMSPool\ApiException $e) {
    if (!in_array($e->getCode(), [401, 403], true)) { throw $e; }
    echo "bad key -> ", $e->getCode(), " ", substr((string) $e->getResponseBody(), 0, 80), "\n";
}
echo "PHP OK\n";
