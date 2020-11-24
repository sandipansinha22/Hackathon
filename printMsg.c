#include "stm32f4xx.h"
#include <string.h>
void printMsg1(const int a)
{
	 char Msg[100];
	 char *ptr;
	sprintf(Msg,"\n Coordinates around Earth");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", a);
	 ptr = Msg ;
   }

	 void printMsg2(const int a)
{
	 char Msg[100];
	 char *ptr;
	sprintf(Msg,"\n Coordinates around Moon");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", a);
	 ptr = Msg ;
   }

void printMsg3(const int a)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg,"\n Logic Function: NOT");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", a);
	 ptr = Msg ;
   }	

void printMsg4(const int a)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg,"\n Logic Function: NAND");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", a);
	 ptr = Msg ;
   }	 

void printMsg5(const int a)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg,"\n Logic Function: NOR");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", a);
	 ptr = Msg ;
   }	 
void printMsg6(const int a)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg,"\n Logic Function: XOR");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", a);
	 ptr = Msg ;
   }	
void printMsg7(const int a)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg,"\n Logic Function: XNOR");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", a);
	 ptr = Msg ;
   }	

void printMsg2p(const int a, const int b)
{
	 char Msg[100];
	 char *ptr;
	 sprintf(Msg, "%x", a);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", b);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
}

void printMsg4p(const int a, const int b, const int c, const int d)
{
	 char Msg[100];
	 char *ptr;
	 // Printing the X coordinate
	sprintf(Msg,"\n X:");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", a);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 // Printing the Y coordinate
	 sprintf(Msg,"\t Y:");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", b);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 // Printing the radius
	 sprintf(Msg,"\t RADIUS:");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", c);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 // Printing the theta
	 sprintf(Msg,"\t Theta:");
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 sprintf(Msg, "%x", d);
	 ptr = Msg ;
   while(*ptr != '\0')
	 {
      ITM_SendChar(*ptr);
      ++ptr;
	 }
	
}
