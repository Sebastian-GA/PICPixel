// NeoPixelWS2812B LEDs Control with PIC12F1822
// Authors: Sebastian Garcia Angarita
//          Sergio Sebastian Oliveros Sepulveda
// Date: 29/03/2023

void send_bit(unsigned short bit_info){
     if (bit_info == 0b1) {
          LATA.F0 = 0b1;
          LATA.F0 = 0b1;
          LATA.F0 = 0b1;
          LATA.F0 = 0b1;
          LATA.F0 = 0b1;
          LATA.F0 = 0b1;
          LATA.F0 = 0b1;
          LATA.F0 = 0b0;
     } else {
          LATA.F0 = 0b1;
          LATA.F0 = 0b1;
          LATA.F0 = 0b1;
          LATA.F0 = 0b0;
     }
}

void set_colors(unsigned short int red,unsigned short int green,unsigned short int blue){
    // Sends first green
    send_bit(green.F7);
    send_bit(green.F6);
    send_bit(green.F5);
    send_bit(green.F4);
    send_bit(green.F3);
    send_bit(green.F2);
    send_bit(green.F1);
    send_bit(green.F0);

    send_bit(red.F7);
    send_bit(red.F6);
    send_bit(red.F5);
    send_bit(red.F4);
    send_bit(red.F3);
    send_bit(red.F2);
    send_bit(red.F1);
    send_bit(red.F0);

    send_bit(blue.F7);
    send_bit(blue.F6);
    send_bit(blue.F5);
    send_bit(blue.F4);
    send_bit(blue.F3);
    send_bit(blue.F2);
    send_bit(blue.F1);
    send_bit(blue.F0);
}

