; naskfunc
; TAB=4

;[FORMAT "WCOFF"]				; 创建目标文件的模式; 删除此行，NASM报错
[BITS 32]						; 制作32位模式机器语言


; 制作目标文件的信息

;[FILE "naskfunc.nas"]			; 源文件名 ; 删除此行，NASM报错

		;GLOBAL	_io_hlt			; 程序中包含的函数字名
		GLOBAL	io_hlt			; NASM错误，修复


; 以下是实际的函数

[SECTION .text]		; 目标文件中写了这些之后再写程序

;_io_hlt:	; void io_hlt(void);
io_hlt:	; void io_hlt(void);	; NASM错误，修复
		HLT
		RET