/// Response models for the IP Blacklist Lookup API.

/// API Response wrapper.
class IpblacklistlookupResponse {
  final String status;
  final dynamic error;
  final IpblacklistlookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  IpblacklistlookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory IpblacklistlookupResponse.fromJson(Map<String, dynamic> json) => IpblacklistlookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? IpblacklistlookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the IP Blacklist Lookup API.

class IpblacklistlookupData {
  String? ipAddress;
  bool? isIPBlacklisted;
  bool? isPublic;
  IpblacklistlookupDataInbound? inbound;
  IpblacklistlookupDataOutbound? outbound;
  String? threatLevel;
  bool? isTor;
  IpblacklistlookupDataIpdetails? ipDetails;
  String? asn;
  String? asnName;
  dynamic hostingProvider;
  num? listedInSubnet;
  bool? isRiskySubnet;
  bool? isVpn;
  bool? isDatacenter;
  bool? isRelay;
  List<IpblacklistlookupDataBlocklistsItem>? blocklists;
  num? blocklistsListed;

  IpblacklistlookupData({
    this.ipAddress,
    this.isIPBlacklisted,
    this.isPublic,
    this.inbound,
    this.outbound,
    this.threatLevel,
    this.isTor,
    this.ipDetails,
    this.asn,
    this.asnName,
    this.hostingProvider,
    this.listedInSubnet,
    this.isRiskySubnet,
    this.isVpn,
    this.isDatacenter,
    this.isRelay,
    this.blocklists,
    this.blocklistsListed,
  });

  factory IpblacklistlookupData.fromJson(Map<String, dynamic> json) => IpblacklistlookupData(
      ipAddress: json['ipAddress'],
      isIPBlacklisted: json['isIPBlacklisted'],
      isPublic: json['isPublic'],
      inbound: json['inbound'] != null ? IpblacklistlookupDataInbound.fromJson(json['inbound']) : null,
      outbound: json['outbound'] != null ? IpblacklistlookupDataOutbound.fromJson(json['outbound']) : null,
      threatLevel: json['threatLevel'],
      isTor: json['isTor'],
      ipDetails: json['ipDetails'] != null ? IpblacklistlookupDataIpdetails.fromJson(json['ipDetails']) : null,
      asn: json['asn'],
      asnName: json['asnName'],
      hostingProvider: json['hostingProvider'],
      listedInSubnet: json['listedInSubnet'],
      isRiskySubnet: json['isRiskySubnet'],
      isVpn: json['isVpn'],
      isDatacenter: json['isDatacenter'],
      isRelay: json['isRelay'],
      blocklists: (json['blocklists'] as List?)?.map((e) => IpblacklistlookupDataBlocklistsItem.fromJson(e)).toList(),
      blocklistsListed: json['blocklistsListed'],
    );
}

class IpblacklistlookupDataInbound {
  bool? found;
  String? description;

  IpblacklistlookupDataInbound({
    this.found,
    this.description,
  });

  factory IpblacklistlookupDataInbound.fromJson(Map<String, dynamic> json) => IpblacklistlookupDataInbound(
      found: json['found'],
      description: json['description'],
    );
}

class IpblacklistlookupDataOutbound {
  bool? found;
  String? description;

  IpblacklistlookupDataOutbound({
    this.found,
    this.description,
  });

  factory IpblacklistlookupDataOutbound.fromJson(Map<String, dynamic> json) => IpblacklistlookupDataOutbound(
      found: json['found'],
      description: json['description'],
    );
}

class IpblacklistlookupDataIpdetails {
  String? ip;
  String? country;
  String? region;
  String? timezone;
  String? city;
  List<num>? coordinates;
  String? countryName;
  String? regionName;
  String? postalCode;
  String? continent;
  String? continentName;
  num? accuracyRadius;
  bool? isEU;

  IpblacklistlookupDataIpdetails({
    this.ip,
    this.country,
    this.region,
    this.timezone,
    this.city,
    this.coordinates,
    this.countryName,
    this.regionName,
    this.postalCode,
    this.continent,
    this.continentName,
    this.accuracyRadius,
    this.isEU,
  });

  factory IpblacklistlookupDataIpdetails.fromJson(Map<String, dynamic> json) => IpblacklistlookupDataIpdetails(
      ip: json['ip'],
      country: json['country'],
      region: json['region'],
      timezone: json['timezone'],
      city: json['city'],
      coordinates: (json['coordinates'] as List?)?.cast<num>(),
      countryName: json['countryName'],
      regionName: json['regionName'],
      postalCode: json['postalCode'],
      continent: json['continent'],
      continentName: json['continentName'],
      accuracyRadius: json['accuracyRadius'],
      isEU: json['isEU'],
    );
}

class IpblacklistlookupDataBlocklistsItem {
  String? name;
  String? zone;
  bool? listed;

  IpblacklistlookupDataBlocklistsItem({
    this.name,
    this.zone,
    this.listed,
  });

  factory IpblacklistlookupDataBlocklistsItem.fromJson(Map<String, dynamic> json) => IpblacklistlookupDataBlocklistsItem(
      name: json['name'],
      zone: json['zone'],
      listed: json['listed'],
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
