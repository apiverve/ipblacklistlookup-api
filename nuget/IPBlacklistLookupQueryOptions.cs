using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.IPBlacklistLookup
{
    /// <summary>
    /// Query options for the IP Blacklist Lookup API
    /// </summary>
    public class IPBlacklistLookupQueryOptions
    {
        /// <summary>
        /// The IP address to check against blocklists
        /// </summary>
        [JsonProperty("ip")]
        public string Ip { get; set; }
    }
}
