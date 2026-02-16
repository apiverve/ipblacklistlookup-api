/// Response models for the IP Blacklist Lookup API.

/// API Response wrapper.
class IpblacklistlookupResponse {
  final String status;
  final dynamic error;
  final IpblacklistlookupData? data;

  IpblacklistlookupResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory IpblacklistlookupResponse.fromJson(Map<String, dynamic> json) => IpblacklistlookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? IpblacklistlookupData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the IP Blacklist Lookup API.

class IpblacklistlookupData {
  String? ipAddress;
  bool? isIPBlacklisted;
  IpblacklistlookupDataIpdetails? ipDetails;
  bool? parsed;

  IpblacklistlookupData({
    this.ipAddress,
    this.isIPBlacklisted,
    this.ipDetails,
    this.parsed,
  });

  factory IpblacklistlookupData.fromJson(Map<String, dynamic> json) => IpblacklistlookupData(
      ipAddress: json['ipAddress'],
      isIPBlacklisted: json['isIPBlacklisted'],
      ipDetails: json['ipDetails'] != null ? IpblacklistlookupDataIpdetails.fromJson(json['ipDetails']) : null,
      parsed: json['parsed'],
    );
}

class IpblacklistlookupDataIpdetails {
  List<int>? range;
  String? country;
  String? region;
  String? timezone;

  IpblacklistlookupDataIpdetails({
    this.range,
    this.country,
    this.region,
    this.timezone,
  });

  factory IpblacklistlookupDataIpdetails.fromJson(Map<String, dynamic> json) => IpblacklistlookupDataIpdetails(
      range: (json['range'] as List?)?.cast<int>(),
      country: json['country'],
      region: json['region'],
      timezone: json['timezone'],
    );
}

class IpblacklistlookupRequest {
  String ip;

  IpblacklistlookupRequest({
    required this.ip,
  });

  Map<String, dynamic> toJson() => {
      'ip': ip,
    };
}
