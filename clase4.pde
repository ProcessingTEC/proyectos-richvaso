//Tomas de Camino Beck
// Editado por Gustavo Richmond

import processing.serial.*;
Serial port;
String data;
float[] val = new float[2];


void setup() {
  println(Serial.list());
  //Seleccionar puerto de la lista
  port = new Serial(this, "COM7", 9600);
  port.bufferUntil('\n');  //clear the buffer
  size(600, 600);
  background(255);
}

void draw() {
  
  
  fill(val[0],val[1],255,200);
  ellipse(width/2, height/2, map(val[0],0,300,0,200), map(val[0],0,300,0,200));
}

void serialEvent(Serial port) {
  data = port.readString();
  //String[] list = split(data, ',');
  val[0]=float(data);
  val[1]=float(data);
  
}