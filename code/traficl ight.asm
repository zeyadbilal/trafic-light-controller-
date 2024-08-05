
_main:

;traficl ight.c,3 :: 		void main() {
;traficl ight.c,4 :: 		trisb=0;
	CLRF       TRISB+0
;traficl ight.c,5 :: 		trisd=0;
	CLRF       TRISD+0
;traficl ight.c,6 :: 		trisc=0;
	CLRF       TRISC+0
;traficl ight.c,7 :: 		trisc.RC0=0;
	BCF        TRISC+0, 0
;traficl ight.c,8 :: 		trisd.RD5=1;
	BSF        TRISD+0, 5
;traficl ight.c,9 :: 		trisd.RD6=1;
	BSF        TRISD+0, 6
;traficl ight.c,10 :: 		portb=0;
	CLRF       PORTB+0
;traficl ight.c,11 :: 		portd=0;
	CLRF       PORTD+0
;traficl ight.c,12 :: 		portc=0;
	CLRF       PORTC+0
;traficl ight.c,13 :: 		portc.RC0=1;
	BSF        PORTC+0, 0
;traficl ight.c,14 :: 		while(1){
L_main0:
;traficl ight.c,15 :: 		if(portd.RD5==1 || portd.RD6==1){
	BTFSC      PORTD+0, 5
	GOTO       L__main37
	BTFSC      PORTD+0, 6
	GOTO       L__main37
	GOTO       L_main4
L__main37:
;traficl ight.c,16 :: 		portc.RC2=1;  //RED 1 ON
	BSF        PORTC+0, 2
;traficl ight.c,17 :: 		portc.RC7=1;  //green 2 on
	BSF        PORTC+0, 7
;traficl ight.c,18 :: 		count2=2;
	MOVLW      2
	MOVWF      _count2+0
	MOVLW      0
	MOVWF      _count2+1
;traficl ight.c,19 :: 		portd=count2;
	MOVLW      2
	MOVWF      PORTD+0
;traficl ight.c,20 :: 		for(count=3;count>=0;count--){
	MOVLW      3
	MOVWF      _count+0
	MOVLW      0
	MOVWF      _count+1
L_main5:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVLW      0
	SUBWF      _count+0, 0
L__main39:
	BTFSS      STATUS+0, 0
	GOTO       L_main6
;traficl ight.c,21 :: 		portb=count;
	MOVF       _count+0, 0
	MOVWF      PORTB+0
;traficl ight.c,22 :: 		delaY_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;traficl ight.c,20 :: 		for(count=3;count>=0;count--){
	MOVLW      1
	SUBWF      _count+0, 1
	BTFSS      STATUS+0, 0
	DECF       _count+1, 1
;traficl ight.c,23 :: 		}
	GOTO       L_main5
L_main6:
;traficl ight.c,24 :: 		count2--;
	MOVLW      1
	SUBWF      _count2+0, 1
	BTFSS      STATUS+0, 0
	DECF       _count2+1, 1
;traficl ight.c,25 :: 		while(count2>=0){
L_main9:
	MOVLW      128
	XORWF      _count2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVLW      0
	SUBWF      _count2+0, 0
L__main40:
	BTFSS      STATUS+0, 0
	GOTO       L_main10
;traficl ight.c,26 :: 		portd=count2;
	MOVF       _count2+0, 0
	MOVWF      PORTD+0
;traficl ight.c,27 :: 		for(count=9;count>=0;count--){
	MOVLW      9
	MOVWF      _count+0
	MOVLW      0
	MOVWF      _count+1
L_main11:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      0
	SUBWF      _count+0, 0
L__main41:
	BTFSS      STATUS+0, 0
	GOTO       L_main12
;traficl ight.c,28 :: 		portb=count;
	MOVF       _count+0, 0
	MOVWF      PORTB+0
;traficl ight.c,29 :: 		delaY_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
	NOP
;traficl ight.c,30 :: 		if(count==4&&count2==0){
	MOVLW      0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main42
	MOVLW      4
	XORWF      _count+0, 0
L__main42:
	BTFSS      STATUS+0, 2
	GOTO       L_main17
	MOVLW      0
	XORWF      _count2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main43
	MOVLW      0
	XORWF      _count2+0, 0
L__main43:
	BTFSS      STATUS+0, 2
	GOTO       L_main17
L__main36:
;traficl ight.c,31 :: 		portc.RC7=0;  //green 2 off after 20s
	BCF        PORTC+0, 7
;traficl ight.c,32 :: 		portc.RC6=1;  //yellow 2 on
	BSF        PORTC+0, 6
;traficl ight.c,34 :: 		}
L_main17:
;traficl ight.c,27 :: 		for(count=9;count>=0;count--){
	MOVLW      1
	SUBWF      _count+0, 1
	BTFSS      STATUS+0, 0
	DECF       _count+1, 1
;traficl ight.c,35 :: 		}
	GOTO       L_main11
L_main12:
;traficl ight.c,36 :: 		count2--;
	MOVLW      1
	SUBWF      _count2+0, 1
	BTFSS      STATUS+0, 0
	DECF       _count2+1, 1
;traficl ight.c,37 :: 		}
	GOTO       L_main9
L_main10:
;traficl ight.c,38 :: 		portc.RC6=0;  //yellow 2 off
	BCF        PORTC+0, 6
;traficl ight.c,39 :: 		portc.RC2=0;  //RED 1 Off
	BCF        PORTC+0, 2
;traficl ight.c,40 :: 		}
L_main4:
;traficl ight.c,41 :: 		if(portd.RD5==1 || portd.RD6==0){
	BTFSC      PORTD+0, 5
	GOTO       L__main35
	BTFSS      PORTD+0, 6
	GOTO       L__main35
	GOTO       L_main20
L__main35:
;traficl ight.c,42 :: 		portc.RC5=1;  //RED 2 ON
	BSF        PORTC+0, 5
;traficl ight.c,43 :: 		portc.RC4=1;  //green 1 on
	BSF        PORTC+0, 4
;traficl ight.c,44 :: 		count2=1;
	MOVLW      1
	MOVWF      _count2+0
	MOVLW      0
	MOVWF      _count2+1
;traficl ight.c,45 :: 		portd=count2;
	MOVLW      1
	MOVWF      PORTD+0
;traficl ight.c,46 :: 		for(count=5;count>=0;count--){
	MOVLW      5
	MOVWF      _count+0
	MOVLW      0
	MOVWF      _count+1
L_main21:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main44
	MOVLW      0
	SUBWF      _count+0, 0
L__main44:
	BTFSS      STATUS+0, 0
	GOTO       L_main22
;traficl ight.c,47 :: 		portb=count;
	MOVF       _count+0, 0
	MOVWF      PORTB+0
;traficl ight.c,48 :: 		delaY_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	DECFSZ     R11+0, 1
	GOTO       L_main24
	NOP
	NOP
;traficl ight.c,46 :: 		for(count=5;count>=0;count--){
	MOVLW      1
	SUBWF      _count+0, 1
	BTFSS      STATUS+0, 0
	DECF       _count+1, 1
;traficl ight.c,49 :: 		}
	GOTO       L_main21
L_main22:
;traficl ight.c,50 :: 		count2--;
	MOVLW      1
	SUBWF      _count2+0, 1
	BTFSS      STATUS+0, 0
	DECF       _count2+1, 1
;traficl ight.c,51 :: 		while(count2>=0){
L_main25:
	MOVLW      128
	XORWF      _count2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main45
	MOVLW      0
	SUBWF      _count2+0, 0
L__main45:
	BTFSS      STATUS+0, 0
	GOTO       L_main26
;traficl ight.c,52 :: 		portd=count2;
	MOVF       _count2+0, 0
	MOVWF      PORTD+0
;traficl ight.c,53 :: 		for(count=9;count>=0;count--){
	MOVLW      9
	MOVWF      _count+0
	MOVLW      0
	MOVWF      _count+1
L_main27:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main46
	MOVLW      0
	SUBWF      _count+0, 0
L__main46:
	BTFSS      STATUS+0, 0
	GOTO       L_main28
;traficl ight.c,54 :: 		portb=count;
	MOVF       _count+0, 0
	MOVWF      PORTB+0
;traficl ight.c,55 :: 		delaY_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main30:
	DECFSZ     R13+0, 1
	GOTO       L_main30
	DECFSZ     R12+0, 1
	GOTO       L_main30
	DECFSZ     R11+0, 1
	GOTO       L_main30
	NOP
	NOP
;traficl ight.c,56 :: 		if(count==4&&count2==0){
	MOVLW      0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main47
	MOVLW      4
	XORWF      _count+0, 0
L__main47:
	BTFSS      STATUS+0, 2
	GOTO       L_main33
	MOVLW      0
	XORWF      _count2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main48
	MOVLW      0
	XORWF      _count2+0, 0
L__main48:
	BTFSS      STATUS+0, 2
	GOTO       L_main33
L__main34:
;traficl ight.c,57 :: 		portc.RC4=0;  //green 1 off
	BCF        PORTC+0, 4
;traficl ight.c,58 :: 		portc.RC3=1;  //yellow 1 on
	BSF        PORTC+0, 3
;traficl ight.c,59 :: 		}
L_main33:
;traficl ight.c,53 :: 		for(count=9;count>=0;count--){
	MOVLW      1
	SUBWF      _count+0, 1
	BTFSS      STATUS+0, 0
	DECF       _count+1, 1
;traficl ight.c,60 :: 		}
	GOTO       L_main27
L_main28:
;traficl ight.c,61 :: 		count2--;
	MOVLW      1
	SUBWF      _count2+0, 1
	BTFSS      STATUS+0, 0
	DECF       _count2+1, 1
;traficl ight.c,62 :: 		}
	GOTO       L_main25
L_main26:
;traficl ight.c,63 :: 		portc.RC3=0;  //yellow 1 off
	BCF        PORTC+0, 3
;traficl ight.c,64 :: 		portc.RC5=0;  //red 2 off
	BCF        PORTC+0, 5
;traficl ight.c,65 :: 		count2=2;
	MOVLW      2
	MOVWF      _count2+0
	MOVLW      0
	MOVWF      _count2+1
;traficl ight.c,66 :: 		}
L_main20:
;traficl ight.c,67 :: 		}
	GOTO       L_main0
;traficl ight.c,68 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
