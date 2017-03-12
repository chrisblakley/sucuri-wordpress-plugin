
<div class="sucuriscan-panel">
    <h3 class="sucuriscan-title">IP Address Discoverer</h3>

    <div class="inside">
        <p>

            The IP address discoverer will use DNS lookups to automatically
            detect if the website is behind <a href="https://sucuri.net/website-firewall/"
            target="_blank">CloudProxy</a> in which case will modify the global
            server variable <em>Remote-Addr</em> to set the real IP of the website's
            visitors. This check runs on every WordPress init action and that is
            why it may slow down your website as some hosting providers rely on
            slow DNS servers which makes the operation take more time than it
            should.

        </p>

        <div class="sucuriscan-inline-alert-warning">
            <p>
                <b>IMPORTANT:</b> This option <em>(if enabled)</em> may slow down your website.
            </p>
        </div>

        <div class="sucuriscan-hstatus sucuriscan-hstatus-2">
            <span>IP Address Discoverer is %%SUCURI.DnsLookupsStatus%%</span>

            <form action="%%SUCURI.URL.Settings%%" method="post">
                <input type="hidden" name="sucuriscan_page_nonce" value="%%SUCURI.PageNonce%%" />
                <input type="hidden" name="sucuriscan_dns_lookups" value="%%SUCURI.DnsLookupsSwitchValue%%" />
                <button type="submit" class="button button-primary">%%SUCURI.DnsLookupsSwitchText%%</button>
            </form>
        </div>

        <p>
            Once the feature is enabled you may choose the HTTP header that will be used by
            default to retrieve the real IP address of each HTTP request, generally you do
            not need to set this but in rare cases your hosting provider may have a load
            balancer that can interfere in the process, in which case you will have to
            explicitly specify the main HTTP header. Note that if you select a HTTP header
            that is not being set by the server the plugin will fallback to the default
            <em>Remote-Addr</em>.
        </p>

        <form action="%%SUCURI.URL.Settings%%" method="post">
            <input type="hidden" name="sucuriscan_page_nonce" value="%%SUCURI.PageNonce%%" />

            <fieldset class="sucuriscan-clearfix">
                <label>Main IP HTTP Header:</label>
                <select name="sucuriscan_addr_header">
                    %%%SUCURI.AddrHeaderOptions%%%
                </select>
                <button type="submit" class="button button-primary">Proceed</button>
            </fieldset>

            <div class="sucuriscan-hstatus sucuriscan-hstatus-2 sucuriscan-monospace">
                <div>CloudProxy is %%SUCURI.IsUsingCloudProxy%%</div>
                <div>Website URL: %%SUCURI.WebsiteURL%%</div>
                <div>Top Level Domain: %%SUCURI.TopLevelDomain%%</div>
                <div>Website Hostname: %%SUCURI.WebsiteHostName%%</div>
                <div>Website Host Address: %%SUCURI.WebsiteHostAddress%%</div>
                <div>IP Address: %%SUCURI.RemoteAddress%% (%%SUCURI.RemoteAddressHeader%%)</div>
            </div>
        </form>
    </div>
</div>
