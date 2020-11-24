     area     appcode, CODE, READONLY
     export __main
	IMPORT printMsg4p
		IMPORT printMsg1
		IMPORT printMsg2	
	 ENTRY
__main  function
       
EARTH  BL printMsg1
       VLDR.F32 s11,=1; // starting radius r =1
	   VLDR.F32 s1,=0; // tarting theta = 0 
	   VLDR.F32 s12,=0.1; // to increase radius(r) and theta(t) by 0.1
       VLDR.F32 s13,=6.2; // max theta = 6.2 (in radian)



CSE	   VLDR.F32 s2,=1; // n=1 :- used to increment the power of theta(t) for each term :- eg: t,t^2,t^3......
	   VLDR.F32 s3,=0; // counter = 0
	   VLDR.F32 s4,=1; // used for incrementing the counter by 1
	   VLDR.F32 s5,=1; // cossum = 1
	   VLDR.F32 s6,=0; // term = 0
	   VLDR.F32 s7,=0; // c1 = 0
	   VLDR.F32 s8,=1; // c2 = 1
	   VLDR.F32 s9,=0; // sinesum = 0
	   VLDR.F32 s10,=30; // maxterm = 30
	   

SINEO  VMOV.F32 s7,s8;    // c1 = c2
       VADD.F32 s3,s3,s4; // count = count + 1
	   VMUL.F32 s8,s3,s7; // c2 = count*c1 :- to find factorial 
       VMUL.F32 s2,s2,s1; // increment power of t :- n= t,t^3,t^5,etc
	   VDIV.F32 s6,s2,s8; // term = n/c2 = t/1!,t^3/3!,t^5/5!,etc
	   VADD.F32 s9,s9,s6; // sinesum = sinesum + term = 0 + t/1!
	   B COSE

COSE   VMOV.F32 s7,s8;    // c1 = c2
       VADD.F32 s3,s3,s4; // count = count + 1
	   VMUL.F32 s8,s3,s7; // c2 = count*c1 :- to find factorial 
       VMUL.F32 s2,s2,s1; // increment power of t :- n= t^2,t^4,t^6,etc
	   VDIV.F32 s6,s2,s8; // term = n/c2 = t^2/2!,t^4/4!,t^6/6!,etc
	   VSUB.F32 s5,s5,s6; // cossum = cossum + term = 1 - t^2/2!
	   B SINEE
	   
SINEE  VMOV.F32 s7,s8;    // c1 = c2
       VADD.F32 s3,s3,s4; // count = count + 1
	   VMUL.F32 s8,s3,s7; // c2 = count*c1 :- to find factorial 
       VMUL.F32 s2,s2,s1; // increment power of t :- n= t,t^3,t^5,etc
	   VDIV.F32 s6,s2,s8; // term = n/c2 = t^3/3!,t^5/5!,etc
	   VSUB.F32 s9,s9,s6; // sinesum = sinesum + term = 0 + t/1! - t^3/3!
	   B COSO
	   
COSO   VMOV.F32 s7,s8;    // c1 = c2
       VADD.F32 s3,s3,s4; // count = count + 1
	   VMUL.F32 s8,s3,s7; // c2 = count*c1 :- to find factorial 
       VMUL.F32 s2,s2,s1; // increment power of t :- n= t^2,t^4,t^6,etc
	   VDIV.F32 s6,s2,s8; // term = n/c2 = t^2/2!,t^4/4!,t^6/6!,etc
	   VADD.F32 s5,s5,s6; // cossum = cossum + term = 1 - t^2/2! + t^4/4!
	   VCMP.F32 s3,s10;
	   VMRS APSR_nzcv,FPSCR;
	   BGE SPIRAL;
   	   B SINEO
	   

SPIRAL VMUL.F32 s9,s11,s9; // x= rcost
      
       VMUL.F32 s5,s11,s5; // y= rsint
	  
       VMOV.F32 R0,s9;  // printf() 
       VMOV.F32 R1,s5; 
 	   VMOV.F32 R2,s11;
	   VMOV.F32 R3,s1;
	   BL printMsg4p;
	   
	   VADD.F32 s11,s11,s12;
	   VADD.F32 s1,s1,s12;
	   VCMP.F32 s1,s13;
	   VMRS APSR_nzcv,FPSCR;
	   BLE CSE;
	   B MOON
	   
	   
