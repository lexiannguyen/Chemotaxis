 //declare bacteria variables here 
Bacteria [] colony = new Bacteria[20];
  

 void setup()   
 {     
   //initialize bacteria variables here
   for(int i = 0; i < colony.length;i++){
    colony[i] = new Bacteria();
   }
   size(500, 500);
 }   
 void draw()   
 { 
   //ellipse(mx, my, 20, 20);
   background(51);
   fill(255, 123, 46);
   ellipse(mouseX, mouseY, 80, 80);
   fill(0, 0, 0);
   triangle(mouseX-22, mouseY, mouseX-18, mouseY-15, mouseX-15, mouseY);
   triangle(mouseX+22, mouseY, mouseX+18, mouseY-15, mouseX+15, mouseY);
   ellipse(mouseX, mouseY+ 20, 20, 20);
   // make an array of bacteria
   //move and show the bacteria   
   for(int i = 0; i<colony.length;i++){
    colony[i].move();
    //colony[i].eaten();
    colony[i].getCloser();
    colony[i].show();
    
   }
 }  
 void mousePressed() {
 
 }

 class Bacteria    
 {     
   //(x, y, color)
   int myX, myY, col;
   //define variables
   Bacteria(){
     myX = (int)(Math.random()*501);
     myY = (int)(Math.random()*501);
     col = 255;
   }
   //show
   void show(){
     /*int[] colors = { };
     int col = (colors[(int)(Math.random()*colors.length)]);
     fill(color(col)); */
     fill(255, 111, 0);
     triangle(myX-25, myY+25, myX, myY-25, myX+25, myY+25);
     fill(255, 222, 77);
     triangle(myX-20, myY+15, myX, myY-25, myX+20, myY+15);
     fill(255, 242, 212);
     triangle(myX-14, myY+3, myX, myY-25, myX+14, myY+3);
     
   }
   //move
   void move() {
     myX = myX + (int)(Math.random()*3-1); //x moves either -1, 0, or 1
     myY = myY + (int)(Math.random()*3-1); //y moves either -1, 0, or 1
    
   }
  /* void eaten() {
    if (dist(mouseX, mouseY, myX, myY) < 20) {
      background(51);
      fill(255, 123, 46);
      ellipse(mouseX, mouseY, 80, 80);
   fill(0, 0, 0);
   triangle(mouseX-22, mouseY, mouseX-18, mouseY-15, mouseX-15, mouseY);
   triangle(mouseX+22, mouseY, mouseX+18, mouseY-15, mouseX+15, mouseY);
   ellipse(mouseX, mouseY+ 20, 20, 20);
      noStroke();
      fill(51);
      triangle(myX-25, myY+25, myX, myY-25, myX+25, myY+25);
    }
   } */
   void getCloser() {
     if(mouseX - myX <= 0 && dist(mouseX, mouseY, myX, myY)<300){ //mouse on left
       myX = myX + (int)(Math.random()*5)-3   //-3, -2, -1, 0, 1, 
   } else if(mouseX - myX > 0 && dist(mouseX, mouseY, myX, myY)<300){ //mouse on right
       myX += (int)(Math.random()*5)-1; //-1, 0, 1, 2, 3
   } else if(mouseY - myY <= 0 && dist(mouseX, mouseY, myX, myY)<300){ // mouse above
        myY = myY + (int)(Math.random()*5)-3; 
   } else if(mouseY - myY > 0 && dist(mouseX, mouseY, myX, myY)<300){ //mouse below
        myY += (int)(Math.random()*5)-1; 
   }
   }
 } 
