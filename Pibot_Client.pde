// Example 19-2: Simple therapy client

// Import the net libraries
import processing.net.*;
// Declare a client
Client client;
String typing ="";
String controls = " W - forward \n A - left \n S - backard \n D - right";

void setup() {
  size(400, 200);
  frameRate(1000);
  client = new Client(this, "192.168.1.173", 7777);
}

void draw() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(20);
  text("Welcome to RCI version 0.1!", width/2, 60);
  textAlign(LEFT);
  textSize(12);
  text(controls, 20, 90);
  if(keyPressed == false)
  {
   client.write("0 \n");
  }
}

// Simple user keyboard input
void keyPressed() {  
    typing = typing + key;
    if(key == 'w' || key == 'a' || key == 's' || key == 'd')
    {
    client.write(typing + '\n'); 
    }
    typing = "";
}