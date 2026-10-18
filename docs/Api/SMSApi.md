# SMSPool\SMSApi



All URIs are relative to https://api.smspool.net, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**purchaseSms()**](SMSApi.md#purchaseSms) | **POST** /purchase/sms | Order SMS |
| [**requestActive()**](SMSApi.md#requestActive) | **POST** /request/active | Active orders |
| [**requestArchive()**](SMSApi.md#requestArchive) | **POST** /request/archive | Archive all orders |
| [**requestAreacodes()**](SMSApi.md#requestAreacodes) | **POST** /request/areacodes | Request available areacodes |
| [**requestHistory()**](SMSApi.md#requestHistory) | **POST** /request/history | Order History |
| [**smsActivate()**](SMSApi.md#smsActivate) | **POST** /sms/activate | Activate SMS |
| [**smsAllStock()**](SMSApi.md#smsAllStock) | **POST** /sms/all_stock | One-time stock for all services |
| [**smsCancel()**](SMSApi.md#smsCancel) | **POST** /sms/cancel | Cancel SMS |
| [**smsCancelAll()**](SMSApi.md#smsCancelAll) | **POST** /sms/cancel_all | Cancel All SMS |
| [**smsCheck()**](SMSApi.md#smsCheck) | **POST** /sms/check | Check SMS |
| [**smsCheckResend()**](SMSApi.md#smsCheckResend) | **POST** /sms/check_resend | Check Resend |
| [**smsClearCache()**](SMSApi.md#smsClearCache) | **POST** /sms/clear_cache | Clear SMS Cache |
| [**smsMissed()**](SMSApi.md#smsMissed) | **POST** /sms/missed | Missed SMS |
| [**smsReactivate()**](SMSApi.md#smsReactivate) | **POST** /sms/reactivate | Reactivate SMS |
| [**smsResend()**](SMSApi.md#smsResend) | **POST** /sms/resend | Resend |
| [**smsStock()**](SMSApi.md#smsStock) | **POST** /sms/stock | One-time SMS stock |
| [**smsUnarchive()**](SMSApi.md#smsUnarchive) | **POST** /sms/unarchive | Unarchive order |


## `purchaseSms()`

```php
purchaseSms($service, $country, $pool, $max_price, $pricing_option, $quantity, $areacode, $exclude, $create_token, $activation_type, $carrier, $phonenumber, $software): mixed
```

Order SMS

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$service = 'service_example'; // string | The service or number retrieved from the `Service List` endpoint
$country = 'country_example'; // string | The country in ISO format or number retrieved from the `Country List` endpoint
$pool = 'pool_example'; // string | The pool or number retrieved from the `Pool List` endpoint (optional)
$max_price = 3.4; // float | The max price you are willing to pay per number
$pricing_option = 56; // int | Set to 0 if you'd like the cheapest numbers, set to 1 for highest success rate
$quantity = 56; // int | Quantity of numbers ordered
$areacode = 'areacode_example'; // string | Areacodes you would like to include or exclude in JSON format
$exclude = 56; // int | Set exclude to 1 if you would like to exclude all listed area codes.
$create_token = 56; // int | Optional param; set to 1 if you'd like to create a token link that anyone can access.
$activation_type = 'activation_type_example'; // string | Options: SMS, VOICE, FLASH. SMS will receive regular SMS, VOICE will receive phone calls that mentions the SMS and FLASH is for FLASH calls for verification.
$carrier = 56; // int | Options: 1 or 2. Pick a carrier (only works for pool Foxtrot US)
$phonenumber = 56; // int | In case you want to select a specific phone number to order
$software = 56; // int

try {
    $result = $apiInstance->purchaseSms($service, $country, $pool, $max_price, $pricing_option, $quantity, $areacode, $exclude, $create_token, $activation_type, $carrier, $phonenumber, $software);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->purchaseSms: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **service** | **string**| The service or number retrieved from the &#x60;Service List&#x60; endpoint | |
| **country** | **string**| The country in ISO format or number retrieved from the &#x60;Country List&#x60; endpoint | [optional] |
| **pool** | **string**| The pool or number retrieved from the &#x60;Pool List&#x60; endpoint (optional) | [optional] |
| **max_price** | **float**| The max price you are willing to pay per number | [optional] |
| **pricing_option** | **int**| Set to 0 if you&#39;d like the cheapest numbers, set to 1 for highest success rate | [optional] |
| **quantity** | **int**| Quantity of numbers ordered | [optional] |
| **areacode** | **string**| Areacodes you would like to include or exclude in JSON format | [optional] |
| **exclude** | **int**| Set exclude to 1 if you would like to exclude all listed area codes. | [optional] |
| **create_token** | **int**| Optional param; set to 1 if you&#39;d like to create a token link that anyone can access. | [optional] |
| **activation_type** | **string**| Options: SMS, VOICE, FLASH. SMS will receive regular SMS, VOICE will receive phone calls that mentions the SMS and FLASH is for FLASH calls for verification. | [optional] |
| **carrier** | **int**| Options: 1 or 2. Pick a carrier (only works for pool Foxtrot US) | [optional] |
| **phonenumber** | **int**| In case you want to select a specific phone number to order | [optional] |
| **software** | **int**|  | [optional] |

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

## `requestActive()`

```php
requestActive(): mixed
```

Active orders

The recommended endpoint to retrieve your current active orders, this will display all your orders at the same time. We recommend using this endpoint to iterate through your active orders to retrieve your SMS messages.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->requestActive();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->requestActive: ', $e->getMessage(), PHP_EOL;
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

## `requestArchive()`

```php
requestArchive(): mixed
```

Archive all orders

This API endpoint is used to archive a request in the SMS Pool system. The HTTP POST request should be sent to `https://api.smspool.net/request/archive`.  ### Request Parameters  The \\`key\\` parameter is required for this endpoint, this is your API key.  ### Response  The response for this API endpoint will have a status code of 200, indicating a successful request. The response body will be in JSON format and will contain the following properties:  - `success` (integer): A flag indicating the success of the request. A value of 0 indicates failure. - `message` (string): An optional message providing additional information about the request. In this case, the message is empty.       Please note that the response may contain additional properties not mentioned here, but they can be ignored for the purpose of this documentation.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->requestArchive();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->requestArchive: ', $e->getMessage(), PHP_EOL;
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

## `requestAreacodes()`

```php
requestAreacodes($service, $country, $pool): mixed
```

Request available areacodes

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$service = 'service_example'; // string | The service or number retrieved from the `Service List` endpoint
$country = 'country_example'; // string | The country in ISO format or number retrieved from the `Country List` endpoint
$pool = 'pool_example'; // string | The pool or number retrieved from the `Pool List` endpoint (optional)

try {
    $result = $apiInstance->requestAreacodes($service, $country, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->requestAreacodes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **service** | **string**| The service or number retrieved from the &#x60;Service List&#x60; endpoint | |
| **country** | **string**| The country in ISO format or number retrieved from the &#x60;Country List&#x60; endpoint | |
| **pool** | **string**| The pool or number retrieved from the &#x60;Pool List&#x60; endpoint (optional) | |

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

## `requestHistory()`

```php
requestHistory($start, $length, $search): mixed
```

Order History

This API endpoint is used to retrieve the history of SMS requests. It is an HTTP POST request that should be made to the following URL: `https://api.smspool.net/request/history`.  The request requires the \\`key\\` parameter which is your API key.  The response returned by the API is a JSON array. Each element in the array represents a historical SMS request and contains the following properties:  - `cost`: The cost of the SMS request. - `order_code`: The order code associated with the SMS request. - `phonenumber`: The phone number to which the SMS was sent. - `code`: The code associated with the SMS request. - `full_code`: The full code associated with the SMS request. - `short_name`: The short name associated with the SMS request. - `service`: The service associated with the SMS request. - `status`: The status of the SMS request. - `pool`: The pool associated with the SMS request. - `timestamp`: The timestamp of the SMS request. - `completed_on`: The completion date of the SMS request. - `expiry`: The expiry time of the SMS request. - `time_left`: The time left for the SMS request to expire.       Please note that the values for the properties are not provided in the response example, so they may be empty or null.  The last execution of this API request returned a response with a status code of 200, indicating a successful execution. The response body contained an array of SMS request history objects.  Please refer to the API documentation for more details on how to use this endpoint and interpret the response.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$start = 56; // int | Which row you'd like to start from
$length = 56; // int | Max length of all rows
$search = 'search_example'; // string | Search query for phone number, order_code, service or country

try {
    $result = $apiInstance->requestHistory($start, $length, $search);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->requestHistory: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start** | **int**| Which row you&#39;d like to start from | [optional] |
| **length** | **int**| Max length of all rows | [optional] |
| **search** | **string**| Search query for phone number, order_code, service or country | [optional] |

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

## `smsActivate()`

```php
smsActivate($orderid): mixed
```

Activate SMS

This endpoint will forcefully activate an SMS to set it available for future resends, please keep in mind that these orders are NOT eligible for a refund after activating them.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orderid = 'orderid_example'; // string

try {
    $result = $apiInstance->smsActivate($orderid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->smsActivate: ', $e->getMessage(), PHP_EOL;
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

## `smsAllStock()`

```php
smsAllStock($country, $service, $pool): mixed
```

One-time stock for all services

This API endpoint is used to retrieve one-time SMS stock in the SMSPool system. The HTTP POST request should be sent to `https://api.smspool.net/sms/stock`.  ### Request Parameters  The \\`key\\` parameter is required for this endpoint, this is your API key.  ### Response  The response for this API endpoint will have a status code of 200, indicating a successful request. The response body will be in JSON format and will contain the following properties:  - `success` (integer): A flag indicating the success of the request. A value of 0 indicates failure.      - `message` (string): An optional message providing additional information about the request. In this case, the message is empty.       Please note that the response may contain additional properties not mentioned here, but they can be ignored for the purpose of this documentation.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$country = 'country_example'; // string | Country retrieved from ''Country list\\\" endpoint (optional)
$service = 'service_example'; // string | Service retrieved from ''Service list\\\" endpoint (optional)
$pool = 'pool_example'; // string | Pool retrieved from ''Pool list\\\" endpoint (optional)

try {
    $result = $apiInstance->smsAllStock($country, $service, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->smsAllStock: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **country** | **string**| Country retrieved from &#39;&#39;Country list\\\&quot; endpoint (optional) | [optional] |
| **service** | **string**| Service retrieved from &#39;&#39;Service list\\\&quot; endpoint (optional) | [optional] |
| **pool** | **string**| Pool retrieved from &#39;&#39;Pool list\\\&quot; endpoint (optional) | [optional] |

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

## `smsCancel()`

```php
smsCancel($orderid, $orderids, $expiry, $ban): mixed
```

Cancel SMS

# Cancel your SMS order  ## Responses  | **Success** | {\"success\":1} | | **Fail** | {\"success\":0} |

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orderid = 'orderid_example'; // string
$orderids = 'orderids_example'; // string
$expiry = 56; // int
$ban = 56; // int

try {
    $result = $apiInstance->smsCancel($orderid, $orderids, $expiry, $ban);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->smsCancel: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orderid** | **string**|  | [optional] |
| **orderids** | **string**|  | [optional] |
| **expiry** | **int**|  | [optional] |
| **ban** | **int**|  | [optional] |

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

## `smsCancelAll()`

```php
smsCancelAll(): mixed
```

Cancel All SMS

# Cancel your SMS order  ## Responses  | **Success** | {\"success\":1} | | **Fail** | {\"success\":0} |

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->smsCancelAll();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->smsCancelAll: ', $e->getMessage(), PHP_EOL;
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

## `smsCheck()`

```php
smsCheck($orderid): mixed
```

Check SMS

You may run into ratelimits while using this endpoint for high rate requests, we recommend using /request/active instead as it will list all your orders at the same time.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orderid = 'orderid_example'; // string

try {
    $result = $apiInstance->smsCheck($orderid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->smsCheck: ', $e->getMessage(), PHP_EOL;
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

## `smsCheckResend()`

```php
smsCheckResend($orderid): mixed
```

Check Resend

Check if the order can be resent or not.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orderid = 'orderid_example'; // string

try {
    $result = $apiInstance->smsCheckResend($orderid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->smsCheckResend: ', $e->getMessage(), PHP_EOL;
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

## `smsClearCache()`

```php
smsClearCache(): mixed
```

Clear SMS Cache

# Clear your previous SMS cache to allocate previous numbers again  ## Responses  | **Success** | {\"success\":1} |   | **Fail** | {\"success\":0} |

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->smsClearCache();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->smsClearCache: ', $e->getMessage(), PHP_EOL;
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

## `smsMissed()`

```php
smsMissed($phonenumber, $limit): mixed
```

Missed SMS

Some messages arrive on a number from your one-time orders but cannot finish the order, such as Ticketmaster and Seated codes or Hark reward payouts. This returns those messages, the same ones the Missed SMS tool on the website shows. Only numbers from pool Foxtrot are covered.  The newest messages come first. `url`, `code` and `email` hold the first link, code and email address found in the message, or an empty string.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$phonenumber = 56; // int | Only return messages for this number, including the country code. Leave it out for all your numbers.
$limit = 56; // int | Maximum number of messages. Defaults to 100, at most 500.

try {
    $result = $apiInstance->smsMissed($phonenumber, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->smsMissed: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **phonenumber** | **int**| Only return messages for this number, including the country code. Leave it out for all your numbers. | [optional] |
| **limit** | **int**| Maximum number of messages. Defaults to 100, at most 500. | [optional] |

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

## `smsReactivate()`

```php
smsReactivate($orderid): mixed
```

Reactivate SMS

This endpoint will reactivate an order, please keep in mind that these orders are NOT eligible for a refund after activating them.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orderid = 'orderid_example'; // string

try {
    $result = $apiInstance->smsReactivate($orderid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->smsReactivate: ', $e->getMessage(), PHP_EOL;
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

## `smsResend()`

```php
smsResend($orderid): mixed
```

Resend

# Resend  Resend the order. Keep in mind that some pools will have a charge per resend. You can see whether the resend will have a charge using the \"Check Resend\" endpoint  ## Responses  | **Success** | {\"success\":1,\"message\":\"Number has been requested again\",\"resend\":0} |   | **Fail** | {\"success\":0,\"message\":\"Phonenumber could not be requested again, try later again.\",\"resend\":0} |

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orderid = 'orderid_example'; // string

try {
    $result = $apiInstance->smsResend($orderid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->smsResend: ', $e->getMessage(), PHP_EOL;
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

## `smsStock()`

```php
smsStock($country, $service, $pool, $include_price): mixed
```

One-time SMS stock

This API endpoint is used to retrieve one-time SMS stock in the SMSPool system. The HTTP POST request should be sent to `https://api.smspool.net/sms/stock`.  ### Request Parameters  The \\`key\\` parameter is required for this endpoint, this is your API key.  ### Response  The response for this API endpoint will have a status code of 200, indicating a successful request. The response body will be in JSON format and will contain the following properties:  - `success` (integer): A flag indicating the success of the request. A value of 0 indicates failure.      - `message` (string): An optional message providing additional information about the request. In this case, the message is empty.       Please note that the response may contain additional properties not mentioned here, but they can be ignored for the purpose of this documentation.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$country = 'country_example'; // string | Country retrieved from ''Country list\\\" endpoint
$service = 'service_example'; // string | Service retrieved from ''Service list\\\" endpoint
$pool = 'pool_example'; // string | Pool retrieved from ''Pool list\\\" endpoint
$include_price = 56; // int

try {
    $result = $apiInstance->smsStock($country, $service, $pool, $include_price);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->smsStock: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **country** | **string**| Country retrieved from &#39;&#39;Country list\\\&quot; endpoint | |
| **service** | **string**| Service retrieved from &#39;&#39;Service list\\\&quot; endpoint | |
| **pool** | **string**| Pool retrieved from &#39;&#39;Pool list\\\&quot; endpoint | [optional] |
| **include_price** | **int**|  | [optional] |

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

## `smsUnarchive()`

```php
smsUnarchive($orderid): mixed
```

Unarchive order

Move an archived order back to your active orders, so it shows up in **Active orders** and on your dashboard again. Use **Archive all orders** to archive them.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\SMSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orderid = 'orderid_example'; // string | The order ID retrieved from /purchase/sms

try {
    $result = $apiInstance->smsUnarchive($orderid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SMSApi->smsUnarchive: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orderid** | **string**| The order ID retrieved from /purchase/sms | |

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
