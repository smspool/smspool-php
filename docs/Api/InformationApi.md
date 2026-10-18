# SMSPool\InformationApi

Look up countries, services, pools, success rates and your balance.

All URIs are relative to https://api.smspool.net, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**countryRetrieveAll()**](InformationApi.md#countryRetrieveAll) | **GET** /country/retrieve_all | Country list |
| [**poolRetrieveAll()**](InformationApi.md#poolRetrieveAll) | **POST** /pool/retrieve_all | Pool list |
| [**poolRetrieveValid()**](InformationApi.md#poolRetrieveValid) | **POST** /pool/retrieve_valid | Suggested Pools |
| [**requestBalance()**](InformationApi.md#requestBalance) | **POST** /request/balance | Balance |
| [**requestSuccessRate()**](InformationApi.md#requestSuccessRate) | **POST** /request/success_rate | Retrieve country success rates per service |
| [**requestSuggestedCountries()**](InformationApi.md#requestSuggestedCountries) | **POST** /request/suggested_countries | Suggested Countries |
| [**serviceRetrieveAll()**](InformationApi.md#serviceRetrieveAll) | **GET** /service/retrieve_all | Service list |


## `countryRetrieveAll()`

```php
countryRetrieveAll($show_all): mixed
```

Country list

This API endpoint is used to retrieve the full country list for SMSPool requests. It sends an HTTP GET request to the URL `https://api.smspool.net/country/retrieve_all`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\InformationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$show_all = 'show_all_example'; // string

try {
    $result = $apiInstance->countryRetrieveAll($show_all);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InformationApi->countryRetrieveAll: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **show_all** | **string**|  | [optional] |

### Return type

**mixed**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `poolRetrieveAll()`

```php
poolRetrieveAll(): mixed
```

Pool list

This API endpoint is used to retrieve a list of our active pools for SMSPool requests. It sends an HTTP POST request to the URL `https://api.smspool.net/pool/retrieve_all`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\InformationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->poolRetrieveAll();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InformationApi->poolRetrieveAll: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

**mixed**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `poolRetrieveValid()`

```php
poolRetrieveValid($service, $country, $web, $include_stock): mixed
```

Suggested Pools

This API endpoint is used to retrieve suggested pools for SMSPool requests. It sends an HTTP POST request to the URL `https://api.smspool.net/pool/retrieve_valid`.  Please use either the service ID, or the service name as service param.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\InformationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$service = 'service_example'; // string | Service retrieved from ''Service list\\\" endpoint
$country = 'country_example'; // string | Country retrieved from ''Country list\\\" endpoint
$web = 'web_example'; // string | Return array format
$include_stock = 'include_stock_example'; // string

try {
    $result = $apiInstance->poolRetrieveValid($service, $country, $web, $include_stock);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InformationApi->poolRetrieveValid: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **service** | **string**| Service retrieved from &#39;&#39;Service list\\\&quot; endpoint | |
| **country** | **string**| Country retrieved from &#39;&#39;Country list\\\&quot; endpoint | |
| **web** | **string**| Return array format | [optional] |
| **include_stock** | **string**|  | [optional] |

### Return type

**mixed**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `requestBalance()`

```php
requestBalance(): mixed
```

Balance

This HTTP POST request is used to retrieve the balance for a specific SMSPool. The request is sent to the URL `https://api.smspool.net/request/balance`.  ### Request Parameters  This request require the \\`key\\` param which is your API key  ### Response  The response to this request will have a status code of 200 if the request is successful. The response body will be in JSON format and will include a `balance` field. However, the last execution of this request returned an empty string for the `balance` field.  Please note that the actual value of the `balance` field may vary depending on the user and its configuration.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\InformationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->requestBalance();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InformationApi->requestBalance: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

**mixed**

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `requestSuccessRate()`

```php
requestSuccessRate($service, $country): mixed
```

Retrieve country success rates per service

This API endpoint is used to retrieve success per country for SMSPool requests. It sends an HTTP POST request to the URL `https://api.smspool.net/request/success_rate`.  Please use either the service ID, or the service name as service param.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\InformationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$service = 'service_example'; // string | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
$country = 'country_example'; // string | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint

try {
    $result = $apiInstance->requestSuccessRate($service, $country);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InformationApi->requestSuccessRate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **service** | **string**| Service name or service ID which can be retrieved at the /service/retrieve_all endpoint | |
| **country** | **string**| Country name or country ID which can be retrieved at the /country/retrieve_all endpoint | [optional] |

### Return type

**mixed**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `requestSuggestedCountries()`

```php
requestSuggestedCountries($service): mixed
```

Suggested Countries

This API endpoint is used to retrieve suggested countries for SMS pool requests. It sends an HTTP POST request to the URL `https://api.smspool.net/request/suggested_countries`.  Please use either the service ID, or the service name as service param.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\InformationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$service = 'service_example'; // string | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint

try {
    $result = $apiInstance->requestSuggestedCountries($service);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InformationApi->requestSuggestedCountries: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **service** | **string**| Service name or service ID which can be retrieved at the /service/retrieve_all endpoint | |

### Return type

**mixed**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `serviceRetrieveAll()`

```php
serviceRetrieveAll($country): mixed
```

Service list

This API endpoint is used to retrieve the full service list for SMSPool requests. It sends an HTTP GET request to the URL `https://api.smspool.net/service/retrieve_all`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\InformationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$country = 1; // string

try {
    $result = $apiInstance->serviceRetrieveAll($country);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InformationApi->serviceRetrieveAll: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **country** | **string**|  | [optional] |

### Return type

**mixed**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