MOON   BL printMsg2
       VLDR.F32 s11,=0.5; // starting radius r =1
	   VLDR.F32 s1,=0; // tarting theta = 0 
	   VLDR.F32 s12,=0.05; // to increase radius(r) by 0.05
       VLDR.F32 s13,=6.2; // max theta = 6.2 (in radian)
       VLDR.F32 s14,=0.1; // to increase theta(t) by 0.1


CSE1   VLDR.F32 s2,=1; // n=1 :- used to increment the power of theta(t) for each term :- eg: t,t^2,t^3......
	   VLDR.F32 s3,=0; // counter = 0
	   VLDR.F32 s4,=1; // used for incrementing the counter by 1
	   VLDR.F32 s5,=1; // cossum = 1
	   VLDR.F32 s6,=0; // term = 0
	   VLDR.F32 s7,=0; // c1 = 0
	   VLDR.F32 s8,=1; // c2 = 1
	   VLDR.F32 s9,=0; // sinesum = 0
	   VLDR.F32 s10,=30; // maxterm = 30
	   

SINEO1 VMOV.F32 s7,s8;    // c1 = c2
       VADD.F32 s3,s3,s4; // count = count + 1
	   VMUL.F32 s8,s3,s7; // c2 = count*c1 :- to find factorial 
       VMUL.F32 s2,s2,s1; // increment power of t :- n= t,t^3,t^5,etc
	   VDIV.F32 s6,s2,s8; // term = n/c2 = t/1!,t^3/3!,t^5/5!,etc
	   VADD.F32 s9,s9,s6; // sinesum = sinesum + term = 0 + t/1!
	   B COSE1

COSE1  VMOV.F32 s7,s8;    // c1 = c2
       VADD.F32 s3,s3,s4; // count = count + 1
	   VMUL.F32 s8,s3,s7; // c2 = count*c1 :- to find factorial 
       VMUL.F32 s2,s2,s1; // increment power of t :- n= t^2,t^4,t^6,etc
	   VDIV.F32 s6,s2,s8; // term = n/c2 = t^2/2!,t^4/4!,t^6/6!,etc
	   VSUB.F32 s5,s5,s6; // cossum = cossum + term = 1 - t^2/2!
	   B SINEE1
	   
SINEE1 VMOV.F32 s7,s8;    // c1 = c2
       VADD.F32 s3,s3,s4; // count = count + 1
	   VMUL.F32 s8,s3,s7; // c2 = count*c1 :- to find factorial 
       VMUL.F32 s2,s2,s1; // increment power of t :- n= t,t^3,t^5,etc
	   VDIV.F32 s6,s2,s8; // term = n/c2 = t^3/3!,t^5/5!,etc
	   VSUB.F32 s9,s9,s6; // sinesum = sinesum + term = 0 + t/1! - t^3/3!
	   B COSO1
	   
COSO1   VMOV.F32 s7,s8;    // c1 = c2
       VADD.F32 s3,s3,s4; // count = count + 1
	   VMUL.F32 s8,s3,s7; // c2 = count*c1 :- to find factorial 
       VMUL.F32 s2,s2,s1; // increment power of t :- n= t^2,t^4,t^6,etc
	   VDIV.F32 s6,s2,s8; // term = n/c2 = t^2/2!,t^4/4!,t^6/6!,etc
	   VADD.F32 s5,s5,s6; // cossum = cossum + term = 1 - t^2/2! + t^4/4!
	   VCMP.F32 s3,s10;
	   VMRS APSR_nzcv,FPSCR;
	   BGE SPIRAL1;
   	   B SINEO1
	   

SPIRAL1 VMUL.F32 s9,s11,s9; // x= rcost
      
       VMUL.F32 s5,s11,s5; // y= rsint
	  
       VMOV.F32 R0,s9;  // printf() 
       VMOV.F32 R1,s5; 
 	   VMOV.F32 R2,s11;
	   VMOV.F32 R3,s1;
	   BL printMsg4p;
	   
	   VADD.F32 s11,s11,s12;
	   VADD.F32 s1,s1,s14;
	   VCMP.F32 s1,s13;
	   VMRS APSR_nzcv,FPSCR;
	   BLE CSE1;	   
	   
    

     endfunc
     end
	