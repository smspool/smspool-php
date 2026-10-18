# SMSPool\RentalApi

All endpoints for long-term orders

All URIs are relative to https://api.smspool.net, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**purchaseRental()**](RentalApi.md#purchaseRental) | **POST** /purchase/rental | Order Rental |
| [**rentalAutoExtend()**](RentalApi.md#rentalAutoExtend) | **POST** /rental/auto_extend | Enable Auto Extend Rental |
| [**rentalExtend()**](RentalApi.md#rentalExtend) | **POST** /rental/extend | Extend Rental |
| [**rentalHistory()**](RentalApi.md#rentalHistory) | **POST** /rental/history | Rental History |
| [**rentalInfo()**](RentalApi.md#rentalInfo) | **POST** /rental/info | Retrieve Rental Info |
| [**rentalRefund()**](RentalApi.md#rentalRefund) | **POST** /rental/refund | Refund Rental |
| [**rentalReset()**](RentalApi.md#rentalReset) | **POST** /rental/reset | Reset Rental |
| [**rentalRetrieve()**](RentalApi.md#rentalRetrieve) | **POST** /rental/retrieve | Retrieve Active Rentals |
| [**rentalRetrieveAll()**](RentalApi.md#rentalRetrieveAll) | **POST** /rental/retrieve_all | Retrieve Rental IDs |
| [**rentalRetrieveHistory()**](RentalApi.md#rentalRetrieveHistory) | **POST** /rental/retrieve_history | Retrieve your rentals |
| [**rentalRetrieveMessages()**](RentalApi.md#rentalRetrieveMessages) | **POST** /rental/retrieve_messages | Retrieve Rental Messages |
| [**rentalRetrievePricing()**](RentalApi.md#rentalRetrievePricing) | **POST** /rental/retrieve_pricing | Retrieve Rental Pricing |
| [**rentalRetrieveServices()**](RentalApi.md#rentalRetrieveServices) | **POST** /rental/retrieve_services | Retrieve Rental Services |
| [**rentalRetrieveStatus()**](RentalApi.md#rentalRetrieveStatus) | **POST** /rental/retrieve_status | Retrieve Rental Status |
| [**rentalServicePrice()**](RentalApi.md#rentalServicePrice) | **POST** /rental/service_price | Retrieve rental service price |
| [**rentalStock()**](RentalApi.md#rentalStock) | **POST** /rental/stock | Retrieve Rental Stock |


## `purchaseRental()`

```php
purchaseRental($id, $days, $service_id, $create_token, $city, $state, $zipcode): mixed
```

Order Rental

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | Rental ID retrieved from Retrieve Rental IDs
$days = 56; // int
$service_id = 56; // int | Optional value on which service you'd purchase the rental for
$create_token = 56; // int | Create a rental token which allows you to share this specific rental
$city = 'city_example'; // string
$state = 'state_example'; // string
$zipcode = 'zipcode_example'; // string

try {
    $result = $apiInstance->purchaseRental($id, $days, $service_id, $create_token, $city, $state, $zipcode);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->purchaseRental: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| Rental ID retrieved from Retrieve Rental IDs | |
| **days** | **int**|  | |
| **service_id** | **int**| Optional value on which service you&#39;d purchase the rental for | [optional] |
| **create_token** | **int**| Create a rental token which allows you to share this specific rental | [optional] |
| **city** | **string**|  | [optional] |
| **state** | **string**|  | [optional] |
| **zipcode** | **string**|  | [optional] |

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

## `rentalAutoExtend()`

```php
rentalAutoExtend($rental_code): mixed
```

Enable Auto Extend Rental

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$rental_code = 'rental_code_example'; // string | The retrieved rental code from the `Order rental` endpoint.

try {
    $result = $apiInstance->rentalAutoExtend($rental_code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalAutoExtend: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **rental_code** | **string**| The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | |

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

## `rentalExtend()`

```php
rentalExtend($days, $rental_code): mixed
```

Extend Rental

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$days = 56; // int
$rental_code = 'rental_code_example'; // string | The retrieved rental code from the `Order rental` endpoint.

try {
    $result = $apiInstance->rentalExtend($days, $rental_code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalExtend: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **days** | **int**|  | |
| **rental_code** | **string**| The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | |

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

## `rentalHistory()`

```php
rentalHistory(): mixed
```

Rental History

Retrieve a history of all your rental actions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->rentalHistory();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalHistory: ', $e->getMessage(), PHP_EOL;
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

## `rentalInfo()`

```php
rentalInfo($rental_code): mixed
```

Retrieve Rental Info

Retrieve rental information

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$rental_code = 'rental_code_example'; // string | The retrieved rental code from the `Order rental` endpoint.

try {
    $result = $apiInstance->rentalInfo($rental_code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalInfo: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **rental_code** | **string**| The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | |

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

## `rentalRefund()`

```php
rentalRefund($rental_code): mixed
```

Refund Rental

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$rental_code = 'rental_code_example'; // string | The retrieved rental code from the `Order rental` endpoint.

try {
    $result = $apiInstance->rentalRefund($rental_code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalRefund: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **rental_code** | **string**| The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | |

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

## `rentalReset()`

```php
rentalReset($rental_code): mixed
```

Reset Rental

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$rental_code = 'rental_code_example'; // string | The retrieved rental code from the `Order rental` endpoint.

try {
    $result = $apiInstance->rentalReset($rental_code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalReset: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **rental_code** | **string**| The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | |

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

## `rentalRetrieve()`

```php
rentalRetrieve(): mixed
```

Retrieve Active Rentals

Retrieve a history of all your rental actions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->rentalRetrieve();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalRetrieve: ', $e->getMessage(), PHP_EOL;
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

## `rentalRetrieveAll()`

```php
rentalRetrieveAll($type): mixed
```

Retrieve Rental IDs

Retrieve available rental products. Each listing includes `is_refundable` (`0` or `1`), `refund_within` (hours after purchase a refund is allowed; `0` when not refundable), and `refund_min_days` (minimum duration that is eligible for a refund; `0` when there is no duration floor or the rental is never refundable). Refunds also require that no messages have been received.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$type = 56; // int | Choose whether the rental is extendable or not with a 0 or 1

try {
    $result = $apiInstance->rentalRetrieveAll($type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalRetrieveAll: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **type** | **int**| Choose whether the rental is extendable or not with a 0 or 1 | |

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

## `rentalRetrieveHistory()`

```php
rentalRetrieveHistory(): mixed
```

Retrieve your rentals

List every rental on your account that was not refunded, including expired ones. For the actions taken on your rentals (activations, extensions, refunds) use **Rental History** instead.  - `rental`: the rental ID from **Retrieve Rental IDs** - `rental_code`: use it with the other rental endpoints, such as **Retrieve Rental Messages** - `expiration_date`: Unix timestamp - `source`: the pool the number comes from - `state`: the US state of the number, or `Unknown`

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->rentalRetrieveHistory();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalRetrieveHistory: ', $e->getMessage(), PHP_EOL;
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

## `rentalRetrieveMessages()`

```php
rentalRetrieveMessages($rental_code): mixed
```

Retrieve Rental Messages

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$rental_code = 'rental_code_example'; // string | The retrieved rental code from the `Order rental` endpoint.

try {
    $result = $apiInstance->rentalRetrieveMessages($rental_code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalRetrieveMessages: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **rental_code** | **string**| The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | |

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

## `rentalRetrievePricing()`

```php
rentalRetrievePricing($id, $service): mixed
```

Retrieve Rental Pricing

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 56; // int | The rental ID retrieved from `Retrieve Rental IDs`
$service = 'service_example'; // string | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint

try {
    $result = $apiInstance->rentalRetrievePricing($id, $service);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalRetrievePricing: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The rental ID retrieved from &#x60;Retrieve Rental IDs&#x60; | |
| **service** | **string**| Service name or service ID which can be retrieved at the /service/retrieve_all endpoint | [optional] |

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

## `rentalRetrieveServices()`

```php
rentalRetrieveServices($rental): mixed
```

Retrieve Rental Services

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$rental = 56; // int | The rental ID retrieved from `Retrieve Rental IDs`

try {
    $result = $apiInstance->rentalRetrieveServices($rental);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalRetrieveServices: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **rental** | **int**| The rental ID retrieved from &#x60;Retrieve Rental IDs&#x60; | [optional] |

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

## `rentalRetrieveStatus()`

```php
rentalRetrieveStatus($rental_code): mixed
```

Retrieve Rental Status

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$rental_code = 'rental_code_example'; // string | The retrieved rental code from the `Order rental` endpoint.

try {
    $result = $apiInstance->rentalRetrieveStatus($rental_code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalRetrieveStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **rental_code** | **string**| The retrieved rental code from the &#x60;Order rental&#x60; endpoint. | |

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

## `rentalServicePrice()`

```php
rentalServicePrice($id, $service_id): mixed
```

Retrieve rental service price

Some rentals are bound to a single service. This returns the price of a rental for that service, with the custom pricing on your account applied.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The rental ID retrieved from `Retrieve Rental IDs`
$service_id = 56; // int | The service ID retrieved from `Retrieve Rental Services`

try {
    $result = $apiInstance->rentalServicePrice($id, $service_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalServicePrice: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The rental ID retrieved from &#x60;Retrieve Rental IDs&#x60; | |
| **service_id** | **int**| The service ID retrieved from &#x60;Retrieve Rental Services&#x60; | |

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

## `rentalStock()`

```php
rentalStock($id, $days, $service_id): mixed
```

Retrieve Rental Stock

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\RentalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 56; // int | The rental ID retrieved from `Retrieve Rental IDs`
$days = 56; // int
$service_id = 56; // int

try {
    $result = $apiInstance->rentalStock($id, $days, $service_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RentalApi->rentalStock: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The rental ID retrieved from &#x60;Retrieve Rental IDs&#x60; | |
| **days** | **int**|  | |
| **service_id** | **int**|  | [optional] |

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
