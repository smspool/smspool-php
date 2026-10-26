# SMSPool\ESIMsApi

&gt; **eSIMs have moved to [SIMJuno](https://simjuno.com).** Buy new data-only eSIMs on SIMJuno. The endpoints below remain for eSIMs bought on SMSPool.  Introduction to the eSIM API usage. Here&#39;s a step-to-step process on how to streamline your eSIM purchases:  1. Retrieve the country list from **View eSIM countries**      2. Retrieve the plans per country using the **countryCode**      3. Create your first purchase using the **Purchase eSIM**      4. Retrieve the **transactionId** from **Purchase eSIM**      5. Use the **View eSIM profile** endpoint to retrieve the QR code, or the access URL in order to install the eSIM or view remaining data.

All URIs are relative to https://api.smspool.net, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**esimDelete()**](ESIMsApi.md#esimDelete) | **POST** /esim/delete | Delete eSIM |
| [**esimHistory()**](ESIMsApi.md#esimHistory) | **POST** /esim/history | View eSIM history |
| [**esimLabelUpdate()**](ESIMsApi.md#esimLabelUpdate) | **POST** /esim/label/update | Update eSIM label |
| [**esimPlans()**](ESIMsApi.md#esimPlans) | **POST** /esim/plans | View eSIM plans per country |
| [**esimPricing()**](ESIMsApi.md#esimPricing) | **POST** /esim/pricing | View eSIM countries |
| [**esimProfile()**](ESIMsApi.md#esimProfile) | **POST** /esim/profile | View eSIM profile |
| [**esimPurchase()**](ESIMsApi.md#esimPurchase) | **POST** /esim/purchase | Purchase eSIM |
| [**esimTopup()**](ESIMsApi.md#esimTopup) | **POST** /esim/topup | Top up eSIM |
| [**esimTopupPlans()**](ESIMsApi.md#esimTopupPlans) | **POST** /esim/topup_plans | Top Up Plans |


## `esimDelete()`

```php
esimDelete($transaction_id): mixed
```

Delete eSIM

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\ESIMsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$transaction_id = 'transaction_id_example'; // string | transactionId retrieved from /esim/purchase

try {
    $result = $apiInstance->esimDelete($transaction_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ESIMsApi->esimDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **transaction_id** | **string**| transactionId retrieved from /esim/purchase | |

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

## `esimHistory()`

```php
esimHistory($start, $length, $search): mixed
```

View eSIM history

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\ESIMsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$start = 56; // int | Start page
$length = 56; // int | Amount of rows per page
$search = 'search_example'; // string | Alphanumeric search

try {
    $result = $apiInstance->esimHistory($start, $length, $search);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ESIMsApi->esimHistory: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start** | **int**| Start page | [optional] |
| **length** | **int**| Amount of rows per page | [optional] |
| **search** | **string**| Alphanumeric search | [optional] |

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

## `esimLabelUpdate()`

```php
esimLabelUpdate($transaction_id, $label): mixed
```

Update eSIM label

Set or clear the label of one of your eSIMs. The label is returned as `label` by **View eSIM history**, so you can use it to tell your eSIMs apart.  A label can be up to 30 characters long and may only contain letters, numbers and spaces. Leave `label` out, or send it empty, to remove the label.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\ESIMsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$transaction_id = 'transaction_id_example'; // string | transactionId retrieved from /esim/purchase
$label = 'label_example'; // string | The new label: letters, numbers and spaces, at most 30 characters. Empty or left out removes the label.

try {
    $result = $apiInstance->esimLabelUpdate($transaction_id, $label);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ESIMsApi->esimLabelUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **transaction_id** | **string**| transactionId retrieved from /esim/purchase | |
| **label** | **string**| The new label: letters, numbers and spaces, at most 30 characters. Empty or left out removes the label. | [optional] |

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

## `esimPlans()`

```php
esimPlans($country): mixed
```

View eSIM plans per country

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\ESIMsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$country = 'country_example'; // string | ISO 3166 country code

try {
    $result = $apiInstance->esimPlans($country);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ESIMsApi->esimPlans: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **country** | **string**| ISO 3166 country code | |

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

## `esimPricing()`

```php
esimPricing($start, $length, $search): mixed
```

View eSIM countries

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\ESIMsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$start = 56; // int | Start page
$length = 56; // int | Amount of rows per page
$search = 'search_example'; // string | Search query for country

try {
    $result = $apiInstance->esimPricing($start, $length, $search);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ESIMsApi->esimPricing: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start** | **int**| Start page | [optional] |
| **length** | **int**| Amount of rows per page | [optional] |
| **search** | **string**| Search query for country | [optional] |

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

## `esimProfile()`

```php
esimProfile($transaction_id): mixed
```

View eSIM profile

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\ESIMsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$transaction_id = 'transaction_id_example'; // string | transactionId retrieved from /esim/purchase

try {
    $result = $apiInstance->esimProfile($transaction_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ESIMsApi->esimProfile: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **transaction_id** | **string**| transactionId retrieved from /esim/purchase | [optional] |

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

## `esimPurchase()`

```php
esimPurchase($plan): mixed
```

Purchase eSIM

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\ESIMsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$plan = 56; // int | The plan ID which is obtained from /esim/pricing

try {
    $result = $apiInstance->esimPurchase($plan);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ESIMsApi->esimPurchase: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **plan** | **int**| The plan ID which is obtained from /esim/pricing | |

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

## `esimTopup()`

```php
esimTopup($transaction_id, $plan): mixed
```

Top up eSIM

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\ESIMsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$transaction_id = 'transaction_id_example'; // string | Transaction ID retrieved from eSIM history
$plan = 56; // int | Topup plan retrieved from \\\"Top Up Plans\\\"

try {
    $result = $apiInstance->esimTopup($transaction_id, $plan);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ESIMsApi->esimTopup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **transaction_id** | **string**| Transaction ID retrieved from eSIM history | |
| **plan** | **int**| Topup plan retrieved from \\\&quot;Top Up Plans\\\&quot; | |

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

## `esimTopupPlans()`

```php
esimTopupPlans($plan): mixed
```

Top Up Plans

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\ESIMsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$plan = 56; // int | `plan` retrieved from eSIM history

try {
    $result = $apiInstance->esimTopupPlans($plan);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ESIMsApi->esimTopupPlans: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **plan** | **int**| &#x60;plan&#x60; retrieved from eSIM history | |

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
