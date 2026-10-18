# SMSPool\CarrierApi



All URIs are relative to https://api.smspool.net, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**carrierPaidLookup()**](CarrierApi.md#carrierPaidLookup) | **POST** /carrier/paid_lookup | Lookup |


## `carrierPaidLookup()`

```php
carrierPaidLookup($phonenumber): mixed
```

Lookup

This API endpoint is used to perform a paid lookup for a phone number. The request is sent via an HTTP POST method to the following URL: `https://api.smspool.net/carrier/paid_lookup`  ``` json {   \"success\": true,   \"phonenumber\": \"\",   \"country\": \"\",   \"carrier\": \"\",   \"carrier_type\": \"\",   \"charge\": 0 }   ```  The `success` field indicates whether the lookup was successful or not. The `phonenumber` field represents the phone number for which the lookup was performed. The `country` field indicates the country associated with the phone number. The `carrier` field provides the name of the carrier associated with the phone number. The `carrier_type` field specifies the type of carrier. The `charge` field represents the cost charged for the lookup operation.  Please note that specific values for `phonenumber`, `country`, `carrier`, and `carrier_type` were not provided in the response, and the `charge` field had a value of 0.  To use this endpoint, send an HTTP POST request to the provided URL with the necessary parameters. The request should include the phone number for which you want to perform the lookup. The response will contain the details of the carrier and associated information.  Make sure to handle any errors that may occur during the lookup process and check the `success` field in the response to determine the outcome of the operation.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: bearerAuth
$config = SMSPool\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SMSPool\Api\CarrierApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$phonenumber = 56; // int

try {
    $result = $apiInstance->carrierPaidLookup($phonenumber);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarrierApi->carrierPaidLookup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **phonenumber** | **int**|  | |

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
