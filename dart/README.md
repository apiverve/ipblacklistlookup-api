# IP Blacklist Lookup API - Dart/Flutter Client

IP Blacklist Lookup is an IP blacklist check API that tells you whether a given IP address appears on known malicious IP blocklists. Identifies both inbound threats (attackers, spammers) and outbound threats (C2 servers, malware hosts).

[![pub package](https://img.shields.io/pub/v/apiverve_ipblacklistlookup.svg)](https://pub.dev/packages/apiverve_ipblacklistlookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [IP Blacklist Lookup API](https://apiverve.com/marketplace/ipblacklistlookup?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_ipblacklistlookup: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_ipblacklistlookup/apiverve_ipblacklistlookup.dart';

void main() async {
  final client = IpblacklistlookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'ip': '185.220.101.1'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [IP Blacklist Lookup API](https://apiverve.com/marketplace/ipblacklistlookup?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/ipblacklistlookup](https://docs.apiverve.com/ref/ipblacklistlookup?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
