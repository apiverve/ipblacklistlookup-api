declare module '@apiverve/ipblacklistlookup' {
  export interface ipblacklistlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface ipblacklistlookupResponse {
    status: string;
    error: string | null;
    data: IPBlacklistLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface IPBlacklistLookupData {
      ipAddress:       null | string;
      isIPBlacklisted: boolean | null;
      inbound:         Inbound;
      outbound:        null;
      threatLevel:     null | string;
      ipDetails:       IPDetails;
  }
  
  interface Inbound {
      found:       boolean | null;
      description: null | string;
  }
  
  interface IPDetails {
      ip:             null | string;
      country:        null | string;
      region:         null | string;
      timezone:       null | string;
      city:           null | string;
      coordinates:    (number | null)[];
      countryName:    null | string;
      regionName:     null | string;
      postalCode:     null | string;
      continent:      null | string;
      continentName:  null | string;
      accuracyRadius: number | null;
  }

  export default class ipblacklistlookupWrapper {
    constructor(options: ipblacklistlookupOptions);

    execute(callback: (error: any, data: ipblacklistlookupResponse | null) => void): Promise<ipblacklistlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: ipblacklistlookupResponse | null) => void): Promise<ipblacklistlookupResponse>;
    execute(query?: Record<string, any>): Promise<ipblacklistlookupResponse>;
  }
}