void main() {
     OSCCON = 0xF0; // 32MHz --> One cycle spends 125ns
     TRISA = 0;
     ANSELA = 0;
     while(1){
         unsigned short i;
         // Frame 1
         for(i = 0; i <= 23; i++) set_colors(0,0,0);
         for(i = 0; i <= 5; i++) set_colors(244,139,60);
         for(i = 0; i <= 2; i++) set_colors(0,0,0);
         for(i = 0; i <= 7; i++) set_colors(244,139,60);
         for(i = 0; i <= 12; i++) set_colors(0,0,0);
         for(i = 0; i <= 19; i++) set_colors(244,139,60);
         for(i = 0; i <= 1; i++) set_colors(0,0,0);
         set_colors(230,57,41);
         for(i = 0; i <= 4; i++) set_colors(0,0,0);
         for(i = 0; i <= 1; i++)set_colors(230,57,41);
         for(i = 0; i <= 1; i++)set_colors(0,0,0);
         set_colors(244,139,60);
         set_colors(76,56,42);
         set_colors(255,255,255);  // Eyes
         for(i = 0; i <= 3; i++) set_colors(244,139,60);
         set_colors(76,56,42);
         set_colors(255,255,255);  // Eyes
         for(i = 0; i <= 1; i++)set_colors(244,139,60);
         for(i = 0; i <= 1; i++)set_colors(76,56,42);
         for(i = 0; i <= 3; i++) set_colors(244,139,60);
         for(i = 0; i <= 1; i++) set_colors(76,56,42);
         set_colors(244,139,60);
         for(i = 0; i <= 1; i++) set_colors(0,0,0);
         for(i = 0; i <= 2; i++) set_colors(230,57,41);
         for(i = 0; i <= 1; i++) set_colors(0,0,0);
         set_colors(230,57,41);
         set_colors(255,216,104);
         set_colors(230,57,41);
         for(i = 0; i <= 1; i++) set_colors(0,0,0);
         set_colors(244,139,60);
         set_colors(46,155,186);
         set_colors(76,56,42);
         for(i = 0; i <= 3; i++) set_colors(244,139,60);
         set_colors(76,56,42);
         set_colors(46,155,186);
         for(i = 0; i <= 2; i++) set_colors(244,139,60);
         set_colors(46,155,186);
         for(i = 0; i <= 3; i++) set_colors(244,139,60);
         set_colors(46,155,186);
         for(i = 0; i <= 1; i++) set_colors(244,139,60);
         for(i = 0; i <= 1; i++) set_colors(0,0,0);
         set_colors(230,57,41);
         set_colors(255,216,104);
         set_colors(230,57,41);
         for(i = 0; i <= 2; i++) set_colors(0,0,0);
         set_colors(230,57,41);
         for(i = 0; i <= 3; i++) set_colors(0,0,0);
         for(i = 0; i <= 7; i++) set_colors(244,139,60);
         set_colors(0,0,0);
         set_colors(244,139,60);
         set_colors(204,92,36);
         for(i = 0; i <= 5; i++) set_colors(244,139,60);
         set_colors(204,92,36);
         set_colors(244,139,60);
         for(i = 0; i <= 1; i++) set_colors(0,0,0);
         set_colors(204,92,36);
         set_colors(244,139,60);
         for(i = 0; i <= 4; i++) set_colors(0,0,0);
         for(i = 0; i <= 1; i++) set_colors(244,139,60);
         set_colors(204,92,36);
         for(i = 0; i <= 1; i++) set_colors(244,139,60);
         set_colors(204,92,36);
         for(i = 0; i <= 3; i++) set_colors(207,179,66);
         set_colors(204,92,36);
         for(i = 0; i <= 1; i++) set_colors(244,139,60);
         set_colors(0,0,0);
         for(i = 0; i <= 1; i++) set_colors(204,92,36);
         for(i = 0; i <= 3; i++) set_colors(255,216,104);
         for(i = 0; i <= 2; i++) set_colors(204,92,36);
         for(i = 0; i <= 1; i++) set_colors(244,139,60);
         for(i = 0; i <= 9; i++) set_colors(0,0,0);
         for(i = 0; i <= 2; i++) set_colors(244,139,60);
         for(i = 0; i <= 3; i++) set_colors(255,216,104);
         for(i = 0; i <= 1; i++) set_colors(244,139,60);
         for(i = 0; i <= 2; i++) set_colors(0,0,0);
         for(i = 0; i <= 1; i++) set_colors(204,92,36);
         for(i = 0; i <= 2; i++) set_colors(0,0,0);
         for(i = 0; i <= 1; i++) set_colors(204,92,36);
         for(i = 0; i <= 22; i++) set_colors(0,0,0);

         LATA.F0 = 0b0;
         delay_us(50);
         delay_ms(500);

         // Frame 2
         for(i = 0; i <= 33; i++) set_colors(0,0,0);
         for(i = 0; i <= 5; i++) set_colors(244,139,60);
         for(i = 0; i <= 14; i++) set_colors(0,0,0);
         for(i = 0; i <= 7; i++) set_colors(244,139,60);
         set_colors(0,0,0);
         for(i = 0; i <= 9; i++) set_colors(244,139,60);
         for(i = 0; i <= 2; i++) set_colors(0,0,0);
         set_colors(230,57,41);
         for(i = 0; i <= 3; i++) set_colors(0,0,0);
         for(i = 0; i <= 1; i++)set_colors(230,57,41);
         for(i = 0; i <= 1; i++) set_colors(0,0,0);
         for(i = 0; i <= 19; i++) set_colors(244,139,60);
         set_colors(0,0,0);
         for(i = 0; i <= 2; i++) set_colors(230,57,41);
         for(i = 0; i <= 3; i++) set_colors(0,0,0);
         set_colors(230,57,41);
         set_colors(255,216,104);
         set_colors(230,57,41);
         set_colors(0,0,0);
         set_colors(244,139,60);
         set_colors(204,92,36);
         for(i = 0; i <= 5; i++) set_colors(244,139,60);
         set_colors(204,92,36);
         for(i = 0; i <= 1; i++) set_colors(244,139,60);
         for(i = 0; i <= 1; i++) set_colors(204,92,36);
         for(i = 0; i <= 3; i++) set_colors(244,139,60);
         for(i = 0; i <= 1; i++) set_colors(204,92,36);
         set_colors(244,139,60);
         set_colors(0,0,0);
         set_colors(230,57,41);
         set_colors(255,216,104);
         set_colors(230,57,41);
         for(i = 0; i <= 4; i++) set_colors(0,0,0);
         set_colors(230,57,41);
         for(i = 0; i <= 1; i++) set_colors(0,0,0);
         for(i = 0; i <= 1; i++) set_colors(244,139,60);
         set_colors(204,92,36);
         for(i = 0; i <= 3; i++) set_colors(244,139,60);
         set_colors(204,92,36);
         for(i = 0; i <= 1; i++) set_colors(244,139,60);
         set_colors(0,0,0);
         for(i = 0; i <= 7; i++) set_colors(244,139,60);
         for(i = 0; i <= 1; i++) set_colors(0,0,0);
         set_colors(204,92,36);
         set_colors(244,139,60);
         for(i = 0; i <= 5; i++) set_colors(0,0,0);
         for(i = 0; i <= 1; i++) set_colors(244,139,60);
         set_colors(204,92,36);
         set_colors(244,139,60);
         set_colors(204,92,36);
         for(i = 0; i <= 5; i++) set_colors(244,139,60);
         set_colors(204,92,36);
         for(i = 0; i <= 2; i++) set_colors(244,139,60);
         set_colors(204,92,36);
         for(i = 0; i <= 3; i++) set_colors(207,179,66);
         set_colors(204,92,36);
         for(i = 0; i <= 1; i++) set_colors(244,139,60);
         set_colors(204,92,36);
         set_colors(244,139,60);
         for(i = 0; i <= 9; i++) set_colors(0,0,0);
         for(i = 0; i <= 2; i++) set_colors(204,92,36);
         for(i = 0; i <= 3; i++) set_colors(255,216,104);
         for(i = 0; i <= 1; i++) set_colors(204,92,36);
         for(i = 0; i <= 2; i++) set_colors(0,0,0);
         for(i = 0; i <= 1; i++) set_colors(204,92,36);
         for(i = 0; i <= 2; i++) set_colors(0,0,0);
         for(i = 0; i <= 1; i++) set_colors(204,92,36);
         for(i = 0; i <= 22; i++) set_colors(0,0,0);

         LATA.F0 = 0b0;
         delay_us(50);
         delay_ms(250);
     }
}
