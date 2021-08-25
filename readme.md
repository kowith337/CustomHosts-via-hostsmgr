# Just another custom hosts file
This aim to...
- Support to any apps and/or tools that can download one hosts file at a time! _(e.g. [NetGuard](https://github.com/M66B/NetGuard), [Lightning Browser](https://github.com/anthonycr/Lightning-Browser) v5.0.x and above)_
- Support Thai users who want to block unwanted connections, both from Thai sites and common sites. (e.g. Facebook, YouTube, Google, etc.)

I don't have or don't know any kind of automation, sorry if I didn't update this repo frequently enough.

All credits and license goes to upstream, both hosts file sources and binary that I'm using...

### Hosts File Generator
- [Henry++](https://github.com/henrypp)
  - [hostsmgr](https://github.com/henrypp/hostsmgr)

### Hosts File Sources
- [badmojr](https://github.com/badmojr)
  - [1Hosts](https://github.com/badmojr/1Hosts)
    - [Lite](https://github.com/badmojr/1Hosts/tree/master/Lite)
- [DurableNapkin](https://github.com/durablenapkin)
  - [Various blocklists](https://github.com/durablenapkin/block)
    - [Avast](https://github.com/durablenapkin/block/tree/master/avast.txt)
    - [Luminati (aka. Hola)](https://github.com/durablenapkin/block/tree/master/luminati.txt)
    - [CoViD-19 Cyber Threat Coalition](https://github.com/durablenapkin/block/tree/master/cyberthreat.txt)
      - Converted as hosts file format from https://www.cyberthreatcoalition.org
- [ookangzheng](https://github.com/ookangzheng)
  - [OISD Blocklist](https://github.com/ookangzheng/dbl-oisd-nl)
    - [Lite domains](https://github.com/ookangzheng/dbl-oisd-nl/tree/master/dbl_light.txt)
- [Soteria](https://github.com/soteria-nou)
  - [Domain List](https://github.com/soteria-nou/domain-list)
    - [Ads](https://github.com/soteria-nou/domain-list/tree/master/ads.txt)
    - [Affiliate](https://github.com/soteria-nou/domain-list/tree/master/affiliate.txt)
    - [Analytics](https://github.com/soteria-nou/domain-list/tree/master/analytics.txt)
- [StevenBlack](https://github.com/StevenBlack)
  - [Unified hosts file](https://gitlab.com/StevenBlack/hosts)
- [ZeroDot1](https://gitlab.com/ZeroDot1)
  - [CoinBlockerList](https://gitlab.com/ZeroDot1/CoinBlockerLists)
    - [Optional (Admin)](https://gitlab.com/ZeroDot1/CoinBlockerLists/tree/master/list_optional.txt)
- [kowith337](https://github.com/kowith337) _(Yes, it's me!)_
  - [ThaiAntiTokenSites](https://github.com/kowith337/ThaiAntiTokenSites)
  - [ThaiConsentHosts](https://github.com/kowith337/ThaiConsentHosts)
  - [Personal FilterList Collections](https://github.com/kowith337/PersonalFilterListCollection)
    - [Google `AdService` and `ID` tracking](https://github.com/kowith337/PersonalFilterListCollection/tree/master/hosts/hosts_google_adservice_id.txt)
    - [Thai Bad Bait List - Top Level Only](https://github.com/kowith337/PersonalFilterListCollection/tree/master/hosts/hosts_badbait_th.txt)
    - [Facebook Zero Hosts Block](https://github.com/kowith337/PersonalFilterListCollection/tree/master/hosts/hosts_facebook0.txt)
    - [Custom leftover hosts](https://github.com/kowith337/PersonalFilterListCollection/tree/master/hosts/hosts_leftover.txt)
      Sub part of this hosts file also contains some entry from...
        - http://utaukitune.ldblog.jp/archives/65725024.html
        - https://github.com/jmdugan/blocklists/tree/master/corporations/mozilla/all
    - Custom [blocked](https://github.com/kowith337/CustomHosts-via-hostsmgr/tree/unarranged/hosts_userlist.dat) and [allowed](https://github.com/kowith337/CustomHosts-via-hostsmgr/tree/unarranged/hosts_whitelist.dat) that also appear on this repository.

- - - - -

#### Copy Raw Location below!
- Make a text and then copy `https://raw.githubusercontent.com/kowith337/CustomHosts-via-hostsmgr/unarranged/hosts.txt`
- [Right Click or Tap and Hold](https://raw.githubusercontent.com/kowith337/CustomHosts-via-hostsmgr/unarranged/hosts.txt) to copy address or download
- See and scan [QR Code](https://duckduckgo.com/?q=qr+https%3A%2F%2Fraw.githubusercontent.com%2Fkowith337%2FCustomHosts-via-hostsmgr%2Funarranged%2Fhosts.txt) (via DuckDuckGo)

- - - - -
## Warning before use!
If you are...
- Rarely or never browsing some Thai websites.
- Use these feature in popular (by force) browser in Android :tm: system...
  - Use their data saving while use that browser.
  - Download suggested articles and read them offline.
  - Save and sync your credentials (aka. `passwords`) accross devices within that browser.
  - Allow it to retrieve suggest article and websites everytime before you're start browsing internet by your own.
- Integrate or login with your `Facebook` accounts into third party apps and/or games.
- Using `Facebook` (either **for free or not**) over mobile data that your carrier have the `Free Basics` service available.
- Want to allow YouTube to save your watched history, partially watched video that remember position before you leave, etc.
- Stuck at some site that still rely to connecting to proper ads and/or tracking servers before getting/reading/viewing/watching contents.
- Let the big brother suggest the word to searching something, while you're submitting keystroke to them! (Yes, every letters you've typed!!)
- Read the news and/or article directly from big brother's search engine results, with the lightweigh load from the big brother's engine called `AMP`!

Then this hosts file may not suitable for you, and I won't whitelist for unbreak unless the hosts aren't related to any ads and/or tracking services.

That's all!

> Please note that if you're still using `Google Chrome` and found out that it doesn't block anyting, maybe it's will be effective if you've config to disable these features below...
> - ~~[Asynchronous DNS resolver](https://github.com/ookangzheng/blahdns/tree/master/FAQ.md#prevent-dns-leaking-from-chrome-browser-on-android-phone) flags~~
> - Internal `Data Saver` that proxy everything and compress all resources that extended quota for some limited mobile data plan.
> - Secure DNS (aka. `DoH`), you should **turn off** completely, not let it left automatic.
> 
> As well if your phone are running Android 9+ or above, make sure you've disable **Private DNS** (aka. native DoT) in phone settings, too!

### Why turn off secure/private DNS?
- With default (automatic) settings, it's mostly connect to well-know big companies, e.g. `CloudFlare` `XFinity`, and also `Google` itself!
- Even you've changed to other DoT/DoH servers, it's mean you've lost protection since every DNS requests are passed to system DoT/DoH endpoint, not any protection apps or clients!

![madewith](https://img.shields.io/badge/Made%20with-Rants-crimson.svg?style=popout-square) ![from](https://img.shields.io/badge/From-Nonthaburi-0376ea.svg?style=popout-square)
