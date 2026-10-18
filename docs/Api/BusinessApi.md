# SMSPool\BusinessApi

These endpoints can only be reached by business accounts.

All URIs are relative to https://api.smspool.net, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**businessCreate()**](BusinessApi.md#businessCreate) | **POST** /business/create | Register user |
| [**businessUserHistory()**](BusinessApi.md#businessUserHistory) | **POST** /business/user/history | History |
| [**businessUserUpdate()**](BusinessApi.md#businessUserUpdate) | **POST** /business/user/update | Update |
| [**businessUsers()**](BusinessApi.md#businessUsers) | **GET** /business/users | Retrieve users |


## `businessCreate()`

```php
businessCreate($username, $password, $daily_spend_limit): mixed
```

Register user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\BusinessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$username = 'username_example'; // string
$password = 'password_example'; // string
$daily_spend_limit = 3.4; // float | Optional daily spend cap in USD. Omit for no limit.

try {
    $result = $apiInstance->businessCreate($username, $password, $daily_spend_limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BusinessApi->businessCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **username** | **string**|  | |
| **password** | **string**|  | |
| **daily_spend_limit** | **float**| Optional daily spend cap in USD. Omit for no limit. | [optional] |

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

## `businessUserHistory()`

```php
businessUserHistory($id): mixed
```

History

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\BusinessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | User ID retrievd from `Retrieve users` endpoint

try {
    $result = $apiInstance->businessUserHistory($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BusinessApi->businessUserHistory: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| User ID retrievd from &#x60;Retrieve users&#x60; endpoint | |

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

## `businessUserUpdate()`

```php
businessUserUpdate($id, $password, $balance, $active, $daily_spend_limit): mixed
```

Update

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\BusinessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | User ID retrievd from `Retrieve users` endpoint
$password = 'password_example'; // string | Leave empty if you do not wish to update the password
$balance = 3.4; // float | Leave empty if you do not wish to update the balance, sets the balance by the requested value
$active = 56; // int | Disable/enable user account (optional)
$daily_spend_limit = 3.4; // float | Daily spend cap in USD. Leave empty to leave unchanged, send -1 to remove the cap, 0 to block all spending.

try {
    $result = $apiInstance->businessUserUpdate($id, $password, $balance, $active, $daily_spend_limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BusinessApi->businessUserUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| User ID retrievd from &#x60;Retrieve users&#x60; endpoint | |
| **password** | **string**| Leave empty if you do not wish to update the password | [optional] |
| **balance** | **float**| Leave empty if you do not wish to update the balance, sets the balance by the requested value | [optional] |
| **active** | **int**| Disable/enable user account (optional) | [optional] |
| **daily_spend_limit** | **float**| Daily spend cap in USD. Leave empty to leave unchanged, send -1 to remove the cap, 0 to block all spending. | [optional] |

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

## `businessUsers()`

```php
businessUsers(): mixed
```

Retrieve users

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\BusinessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->businessUsers();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BusinessApi->businessUsers: ', $e->getMessage(), PHP_EOL;
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
