
_send_bit:

;PICPixel.c,6 :: 		void send_bit(unsigned short bit_info){
;PICPixel.c,7 :: 		if (bit_info == 0b1) {
	MOVF       FARG_send_bit_bit_info+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_send_bit0
;PICPixel.c,8 :: 		LATA.F0 = 0b1;
	BSF        LATA+0, 0
;PICPixel.c,9 :: 		LATA.F0 = 0b1;
	BSF        LATA+0, 0
;PICPixel.c,10 :: 		LATA.F0 = 0b1;
	BSF        LATA+0, 0
;PICPixel.c,11 :: 		LATA.F0 = 0b1;
	BSF        LATA+0, 0
;PICPixel.c,12 :: 		LATA.F0 = 0b1;
	BSF        LATA+0, 0
;PICPixel.c,13 :: 		LATA.F0 = 0b1;
	BSF        LATA+0, 0
;PICPixel.c,14 :: 		LATA.F0 = 0b1;
	BSF        LATA+0, 0
;PICPixel.c,15 :: 		LATA.F0 = 0b0;
	BCF        LATA+0, 0
;PICPixel.c,16 :: 		} else {
	GOTO       L_send_bit1
L_send_bit0:
;PICPixel.c,17 :: 		LATA.F0 = 0b1;
	BSF        LATA+0, 0
;PICPixel.c,18 :: 		LATA.F0 = 0b1;
	BSF        LATA+0, 0
;PICPixel.c,19 :: 		LATA.F0 = 0b1;
	BSF        LATA+0, 0
;PICPixel.c,20 :: 		LATA.F0 = 0b0;
	BCF        LATA+0, 0
;PICPixel.c,21 :: 		}
L_send_bit1:
;PICPixel.c,22 :: 		}
L_end_send_bit:
	RETURN
; end of _send_bit

_set_colors:

;PICPixel.c,24 :: 		void set_colors(unsigned short int red,unsigned short int green,unsigned short int blue){
;PICPixel.c,26 :: 		send_bit(green.F7);
	MOVLW      0
	BTFSC      FARG_set_colors_green+0, 7
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,27 :: 		send_bit(green.F6);
	MOVLW      0
	BTFSC      FARG_set_colors_green+0, 6
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,28 :: 		send_bit(green.F5);
	MOVLW      0
	BTFSC      FARG_set_colors_green+0, 5
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,29 :: 		send_bit(green.F4);
	MOVLW      0
	BTFSC      FARG_set_colors_green+0, 4
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,30 :: 		send_bit(green.F3);
	MOVLW      0
	BTFSC      FARG_set_colors_green+0, 3
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,31 :: 		send_bit(green.F2);
	MOVLW      0
	BTFSC      FARG_set_colors_green+0, 2
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,32 :: 		send_bit(green.F1);
	MOVLW      0
	BTFSC      FARG_set_colors_green+0, 1
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,33 :: 		send_bit(green.F0);
	MOVLW      0
	BTFSC      FARG_set_colors_green+0, 0
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,35 :: 		send_bit(red.F7);
	MOVLW      0
	BTFSC      FARG_set_colors_red+0, 7
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,36 :: 		send_bit(red.F6);
	MOVLW      0
	BTFSC      FARG_set_colors_red+0, 6
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,37 :: 		send_bit(red.F5);
	MOVLW      0
	BTFSC      FARG_set_colors_red+0, 5
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,38 :: 		send_bit(red.F4);
	MOVLW      0
	BTFSC      FARG_set_colors_red+0, 4
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,39 :: 		send_bit(red.F3);
	MOVLW      0
	BTFSC      FARG_set_colors_red+0, 3
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,40 :: 		send_bit(red.F2);
	MOVLW      0
	BTFSC      FARG_set_colors_red+0, 2
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,41 :: 		send_bit(red.F1);
	MOVLW      0
	BTFSC      FARG_set_colors_red+0, 1
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,42 :: 		send_bit(red.F0);
	MOVLW      0
	BTFSC      FARG_set_colors_red+0, 0
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,44 :: 		send_bit(blue.F7);
	MOVLW      0
	BTFSC      FARG_set_colors_blue+0, 7
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,45 :: 		send_bit(blue.F6);
	MOVLW      0
	BTFSC      FARG_set_colors_blue+0, 6
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,46 :: 		send_bit(blue.F5);
	MOVLW      0
	BTFSC      FARG_set_colors_blue+0, 5
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,47 :: 		send_bit(blue.F4);
	MOVLW      0
	BTFSC      FARG_set_colors_blue+0, 4
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,48 :: 		send_bit(blue.F3);
	MOVLW      0
	BTFSC      FARG_set_colors_blue+0, 3
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,49 :: 		send_bit(blue.F2);
	MOVLW      0
	BTFSC      FARG_set_colors_blue+0, 2
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,50 :: 		send_bit(blue.F1);
	MOVLW      0
	BTFSC      FARG_set_colors_blue+0, 1
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,51 :: 		send_bit(blue.F0);
	MOVLW      0
	BTFSC      FARG_set_colors_blue+0, 0
	MOVLW      1
	MOVWF      FARG_send_bit_bit_info+0
	CALL       _send_bit+0
;PICPixel.c,52 :: 		}
L_end_set_colors:
	RETURN
