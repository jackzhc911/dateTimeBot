# dateTimeBot
Scripts to change time in Cisco by plink and putty.

This is a very stupid method to change date and time by plink and putty.

Why? I have my reason..........

這是一個蠻笨的機制，明明有NTP，為什麼還要寫script去修改網路設備的時間？

總之，我有我的理由…

NTP當然是最終解，但當NTP失靈，且沒有人可以幫忙，廠商擺爛時，它就可以派得上用場！

使用方法：
1. 把plink、putty跟這些Script放在同一個資料夾。
2. fastChangeClockIps.txt 檔案內放入要讓 1.fastChangeClockMain.bat 讀取的網路設備IP。
3. 執行 1.fastChangeClockMain.bat，再執行 2.autoPutty.vbs。
