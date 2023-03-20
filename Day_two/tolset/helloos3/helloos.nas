; hello-os
; TAB=4

		ORG		0x7c00			;指明程序的轉載地址，在開始執行的時候，把這些機器語言指令轉載到内存中的哪個地址

; 以下的記述用於標準的FAT12格式的軟盤

		JMP		entry           ；JMP 跳轉指令 entry 用於指定跳轉目的地
		DB		0x90
		DB		"HELLOIPL"		; 
		DW		512				; 
		DB		1				; 
		DW		1				; 
		DB		2				; 
		DW		224				; 
		DW		2880			; 
		DB		0xf0			; 
		DW		9				; 
		DW		18				; 
		DW		2				; 
		DD		0				; 
		DD		2880			; 
		DB		0,0,0x29		; 
		DD		0xffffffff		; 
		DB		"HELLO-OS   "	; 
		DB		"FAT12   "		; 
		RESB	18				; 

; 程序核心(第一天所編寫)

entry:
		MOV		AX,0			; 初始化寄存器 
		MOV		SS,AX
		MOV		SP,0x7c00
		MOV		DS,AX
		MOV		ES,AX

		MOV		SI,msg
putloop:
		MOV		AL,[SI]         ;[]代表内存
		ADD		SI,1			; 給SI加1
		CMP		AL,0
		JE		fin
		MOV		AH,0x0e			; 顯示一個文字
		MOV		BX,15			; 指定字符顔色
		INT		0x10			; 調用顯卡BIOS
		JMP		putloop
fin:
		HLT						; 讓CPU停止，等待指令
		JMP		fin				; 無限循環

msg:
		DB		0x0a, 0x0a		; 執行兩次
		DB		"hello, world"
		DB		0x0a			; 換行
		DB		0

		RESB	0x7dfe-$		; 

		DB		0x55, 0xaa

; 

		DB		0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
		RESB	4600
		DB		0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
		RESB	1469432
