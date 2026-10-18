# SMSPool\PreordersApi



All URIs are relative to https://api.smspool.net, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**preorderCancel()**](PreordersApi.md#preorderCancel) | **POST** /preorder/cancel | Cancel |
| [**preorderCheck()**](PreordersApi.md#preorderCheck) | **POST** /preorder/check | Check |
| [**preorderCreate()**](PreordersApi.md#preorderCreate) | **POST** /preorder/create | Create |
| [**preorderPrice()**](PreordersApi.md#preorderPrice) | **POST** /preorder/price | Price |
| [**preorderRetrieve()**](PreordersApi.md#preorderRetrieve) | **POST** /preorder/retrieve | Retrieve |


## `preorderCancel()`

```php
preorderCancel($orderid): mixed
```

Cancel

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\PreordersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orderid = 'orderid_example'; // string

try {
    $result = $apiInstance->preorderCancel($orderid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PreordersApi->preorderCancel: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orderid** | **string**|  | |

### Return type

**mixed**

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `preorderCheck()`

```php
preorderCheck($orderid): mixed
```

Check

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\PreordersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orderid = 'orderid_example'; // string

try {
    $result = $apiInstance->preorderCheck($orderid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PreordersApi->preorderCheck: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orderid** | **string**|  | |

### Return type

**mixed**

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `preorderCreate()`

```php
preorderCreate($service, $country, $pool, $max_price, $areacode): mixed
```

Create

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\PreordersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$service = 'service_example'; // string | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
$country = 'country_example'; // string | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint
$pool = 'pool_example'; // string
$max_price = 3.4; // float
$areacode = 'areacode_example'; // string

try {
    $result = $apiInstance->preorderCreate($service, $country, $pool, $max_price, $areacode);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PreordersApi->preorderCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **service** | **string**| Service name or service ID which can be retrieved at the /service/retrieve_all endpoint | |
| **country** | **string**| Country name or country ID which can be retrieved at the /country/retrieve_all endpoint | |
| **pool** | **string**|  | |
| **max_price** | **float**|  | |
| **areacode** | **string**|  | [optional] |

### Return type

**mixed**

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `preorderPrice()`

```php
preorderPrice($service, $country, $pool): mixed
```

Price

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\PreordersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$service = 'service_example'; // string | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
$country = 'country_example'; // string | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint
$pool = 'pool_example'; // string

try {
    $result = $apiInstance->preorderPrice($service, $country, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PreordersApi->preorderPrice: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **service** | **string**| Service name or service ID which can be retrieved at the /service/retrieve_all endpoint | |
| **country** | **string**| Country name or country ID which can be retrieved at the /country/retrieve_all endpoint | |
| **pool** | **string**|  | |

### Return type

**mixed**

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `preorderRetrieve()`

```php
preorderRetrieve(): mixed
```

Retrieve

This API endpoint allows you to retrieve preorders from the SMS Pool system. It is an HTTP POST request sent to the URL `https://api.smspool.net/preorder/retrieve`.  ### Request Parameters  This endpoint requires the \\`key\\` parameter which is your API key.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\PreordersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->preorderRetrieve();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PreordersApi->preorderRetrieve: ', $e->getMessage(), PHP_EOL;
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
