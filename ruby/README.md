# IP Blacklist Lookup API - Ruby Gem

IP Blacklist Lookup is an IP blacklist check API that tells you whether a given IP address appears on known malicious IP blocklists. Identifies both inbound threats (attackers, spammers) and outbound threats (C2 servers, malware hosts).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_ipblacklistlookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_ipblacklistlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_ipblacklistlookup'

# Initialize the client
client = APIVerve::Ipblacklistlookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ ip: "185.220.101.1" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ ip: "185.220.101.1" })
  puts response["data"]
rescue APIVerve::Ipblacklistlookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Ipblacklistlookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Ipblacklistlookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "ipAddress": "185.220.101.1",
    "isIPBlacklisted": true,
    "inbound": {
      "found": true,
      "description": "IP is known for malicious inbound activity (spam, scanning, brute-force attacks)"
    },
    "outbound": null,
    "threatLevel": "high",
    "isTor": true,
    "ipDetails": {
      "ip": "185.220.101.1",
      "country": "DE",
      "region": "BY",
      "timezone": "Europe/Berlin",
      "city": "Nuremberg",
      "coordinates": [
        49.4478,
        11.0683
      ],
      "countryName": "Germany",
      "regionName": "Bavaria",
      "postalCode": "90403",
      "continent": "EU",
      "continentName": "Europe",
      "accuracyRadius": 20,
      "isEU": true
    },
    "asn": "AS60729",
    "asnName": "TORSERVERS-NET"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/ipblacklistlookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/ipblacklistlookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/ipblacklistlookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
