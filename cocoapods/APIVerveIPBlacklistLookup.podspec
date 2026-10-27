Pod::Spec.new do |s|
  s.name             = 'APIVerveIPBlacklistLookup'
  s.version          = '1.2.3'
  s.summary          = 'IP Blacklist Lookup is an IP blacklist check API that tells you whether a given IP address appears on known malicious IP blocklists.'
  s.description      = <<-'DESC'
IP Blacklist Lookup is an IP blacklist check API that tells you whether a given IP address appears on known malicious IP blocklists. Identifies both inbound threats (attackers, spammers) and outbound threats (C2 servers, malware hosts).

This iOS/macOS SDK provides a convenient way to access the IP Blacklist Lookup from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/ipblacklistlookup?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/ipblacklistlookup-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveIPBlacklistLookup/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
