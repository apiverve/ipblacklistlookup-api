# IP Blacklist Lookup API - Dart/Flutter Client

IP Blacklist Lookup checks whether a given IP address appears on known malicious IP blocklists. Identifies both inbound threats (attackers, spammers) and outbound threats (C2 servers, malware hosts).

[![pub package](https://img.shields.io/pub/v/apiverve_ipblacklistlookup.svg)](https://pub.dev/packages/apiverve_ipblacklistlookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [IP Blacklist Lookup API](https://apiverve.com/marketplace/ipblacklistlookup?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_ipblacklistlookup: ^1.1.14
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
    "ipAddress": "201.23.192.173",
    "isIPBlacklisted": true,
    "ipDetails": {
      "range": [
        3373776896,
        3373785087
      ],
      "country": "BR",
      "region": "",
      "timezone": "America/Sao_Paulo"
    },
    "parsed": true
  }
}
```

## API Reference

- **API Home:** [IP Blacklist Lookup API](https://apiverve.com/marketplace/ipblacklistlookup?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/ipblacklistlookup](https://docs.apiverve.com/ref/ipblacklistlookup?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
