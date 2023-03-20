## 簡介 brief
這是根據川合秀實寫的《30天自製操作系統》書來自製一個操作系統(OS)

這裏主要用來存一下我在這30天内所寫的的code 

主要的問題和感受我會上傳到我的 [telegram channel](https://t.me/+8UnRXd-dyDsxOGZl) 裏面也有需要的環境工具和地址

可以來到 telegram 關注我的 channel 也可以透過它來和我交流

## 日曆 Calendar

### #day one

~~error_1: 在 run helloos.img 時 出現未知錯誤 無法按照書本步驟正常運行~~

~~解決方法：install QEMU => 使用 qemu-system-x86_64.exe 直接運行 helloos.img~~

<img src="Day_one\error_1.jpg" alt="Day_1_error_1_image" style="zoom:50%;" />

這裏出現了一點很搞笑的情況

在未安裝 QEUM 時，輸入 run => enter 會出現未知命令的問題

當我安裝完 QEUM 后按照書本的步驟再次運行 卻出現了 error_1 這個問題

於是我選擇重啓

但重啓后發現還是一樣的情況

於是我在摸索后選擇采用一點暴力的辦法 就像我上面的選擇方法 直接將 helloos.img 拖入到 qemu-system-

x86_64.exe 結果 Hello World 運行成功

原本以爲這就算解決了 結果當我在 part two 再次運行 helloos.img 時 發現輸入 run 就能夠直接運行成功

於是我便回去到 helloos0 嘗試直接 run 運行 helloos.img 發現也能成功運行了 

So... just be it 

### #day two

**error_1**: 在運行 make -r ipl.bin 時 出現了 “ *** missing separator.  Stop. ” 的錯誤提示

根據 Makefile 裏的報錯提示 可以知道是在第四行出現了問題 但由於之前沒有使用過 Makefile 並不知道是什麽問題 所以我把錯誤内容 Google 了一下 馬上發現了問題所在

原來 Makefile 的命令行開頭 必須使用 TAB鍵 進行開頭 這裏使用 空格 是沒有用的

在正確更改 Makefile 文件後  就可以正常運行了

<img src="Day_two\error_1.jpg" alt="Day_2_error_1_image" style="zoom:75%;" />

**error_2**: 玄學bug 

一開始一直出錯 無法運行 以爲是 TAB 和空格的問題 一直調試發現怎麽都調試不好

一怒之下全刪了重新敲一遍 結果又能跑了 

~~玄學 Windows 是不是你~~

<img src="Day_two\error_2.jpg" alt="error_2" style="zoom:67%;" />