; end of _set_colors

_main:

;PICPixel.c,54 :: 		void main() {
;PICPixel.c,55 :: 		OSCCON = 0xF0; // 32MHz --> One cycle spends 125ns
	MOVLW      240
	MOVWF      OSCCON+0
;PICPixel.c,56 :: 		TRISA = 0;
	CLRF       TRISA+0
;PICPixel.c,57 :: 		ANSELA = 0;
	CLRF       ANSELA+0
;PICPixel.c,58 :: 		while(1){
L_main2:
;PICPixel.c,61 :: 		for(i = 0; i <= 23; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main4:
	MOVF       main_i_L1+0, 0
	SUBLW      23
	BTFSS      STATUS+0, 0
	GOTO       L_main5
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main4
L_main5:
;PICPixel.c,62 :: 		for(i = 0; i <= 5; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main7:
	MOVF       main_i_L1+0, 0
	SUBLW      5
	BTFSS      STATUS+0, 0
	GOTO       L_main8
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main7
L_main8:
;PICPixel.c,63 :: 		for(i = 0; i <= 2; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main10:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main11
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main10
L_main11:
;PICPixel.c,64 :: 		for(i = 0; i <= 7; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main13:
	MOVF       main_i_L1+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_main14
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main13
L_main14:
;PICPixel.c,65 :: 		for(i = 0; i <= 12; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main16:
	MOVF       main_i_L1+0, 0
	SUBLW      12
	BTFSS      STATUS+0, 0
	GOTO       L_main17
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main16
L_main17:
;PICPixel.c,66 :: 		for(i = 0; i <= 19; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main19:
	MOVF       main_i_L1+0, 0
	SUBLW      19
	BTFSS      STATUS+0, 0
	GOTO       L_main20
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main19
L_main20:
;PICPixel.c,67 :: 		for(i = 0; i <= 1; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main22:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main23
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main22
L_main23:
;PICPixel.c,68 :: 		set_colors(230,57,41);
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,69 :: 		for(i = 0; i <= 4; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main25:
	MOVF       main_i_L1+0, 0
	SUBLW      4
	BTFSS      STATUS+0, 0
	GOTO       L_main26
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main25
L_main26:
;PICPixel.c,70 :: 		for(i = 0; i <= 1; i++)set_colors(230,57,41);
	CLRF       main_i_L1+0
L_main28:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main29
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main28
L_main29:
;PICPixel.c,71 :: 		for(i = 0; i <= 1; i++)set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main31:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main32
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main31
L_main32:
;PICPixel.c,72 :: 		set_colors(244,139,60);
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,73 :: 		set_colors(76,56,42);
	MOVLW      76
	MOVWF      FARG_set_colors_red+0
	MOVLW      56
	MOVWF      FARG_set_colors_green+0
	MOVLW      42
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,74 :: 		set_colors(255,255,255);  // Eyes
	MOVLW      255
	MOVWF      FARG_set_colors_red+0
	MOVLW      255
	MOVWF      FARG_set_colors_green+0
	MOVLW      255
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,75 :: 		for(i = 0; i <= 3; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main34:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main35
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main34
L_main35:
;PICPixel.c,76 :: 		set_colors(76,56,42);
	MOVLW      76
	MOVWF      FARG_set_colors_red+0
	MOVLW      56
	MOVWF      FARG_set_colors_green+0
	MOVLW      42
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,77 :: 		set_colors(255,255,255);  // Eyes
	MOVLW      255
	MOVWF      FARG_set_colors_red+0
	MOVLW      255
	MOVWF      FARG_set_colors_green+0
	MOVLW      255
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,78 :: 		for(i = 0; i <= 1; i++)set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main37:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main38
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main37
L_main38:
;PICPixel.c,79 :: 		for(i = 0; i <= 1; i++)set_colors(76,56,42);
	CLRF       main_i_L1+0
L_main40:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main41
	MOVLW      76
	MOVWF      FARG_set_colors_red+0
	MOVLW      56
	MOVWF      FARG_set_colors_green+0
	MOVLW      42
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main40
L_main41:
;PICPixel.c,80 :: 		for(i = 0; i <= 3; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main43:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main44
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main43
L_main44:
;PICPixel.c,81 :: 		for(i = 0; i <= 1; i++) set_colors(76,56,42);
	CLRF       main_i_L1+0
L_main46:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main47
	MOVLW      76
	MOVWF      FARG_set_colors_red+0
	MOVLW      56
	MOVWF      FARG_set_colors_green+0
	MOVLW      42
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main46
L_main47:
;PICPixel.c,82 :: 		set_colors(244,139,60);
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,83 :: 		for(i = 0; i <= 1; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main49:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main50
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main49
L_main50:
;PICPixel.c,84 :: 		for(i = 0; i <= 2; i++) set_colors(230,57,41);
	CLRF       main_i_L1+0
L_main52:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main53
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main52
L_main53:
;PICPixel.c,85 :: 		for(i = 0; i <= 1; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main55:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main56
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main55
L_main56:
;PICPixel.c,86 :: 		set_colors(230,57,41);
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,87 :: 		set_colors(255,216,104);
	MOVLW      255
	MOVWF      FARG_set_colors_red+0
	MOVLW      216
	MOVWF      FARG_set_colors_green+0
	MOVLW      104
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,88 :: 		set_colors(230,57,41);
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,89 :: 		for(i = 0; i <= 1; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main58:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main59
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main58
L_main59:
;PICPixel.c,90 :: 		set_colors(244,139,60);
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,91 :: 		set_colors(46,155,186);
	MOVLW      46
	MOVWF      FARG_set_colors_red+0
	MOVLW      155
	MOVWF      FARG_set_colors_green+0
	MOVLW      186
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,92 :: 		set_colors(76,56,42);
	MOVLW      76
	MOVWF      FARG_set_colors_red+0
	MOVLW      56
	MOVWF      FARG_set_colors_green+0
	MOVLW      42
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,93 :: 		for(i = 0; i <= 3; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main61:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main62
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main61
L_main62:
;PICPixel.c,94 :: 		set_colors(76,56,42);
	MOVLW      76
	MOVWF      FARG_set_colors_red+0
	MOVLW      56
	MOVWF      FARG_set_colors_green+0
	MOVLW      42
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,95 :: 		set_colors(46,155,186);
	MOVLW      46
	MOVWF      FARG_set_colors_red+0
	MOVLW      155
	MOVWF      FARG_set_colors_green+0
	MOVLW      186
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,96 :: 		for(i = 0; i <= 2; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main64:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main65
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main64
L_main65:
;PICPixel.c,97 :: 		set_colors(46,155,186);
	MOVLW      46
	MOVWF      FARG_set_colors_red+0
	MOVLW      155
	MOVWF      FARG_set_colors_green+0
	MOVLW      186
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,98 :: 		for(i = 0; i <= 3; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main67:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main68
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main67
L_main68:
;PICPixel.c,99 :: 		set_colors(46,155,186);
	MOVLW      46
	MOVWF      FARG_set_colors_red+0
	MOVLW      155
	MOVWF      FARG_set_colors_green+0
	MOVLW      186
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,100 :: 		for(i = 0; i <= 1; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main70:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main71
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main70
L_main71:
;PICPixel.c,101 :: 		for(i = 0; i <= 1; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main73:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main74
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main73
L_main74:
;PICPixel.c,102 :: 		set_colors(230,57,41);
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,103 :: 		set_colors(255,216,104);
	MOVLW      255
	MOVWF      FARG_set_colors_red+0
	MOVLW      216
	MOVWF      FARG_set_colors_green+0
	MOVLW      104
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,104 :: 		set_colors(230,57,41);
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,105 :: 		for(i = 0; i <= 2; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main76:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main77
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main76
L_main77:
;PICPixel.c,106 :: 		set_colors(230,57,41);
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,107 :: 		for(i = 0; i <= 3; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main79:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main80
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main79
L_main80:
;PICPixel.c,108 :: 		for(i = 0; i <= 7; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main82:
	MOVF       main_i_L1+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_main83
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main82
L_main83:
;PICPixel.c,109 :: 		set_colors(0,0,0);
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,110 :: 		set_colors(244,139,60);
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,111 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,112 :: 		for(i = 0; i <= 5; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main85:
	MOVF       main_i_L1+0, 0
	SUBLW      5
	BTFSS      STATUS+0, 0
	GOTO       L_main86
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main85
L_main86:
;PICPixel.c,113 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,114 :: 		set_colors(244,139,60);
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,115 :: 		for(i = 0; i <= 1; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main88:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main89
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main88
L_main89:
;PICPixel.c,116 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,117 :: 		set_colors(244,139,60);
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,118 :: 		for(i = 0; i <= 4; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main91:
	MOVF       main_i_L1+0, 0
	SUBLW      4
	BTFSS      STATUS+0, 0
	GOTO       L_main92
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main91
L_main92:
;PICPixel.c,119 :: 		for(i = 0; i <= 1; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main94:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main95
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main94
L_main95:
;PICPixel.c,120 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,121 :: 		for(i = 0; i <= 1; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main97:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main98
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main97
L_main98:
;PICPixel.c,122 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,123 :: 		for(i = 0; i <= 3; i++) set_colors(207,179,66);
	CLRF       main_i_L1+0
L_main100:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main101
	MOVLW      207
	MOVWF      FARG_set_colors_red+0
	MOVLW      179
	MOVWF      FARG_set_colors_green+0
	MOVLW      66
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main100
L_main101:
;PICPixel.c,124 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,125 :: 		for(i = 0; i <= 1; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main103:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main104
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main103
L_main104:
;PICPixel.c,126 :: 		set_colors(0,0,0);
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,127 :: 		for(i = 0; i <= 1; i++) set_colors(204,92,36);
	CLRF       main_i_L1+0
L_main106:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main107
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main106
L_main107:
;PICPixel.c,128 :: 		for(i = 0; i <= 3; i++) set_colors(255,216,104);
	CLRF       main_i_L1+0
L_main109:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main110
	MOVLW      255
	MOVWF      FARG_set_colors_red+0
	MOVLW      216
	MOVWF      FARG_set_colors_green+0
	MOVLW      104
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main109
L_main110:
;PICPixel.c,129 :: 		for(i = 0; i <= 2; i++) set_colors(204,92,36);
	CLRF       main_i_L1+0
L_main112:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main113
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main112
L_main113:
;PICPixel.c,130 :: 		for(i = 0; i <= 1; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main115:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main116
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main115
L_main116:
;PICPixel.c,131 :: 		for(i = 0; i <= 9; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main118:
	MOVF       main_i_L1+0, 0
	SUBLW      9
	BTFSS      STATUS+0, 0
	GOTO       L_main119
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main118
L_main119:
;PICPixel.c,132 :: 		for(i = 0; i <= 2; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main121:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main122
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main121
L_main122:
;PICPixel.c,133 :: 		for(i = 0; i <= 3; i++) set_colors(255,216,104);
	CLRF       main_i_L1+0
L_main124:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main125
	MOVLW      255
	MOVWF      FARG_set_colors_red+0
	MOVLW      216
	MOVWF      FARG_set_colors_green+0
	MOVLW      104
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main124
L_main125:
;PICPixel.c,134 :: 		for(i = 0; i <= 1; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main127:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main128
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main127
L_main128:
;PICPixel.c,135 :: 		for(i = 0; i <= 2; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main130:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main131
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main130
L_main131:
;PICPixel.c,136 :: 		for(i = 0; i <= 1; i++) set_colors(204,92,36);
	CLRF       main_i_L1+0
L_main133:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main134
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main133
L_main134:
;PICPixel.c,137 :: 		for(i = 0; i <= 2; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main136:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main137
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main136
L_main137:
;PICPixel.c,138 :: 		for(i = 0; i <= 1; i++) set_colors(204,92,36);
	CLRF       main_i_L1+0
L_main139:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main140
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main139
L_main140:
;PICPixel.c,139 :: 		for(i = 0; i <= 22; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main142:
	MOVF       main_i_L1+0, 0
	SUBLW      22
	BTFSS      STATUS+0, 0
	GOTO       L_main143
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main142
L_main143:
;PICPixel.c,141 :: 		LATA.F0 = 0b0;
	BCF        LATA+0, 0
;PICPixel.c,142 :: 		delay_us(50);
	MOVLW      133
	MOVWF      R13
L_main145:
	DECFSZ     R13, 1
	GOTO       L_main145
;PICPixel.c,143 :: 		delay_ms(500);
	MOVLW      21
	MOVWF      R11
	MOVLW      75
	MOVWF      R12
	MOVLW      190
	MOVWF      R13
L_main146:
	DECFSZ     R13, 1
	GOTO       L_main146
	DECFSZ     R12, 1
	GOTO       L_main146
	DECFSZ     R11, 1
	GOTO       L_main146
	NOP
;PICPixel.c,146 :: 		for(i = 0; i <= 33; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main147:
	MOVF       main_i_L1+0, 0
	SUBLW      33
	BTFSS      STATUS+0, 0
	GOTO       L_main148
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main147
L_main148:
;PICPixel.c,147 :: 		for(i = 0; i <= 5; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main150:
	MOVF       main_i_L1+0, 0
	SUBLW      5
	BTFSS      STATUS+0, 0
	GOTO       L_main151
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main150
L_main151:
;PICPixel.c,148 :: 		for(i = 0; i <= 14; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main153:
	MOVF       main_i_L1+0, 0
	SUBLW      14
	BTFSS      STATUS+0, 0
	GOTO       L_main154
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main153
L_main154:
;PICPixel.c,149 :: 		for(i = 0; i <= 7; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main156:
	MOVF       main_i_L1+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_main157
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main156
L_main157:
;PICPixel.c,150 :: 		set_colors(0,0,0);
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,151 :: 		for(i = 0; i <= 9; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main159:
	MOVF       main_i_L1+0, 0
	SUBLW      9
	BTFSS      STATUS+0, 0
	GOTO       L_main160
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main159
L_main160:
;PICPixel.c,152 :: 		for(i = 0; i <= 2; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main162:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main163
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main162
L_main163:
;PICPixel.c,153 :: 		set_colors(230,57,41);
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,154 :: 		for(i = 0; i <= 3; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main165:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main166
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main165
L_main166:
;PICPixel.c,155 :: 		for(i = 0; i <= 1; i++)set_colors(230,57,41);
	CLRF       main_i_L1+0
L_main168:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main169
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main168
L_main169:
;PICPixel.c,156 :: 		for(i = 0; i <= 1; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main171:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main172
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main171
L_main172:
;PICPixel.c,157 :: 		for(i = 0; i <= 19; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main174:
	MOVF       main_i_L1+0, 0
	SUBLW      19
	BTFSS      STATUS+0, 0
	GOTO       L_main175
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main174
L_main175:
;PICPixel.c,158 :: 		set_colors(0,0,0);
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,159 :: 		for(i = 0; i <= 2; i++) set_colors(230,57,41);
	CLRF       main_i_L1+0
L_main177:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main178
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main177
L_main178:
;PICPixel.c,160 :: 		for(i = 0; i <= 3; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main180:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main181
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main180
L_main181:
;PICPixel.c,161 :: 		set_colors(230,57,41);
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,162 :: 		set_colors(255,216,104);
	MOVLW      255
	MOVWF      FARG_set_colors_red+0
	MOVLW      216
	MOVWF      FARG_set_colors_green+0
	MOVLW      104
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,163 :: 		set_colors(230,57,41);
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,164 :: 		set_colors(0,0,0);
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,165 :: 		set_colors(244,139,60);
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,166 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,167 :: 		for(i = 0; i <= 5; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main183:
	MOVF       main_i_L1+0, 0
	SUBLW      5
	BTFSS      STATUS+0, 0
	GOTO       L_main184
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main183
L_main184:
;PICPixel.c,168 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,169 :: 		for(i = 0; i <= 1; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main186:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main187
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main186
L_main187:
;PICPixel.c,170 :: 		for(i = 0; i <= 1; i++) set_colors(204,92,36);
	CLRF       main_i_L1+0
L_main189:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main190
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main189
L_main190:
;PICPixel.c,171 :: 		for(i = 0; i <= 3; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main192:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main193
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main192
L_main193:
;PICPixel.c,172 :: 		for(i = 0; i <= 1; i++) set_colors(204,92,36);
	CLRF       main_i_L1+0
L_main195:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main196
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main195
L_main196:
;PICPixel.c,173 :: 		set_colors(244,139,60);
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,174 :: 		set_colors(0,0,0);
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,175 :: 		set_colors(230,57,41);
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,176 :: 		set_colors(255,216,104);
	MOVLW      255
	MOVWF      FARG_set_colors_red+0
	MOVLW      216
	MOVWF      FARG_set_colors_green+0
	MOVLW      104
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,177 :: 		set_colors(230,57,41);
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,178 :: 		for(i = 0; i <= 4; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main198:
	MOVF       main_i_L1+0, 0
	SUBLW      4
	BTFSS      STATUS+0, 0
	GOTO       L_main199
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main198
L_main199:
;PICPixel.c,179 :: 		set_colors(230,57,41);
	MOVLW      230
	MOVWF      FARG_set_colors_red+0
	MOVLW      57
	MOVWF      FARG_set_colors_green+0
	MOVLW      41
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,180 :: 		for(i = 0; i <= 1; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main201:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main202
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main201
L_main202:
;PICPixel.c,181 :: 		for(i = 0; i <= 1; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main204:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main205
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main204
L_main205:
;PICPixel.c,182 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,183 :: 		for(i = 0; i <= 3; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main207:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main208
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main207
L_main208:
;PICPixel.c,184 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,185 :: 		for(i = 0; i <= 1; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main210:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main211
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main210
L_main211:
;PICPixel.c,186 :: 		set_colors(0,0,0);
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,187 :: 		for(i = 0; i <= 7; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main213:
	MOVF       main_i_L1+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_main214
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main213
L_main214:
;PICPixel.c,188 :: 		for(i = 0; i <= 1; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main216:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main217
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main216
L_main217:
;PICPixel.c,189 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,190 :: 		set_colors(244,139,60);
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,191 :: 		for(i = 0; i <= 5; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main219:
	MOVF       main_i_L1+0, 0
	SUBLW      5
	BTFSS      STATUS+0, 0
	GOTO       L_main220
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main219
L_main220:
;PICPixel.c,192 :: 		for(i = 0; i <= 1; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main222:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main223
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main222
L_main223:
;PICPixel.c,193 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,194 :: 		set_colors(244,139,60);
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,195 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,196 :: 		for(i = 0; i <= 5; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main225:
	MOVF       main_i_L1+0, 0
	SUBLW      5
	BTFSS      STATUS+0, 0
	GOTO       L_main226
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main225
L_main226:
;PICPixel.c,197 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,198 :: 		for(i = 0; i <= 2; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main228:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main229
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main228
L_main229:
;PICPixel.c,199 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,200 :: 		for(i = 0; i <= 3; i++) set_colors(207,179,66);
	CLRF       main_i_L1+0
L_main231:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main232
	MOVLW      207
	MOVWF      FARG_set_colors_red+0
	MOVLW      179
	MOVWF      FARG_set_colors_green+0
	MOVLW      66
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main231
L_main232:
;PICPixel.c,201 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,202 :: 		for(i = 0; i <= 1; i++) set_colors(244,139,60);
	CLRF       main_i_L1+0
L_main234:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main235
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main234
L_main235:
;PICPixel.c,203 :: 		set_colors(204,92,36);
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,204 :: 		set_colors(244,139,60);
	MOVLW      244
	MOVWF      FARG_set_colors_red+0
	MOVLW      139
	MOVWF      FARG_set_colors_green+0
	MOVLW      60
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
;PICPixel.c,205 :: 		for(i = 0; i <= 9; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main237:
	MOVF       main_i_L1+0, 0
	SUBLW      9
	BTFSS      STATUS+0, 0
	GOTO       L_main238
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main237
L_main238:
;PICPixel.c,206 :: 		for(i = 0; i <= 2; i++) set_colors(204,92,36);
	CLRF       main_i_L1+0
L_main240:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main241
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main240
L_main241:
;PICPixel.c,207 :: 		for(i = 0; i <= 3; i++) set_colors(255,216,104);
	CLRF       main_i_L1+0
L_main243:
	MOVF       main_i_L1+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main244
	MOVLW      255
	MOVWF      FARG_set_colors_red+0
	MOVLW      216
	MOVWF      FARG_set_colors_green+0
	MOVLW      104
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main243
L_main244:
;PICPixel.c,208 :: 		for(i = 0; i <= 1; i++) set_colors(204,92,36);
	CLRF       main_i_L1+0
L_main246:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main247
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main246
L_main247:
;PICPixel.c,209 :: 		for(i = 0; i <= 2; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main249:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main250
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main249
L_main250:
;PICPixel.c,210 :: 		for(i = 0; i <= 1; i++) set_colors(204,92,36);
	CLRF       main_i_L1+0
L_main252:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main253
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main252
L_main253:
;PICPixel.c,211 :: 		for(i = 0; i <= 2; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main255:
	MOVF       main_i_L1+0, 0
	SUBLW      2
	BTFSS      STATUS+0, 0
	GOTO       L_main256
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main255
L_main256:
;PICPixel.c,212 :: 		for(i = 0; i <= 1; i++) set_colors(204,92,36);
	CLRF       main_i_L1+0
L_main258:
	MOVF       main_i_L1+0, 0
	SUBLW      1
	BTFSS      STATUS+0, 0
	GOTO       L_main259
	MOVLW      204
	MOVWF      FARG_set_colors_red+0
	MOVLW      92
	MOVWF      FARG_set_colors_green+0
	MOVLW      36
	MOVWF      FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main258
L_main259:
;PICPixel.c,213 :: 		for(i = 0; i <= 22; i++) set_colors(0,0,0);
	CLRF       main_i_L1+0
L_main261:
	MOVF       main_i_L1+0, 0
	SUBLW      22
	BTFSS      STATUS+0, 0
	GOTO       L_main262
	CLRF       FARG_set_colors_red+0
	CLRF       FARG_set_colors_green+0
	CLRF       FARG_set_colors_blue+0
	CALL       _set_colors+0
	INCF       main_i_L1+0, 1
	GOTO       L_main261
L_main262:
;PICPixel.c,215 :: 		LATA.F0 = 0b0;
	BCF        LATA+0, 0
;PICPixel.c,216 :: 		delay_us(50);
	MOVLW      133
	MOVWF      R13
L_main264:
	DECFSZ     R13, 1
	GOTO       L_main264
;PICPixel.c,217 :: 		delay_ms(250);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_main265:
	DECFSZ     R13, 1
	GOTO       L_main265
	DECFSZ     R12, 1
	GOTO       L_main265
	DECFSZ     R11, 1
	GOTO       L_main265
	NOP
	NOP
;PICPixel.c,218 :: 		}
	GOTO       L_main2
;PICPixel.c,219 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
