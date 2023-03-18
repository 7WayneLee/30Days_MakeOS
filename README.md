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