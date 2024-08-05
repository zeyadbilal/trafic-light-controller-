#line 1 "F:/files/zeyad.em.C/final proj/code/traficl ight.c"
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
 portc.RC2=1;
 portc.RC7=1;
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
 portc.RC7=0;
 portc.RC6=1;

 }
 }
 count2--;
 }
 portc.RC6=0;
 portc.RC2=0;
 }
 if(portd.RD5==1 || portd.RD6==0){
 portc.RC5=1;
 portc.RC4=1;
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
 portc.RC4=0;
 portc.RC3=1;
 }
 }
 count2--;
 }
 portc.RC3=0;
 portc.RC5=0;
 count2=2;
 }
 }
}
