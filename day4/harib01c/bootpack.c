void io_hlt(void);

void HariMain(void) {
	char *p;
	for (int i = 0xa0000; i <= 0xaffff; i++) {
		//write_mem8(i, i & 0x0f); //MOV BYTE [i],15
		p = (char *)i;
		*p = i & 0x0f;
	}

	for (;;) {
		io_hlt();
	}
}
