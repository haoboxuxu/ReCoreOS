; naskfunc
; TAB=4

;[FORMAT "WCOFF"]				; 创建目标文件的模式; 删除此行，NASM报错
;[INSTRSET "i486p"]				; 删除此行，NASM报错
[BITS 32]						; 制作32位模式机器语言
;[FILE "naskfunc.nas"]			; 源文件名 ; 删除此行，NASM报错

		GLOBAL	io_hlt,write_mem8; 程序中包含的函数字名

[SECTION .text]		; 目标文件中写了这些之后再写程序

;_io_hlt:	; void io_hlt(void);
io_hlt:	; void io_hlt(void);	; NASM错误，修复
		HLT
		RET

;_write_mem8:	; void write_mem8(int addr, int data);
write_mem8:	; void write_mem8(int addr, int data);	; NASM报错修正
		MOV		ECX,[ESP+4]		; [ESP + 4]中存放的是地址，将其读入ECX
		MOV		AL,[ESP+8]		; [ESP + 8]中存放的是数据，将其读入AL
		MOV		[ECX],AL
		RET