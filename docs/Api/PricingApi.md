# SMSPool\PricingApi



All URIs are relative to https://api.smspool.net, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**requestPrice()**](PricingApi.md#requestPrice) | **POST** /request/price | Retrieve specific price &amp; Success Rate |
| [**requestPricing()**](PricingApi.md#requestPricing) | **POST** /request/pricing | Retrieve all pricing |


## `requestPrice()`

```php
requestPrice($country, $service, $pool, $skip_success_rate): mixed
```

Retrieve specific price & Success Rate

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\PricingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$country = 'country_example'; // string | Country retrieved from ''Country list\\\" endpoint
$service = 'service_example'; // string | Service retrieved from ''Service list\\\" endpoint
$pool = 'pool_example'; // string | Pool retrieved from ''Pool list\\\" endpoint
$skip_success_rate = 'skip_success_rate_example'; // string

try {
    $result = $apiInstance->requestPrice($country, $service, $pool, $skip_success_rate);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PricingApi->requestPrice: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **country** | **string**| Country retrieved from &#39;&#39;Country list\\\&quot; endpoint | |
| **service** | **string**| Service retrieved from &#39;&#39;Service list\\\&quot; endpoint | |
| **pool** | **string**| Pool retrieved from &#39;&#39;Pool list\\\&quot; endpoint | [optional] |
| **skip_success_rate** | **string**|  | [optional] |

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

## `requestPricing()`

```php
requestPricing($country, $service, $pool, $max_price): mixed
```

Retrieve all pricing

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\PricingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$country = 'country_example'; // string | Optional parameter to request services per country
$service = 'service_example'; // string | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
$pool = 'pool_example'; // string
$max_price = 3.4; // float

try {
    $result = $apiInstance->requestPricing($country, $service, $pool, $max_price);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PricingApi->requestPricing: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **country** | **string**| Optional parameter to request services per country | [optional] |
| **service** | **string**| Service name or service ID which can be retrieved at the /service/retrieve_all endpoint | [optional] |
| **pool** | **string**|  | [optional] |
| **max_price** | **float**|  | [optional] |

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
