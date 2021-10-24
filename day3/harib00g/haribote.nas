; haribote-os
; TAB=4

		ORG		0xc200			; 这个程序在哪里加载

		MOV		AL,0x13			; VGA 图形，320x200x8 位彩色
		MOV		AH,0x00
		INT		0x10
fin:
		HLT
		JMP		fin
