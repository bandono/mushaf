mushaf
======

Run `make-epub <data.csv> <font.ttf>` to generate a Quran epub (`mushaf.epub`).

1. Original code [Makefile](./Makefile) may have broken link to download CSV and font resources file from [KFGPC](https://qurancomplex.gov.sa/en/) 
2. So, workaround is to download e.g. [Unicode Uthmanic Font (Hafs Narration) for smart devices](https://download.qurancomplex.gov.sa/resources_dev/kfgqpc_hafs_smart_4.zip) and supply each `hafs_smart_v8.csv` and `HafsSmart_08.ttf` as arguments
3. [Adobe Digital Editions](https://en.wikipedia.org/wiki/Adobe_Digital_Editions) renders fine, but when opening with [Calibre](https://calibre-ebook.com/), it's not working right-to-left. So, this is fixed.

_Note:_ I used `gawk` instead on Mac