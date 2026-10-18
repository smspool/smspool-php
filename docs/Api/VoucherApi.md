# SMSPool\VoucherApi

Please keep in mind that this endpoint is only accessible for users that have special permissions to generate and maintain vouchers.

All URIs are relative to https://api.smspool.net, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**voucherBulkGenerate()**](VoucherApi.md#voucherBulkGenerate) | **POST** /voucher/bulk_generate | Bulk generate vouchers |
| [**voucherDelete()**](VoucherApi.md#voucherDelete) | **POST** /voucher/delete | Delete voucher |
| [**voucherGenerate()**](VoucherApi.md#voucherGenerate) | **POST** /voucher/generate | Generate voucher |
| [**voucherRetrieve()**](VoucherApi.md#voucherRetrieve) | **POST** /voucher/retrieve | Retrieve vouchers |


## `voucherBulkGenerate()`

```php
voucherBulkGenerate($amount, $quantity): mixed
```

Bulk generate vouchers

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\VoucherApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$amount = 3.4; // float
$quantity = 56; // int

try {
    $result = $apiInstance->voucherBulkGenerate($amount, $quantity);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VoucherApi->voucherBulkGenerate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **amount** | **float**|  | |
| **quantity** | **int**|  | |

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

## `voucherDelete()`

```php
voucherDelete($voucher): mixed
```

Delete voucher

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\VoucherApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$voucher = 'voucher_example'; // string | Your voucher code

try {
    $result = $apiInstance->voucherDelete($voucher);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VoucherApi->voucherDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **voucher** | **string**| Your voucher code | |

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

## `voucherGenerate()`

```php
voucherGenerate($amount): mixed
```

Generate voucher

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\VoucherApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$amount = 3.4; // float | The amount per promocode

try {
    $result = $apiInstance->voucherGenerate($amount);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VoucherApi->voucherGenerate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **amount** | **float**| The amount per promocode | |

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

## `voucherRetrieve()`

```php
voucherRetrieve(): mixed
```

Retrieve vouchers

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\VoucherApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->voucherRetrieve();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VoucherApi->voucherRetrieve: ', $e->getMessage(), PHP_EOL;
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
