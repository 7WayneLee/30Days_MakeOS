; hello-os
; TAB=4

		ORG		0x7c00			;ָ��������D�d��ַ�����_ʼ���еĕr�򣬰��@Щ�C���Z��ָ���D�d���ڴ��е��Ă���ַ

; ���µ�ӛ����춘˜ʵ�FAT12��ʽ��ܛ�P

		JMP		entry           ��JMP ���Dָ�� entry ���ָ�����DĿ�ĵ�
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

; �������(��һ��������)

entry:
		MOV		AX,0			; ��ʼ���Ĵ��� 
		MOV		SS,AX
		MOV		SP,0x7c00
		MOV		DS,AX
		MOV		ES,AX

		MOV		SI,msg
putloop:
		MOV		AL,[SI]         ;[]�����ڴ�
		ADD		SI,1			; �oSI��1
		CMP		AL,0
		JE		fin
		MOV		AH,0x0e			; �@ʾһ������
		MOV		BX,15			; ָ���ַ��ɫ
		INT		0x10			; �{���@��BIOS
		JMP		putloop
fin:
		HLT						; ׌CPUֹͣ���ȴ�ָ��
		JMP		fin				; �o��ѭ�h

msg:
		DB		0x0a, 0x0a		; ���Ѓɴ�
		DB		"hello, world"
		DB		0x0a			; �Q��
		DB		0

		RESB	0x7dfe-$		; 

		DB		0x55, 0xaa

; 

		DB		0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
		RESB	4600
		DB		0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
		RESB	1469432
