/* The game loop */
GameLoop game;

/* Background image */
PImage bg;
PImage bgover;
import processing.serial.*;

Serial myPort; 


final String serialPort = "COM9"; 


float [] q = new float [4];


void setup(){
   /* Set the size of the screen */
  size(1280, 720);

  /* 
     * Set space-bck image as background 
     * The image must be the same size as the screen
     */

  myPort = new Serial(this, serialPort, 115200);  
  delay(100);
  myPort.clear();
  myPort.write("1");

  bg = loadImage("space-bck.png");
  bgover = loadImage("gameover.jpg");

  game = new GameLoop(30);
  
}
float decodeFloat(String inString) {
  byte [] inData = new byte[4];
  
  if(inString.length() == 8) {
    inData[0] = (byte) unhex(inString.substring(0, 2));
    inData[1] = (byte) unhex(inString.substring(2, 4));
    inData[2] = (byte) unhex(inString.substring(4, 6));
    inData[3] = (byte) unhex(inString.substring(6, 8));
  }
      
  int intbits = (inData[3] << 24) | ((inData[2] & 0xff) << 16) | ((inData[1] & 0xff) << 8) | (inData[0] & 0xff);
  return Float.intBitsToFloat(intbits);
}


void readQ() {
  if(myPort.available() >= 18) {
    String inputString = myPort.readStringUntil('\n');
    //print(inputString);
    if (inputString != null && inputString.length() > 0) {
      String [] inputStringArr = split(inputString, ",");
      if(inputStringArr.length >= 5) { // q1,q2,q3,q4,\r\n so we have 5 elements
        q[0] = decodeFloat(inputStringArr[0]);
        q[1] = decodeFloat(inputStringArr[1]);
        q[2] = decodeFloat(inputStringArr[2]);
        q[3] = decodeFloat(inputStringArr[3]);
      }
    }
  }
}

void draw(){
    if(!game.checkCollision()){
      readQ();  
      game.move();
        background(bg);
        game.renewShape();
        game.moveNave(q[0]*1500,680);
   
    } else {
        background(bgover);
}
    
    game.draw();
}


