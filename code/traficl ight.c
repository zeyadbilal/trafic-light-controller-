  int count=0;
  int count2=2;
void main() {
   trisb=0;
   trisd=0;
   trisc=0;
   trisc.RC0=0;
   trisd.RD5=1;
   trisd.RD6=1;
   portb=0;
   portd=0;
   portc=0;
   portc.RC0=1;
   while(1){
    if(portd.RD5==1 || portd.RD6==1){
             portc.RC2=1;  //RED 1 ON
             portc.RC7=1;  //green 2 on
             count2=2;
             portd=count2;
       for(count=3;count>=0;count--){
             portb=count;
             delaY_ms(500);
             }
             count2--;
     while(count2>=0){
             portd=count2;
      for(count=9;count>=0;count--){
             portb=count;
             delaY_ms(500);
             if(count==4&&count2==0){
             portc.RC7=0;  //green 2 off after 20s
             portc.RC6=1;  //yellow 2 on
             
             }
      }
             count2--;
     }
             portc.RC6=0;  //yellow 2 off
             portc.RC2=0;  //RED 1 Off
    }
    if(portd.RD5==1 || portd.RD6==0){
             portc.RC5=1;  //RED 2 ON
             portc.RC4=1;  //green 1 on
             count2=1;
             portd=count2;
       for(count=5;count>=0;count--){
             portb=count;
             delaY_ms(500);
             }
             count2--;
     while(count2>=0){
             portd=count2;
      for(count=9;count>=0;count--){
             portb=count;
             delaY_ms(500);
             if(count==4&&count2==0){
             portc.RC4=0;  //green 1 off
             portc.RC3=1;  //yellow 1 on
             }
      }
             count2--;
     }
             portc.RC3=0;  //yellow 1 off
             portc.RC5=0;  //red 2 off
             count2=2;
    }
   }
}