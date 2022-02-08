#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

#include <irq.h>
#include <uart.h>
#include <console.h>
#include <generated/csr.h>


#include "delay.h"
#include "display.h"

static char *readstr(void)
{
	char c[2];
	static char s[64];
	static int ptr = 0;

	if(readchar_nonblock()) {
		c[0] = readchar();
		c[1] = 0;
		switch(c[0]) {
			case 0x7f:
			case 0x08:
				if(ptr > 0) {
					ptr--;
					putsnonl("\x08 \x08");
				}
				break;
			case 0x07:
				break;
			case '\r':
			case '\n':
				s[ptr] = 0x00;
				putsnonl("\n");
				ptr = 0;
				return s;
			default:
				if(ptr >= (sizeof(s) - 1))
					break;
				putsnonl(c);
				s[ptr] = c[0];
				ptr++;
				break;
		}
	}
	return NULL;
}

static char *get_token(char **str)
{
	char *c, *d;

	c = (char *)strchr(*str, ' ');
	if(c == NULL) {
		d = *str;
		*str = *str+strlen(*str);
		return d;
	}
	*c = 0;
	d = *str;
	*str = c+1;
	return d;
}

static void cam(void){
	
	
}

static void prompt(void)
{
	printf("RUNTIME>");
}


static void help(void)
{
	puts("Available commands:");
	puts("help                            - this command");
	puts("reboot                          - reboot CPU");
	puts("camara                          - camara test");
	puts("us				- ultraSound test");
	puts("PWM				- PWM test");
	puts("IR				- IR test");
	puts("w				- wheels test");
	puts("dir				- dir test");
    puts("hum				- STH31 test");
}

static void reboot(void)
{
	ctrl_reset_write(1);
}

static void console_service(void)
{
	char *str;
	char *token;

	str = readstr();
	if(str == NULL) return;
	token = get_token(&str);
	if(strcmp(token, "help") == 0)
		help();
	else if(strcmp(token, "reboot") == 0)
		reboot();
	else if(strcmp(token, "camara") == 0)
		camara_test();
		
	prompt();
}

int main(void)
{
	irq_setmask(0);
	irq_setie(1);

	//camara_init();

	//direction();
	
	puts("\nSoC - RiscV project UNAL 2021-1 -- CPU testing software  interrupt "__DATE__" "__TIME__"\n");
	help();
	prompt();
	
	while(1) {
		console_service();
	}

	return 0;
}