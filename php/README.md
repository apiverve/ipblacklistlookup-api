# IP Blacklist Lookup API - PHP Package

IP Blacklist Lookup is an IP blacklist check API that tells you whether a given IP address appears on known malicious IP blocklists. Identifies both inbound threats (attackers, spammers) and outbound threats (C2 servers, malware hosts).

## Installation

Install via Composer:

```bash
composer require apiverve/ipblacklistlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Ipblacklistlookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['ip' => '185.220.101.1']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Ipblacklistlookup\Client;
use APIVerve\Ipblacklistlookup\Exceptions\APIException;
use APIVerve\Ipblacklistlookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['ip' => '185.220.101.1']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "ipAddress": "185.220.101.1",
    "isIPBlacklisted": true,
    "isPublic": true,
    "inbound": {
      "found": true,
      "description": "IP is known for malicious inbound activity (spam, scanning, brute-force attacks)"
    },
    "outbound": {
      "found": true,
      "description": "IP is a known malicious destination (C2 server, malware host, phishing)"
    },
    "threatLevel": "critical",
    "isTor": true,
    "ipDetails": {
      "ip": "185.220.101.1",
      "country": "DE",
      "region": "BB",
      "timezone": "Europe/Berlin",
      "city": "Brandenburg an der Havel",
      "coordinates": [
        52.6171,
        13.1207
      ],
      "countryName": "Germany",
      "regionName": "Brandenburg",
      "postalCode": "14621",
      "continent": "EU",
      "continentName": "Europe",
      "accuracyRadius": 20,
      "isEU": true
    },
    "asn": "AS60729",
    "asnName": "TORSERVERS-NET",
    "hostingProvider": null,
    "listedInSubnet": 255,
    "isRiskySubnet": true,
    "isVpn": true,
    "isDatacenter": true,
    "isRelay": false,
    "blocklists": [
      {
        "name": "DroneBL",
        "zone": "dnsbl.dronebl.org",
        "listed": false
      },
      {
        "name": "UCEPROTECT Level 1",
        "zone": "dnsbl-1.uceprotect.net",
        "listed": false
      },
      {
        "name": "0spam",
        "zone": "bl.0spam.org",
        "listed": false
      },
      {
        "name": "PSBL",
        "zone": "psbl.surriel.com",
        "listed": false
      }
    ],
    "blocklistsListed": 0
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/ipblacklistlookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/ipblacklistlookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/ipblacklistlookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
