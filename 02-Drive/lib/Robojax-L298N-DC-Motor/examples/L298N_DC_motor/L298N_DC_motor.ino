/*
 * Library Example for L298N Module to control DC motors
 * 
 * This code is to control single motor. For two motor control, please open L298N_DC_2_Motors
 * Watch video instructions for this code:  https://youtu.be/2JTMqURJTwg
 * 
 * Written by Ahmad Shamshiri on Dec 24, 2019 
 * in Ajax, Ontario, Canada. www.robojax.com
 * 
  Need wiring diagram from this code: Purchase My course on Udemy.com http://robojax.com/L/?id=62
 * 
 * Watch video instruction for this code: https://youtu.be/wn5D7j1ybxY
 * 
 * Get this code and other Arduino codes from Robojax.com
Learn Arduino step by step in structured course with all material, wiring diagram and library
all in once place. Purchase My course on Udemy.com http://robojax.com/L/?id=62

If you found this tutorial helpful, please support me so I can continue creating 
content like this. You can support me on Patreon http://robojax.com/L/?id=63

or make donation using PayPal http://robojax.com/L/?id=64

 *  * This code is "AS IS" without warranty or liability. Free to be used as long as you keep this note intact.* 
 * This code has been download from Robojax.com
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

#include <Robojax_L298N_DC_motor.h>
// motor 1 settings

#define ENA 19 // this pin must be PWM enabled pin if Arduino board is used
#define IN1 18
#define IN2 5

const int CCW = 2; // do not change
const int CW  = 1; // do not change

#define motor1 1 // do not change

//Robojax_L298N_DC_motor motor(IN1, IN2, ENA);	
// Watch video instruciton for this line: https://youtu.be/2JTMqURJTwg
Robojax_L298N_DC_motor motor(IN1, IN2, ENA, true);	



void setup() {
  Serial.begin(115200);
  motor.begin();
  //L298N DC Motor by Robojax.com

}

void loop() {
  
 // motor.demo(1);
  motor.rotate(motor1, 60, CW);//run motor1 at 60% speed in CW direction
 
  delay(3000);

  motor.brake(1);
  delay(2000);


  motor.rotate(motor1, 100, CW);//run motor1 at 60% speed in CW direction
  delay(3000);

  motor.brake(1);
  delay(2000);  

  for(int i=0; i<=100; i++)
  {
    motor.rotate(motor1, i, CW);// turn motor1 with i% speed in CW direction (whatever is i) 
    delay(100);
  }
  delay(2000);
  
  motor.brake(1);
  delay(2000);  

  motor.rotate(motor1, 70, CCW);//run motor1 at 70% speed in CCW direction
  delay(4000);

  motor.brake(1);
  delay(2000);    
  // Robojax L298N Library. Watch video instruciton https://youtu.be/2JTMqURJTwg
}
