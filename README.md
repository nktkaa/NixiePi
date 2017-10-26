# NixiePi
RPi daemon for Nixie decoder control. Works with Ruby >= 1.9.* and PiPiper gem.<br/>
## Decoder and GPIO matching table
 A | A8 | A4 | A2 | A1 
-- | -- | -- | -- | --
pin №| 4 | 7 | 6 | 3
H1 | 23 | 24 | 25 | 18
H2 | 21 | 20 | 16 | 12
M1 | 26 | 19 | 13 | 6
M2 | 17 | 27 | 22 | 5

* _for GPIO numbering using BCM_

* _H1..M2 - hour/minute first and second tube decoder_

* _"pin №" row only for K155ID1 decoder and its analogues(img below)_

![K155ID1](http://www.chipinfo.ru/dsheets/ic/155/img/id1.gif)
## Result!
![NixiePi](https://lh3.googleusercontent.com/YaQapNvZ5bRsVoDWl8slbZPNJdtjhfJRDyiuXatSHYys1L6y4NpWV473C3e8q6nD4vFhMn1n5r6_YBXtrNUXz3juhiQKsoYAuLVshX3BgJKW64tIfCy6FYB6UJJBk-wrKTn6SeyL5sFpYyLgFOaC1Ap_tWZKrsNKFEZLw1baIISPU9OCbZ8KzmPZkD2xUyEdFBARfjGSiDu2B7rLf47Q_09H2D-rvgWKPCy8UmK8tx-y9kkNiP78FWARp0y1Bx2QWaxT7Dh35n2TTfj04X7pJkJxkvsl-qBc8X28dxm52HmVdL11yvLLkNxh-YqH7XR5pgbRKdCSGFAH9pHSPp_4ZmNEu0ImlhEesH5UH7kxkgOJdcKwMDiiZxJo7V_ctLEDA5gHyKtxGDkVSo2wa6QMxN5Kxuf3xW00OBg9nlxre64cSURaZzUBHkei9v1aAabxOYFxHO7KFr2M7zQciG3SrM__w9vJIc2qfaC_svS73CaEMYNfSAR789O7Fj-nCheRs6LoygLVa_ReQAuZJKlkrkH8okg08XnyqRyxPxqPiW592WpYmkVaq7qOwGna0TSZkFEBfziy53QFHg4XTX7TmcFl8ke2ZaDbVWkHvP18i0eLK8DXRgzUUyX_5giPQUXTKsitglEU3cWflh9-YiVyLgwUABw9jNLvrVcG=w1312-h984-no)
