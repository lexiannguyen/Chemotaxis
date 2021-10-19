 //declare bacteria variables here 
Bacteria [] colony = new Bacteria[10];
  
 int mx = 0;
 int my = 0;
 void setup()   
 {     
   //initialize bacteria variables here
   for(int i = 0; i < colony.length;i++){
    colony[i] = new Bacteria();
   }
   size(400, 400);
 }   
 void draw()   
 { 
   //ellipse(mx, my, 20, 20);
   background(51);
   // make an array of bacteria
   //move and show the bacteria   
   for(int i = 0; i<colony.length;i++){
    colony[i].move();
    colony[i].show();
    
   }
 }  
 void mousePressed() {
  mx = mouseX;
  my = mouseY;
 }

 class Bacteria    
 {     
   //(x, y, color)
   int myX, myY, col;
   //define variables
   Bacteria(){
     myX = (int)(Math.random()*401);
     myY = (int)(Math.random()*401);
     col = 255;
   }
   //show
   void show(){
     /*int[] colors = { };
     int col = (colors[(int)(Math.random()*colors.length)]);
     fill(color(col)); */
     
     ellipse(myX, myY, 50, 50);
   }
   //move
   void move() {
     myX = myX + (int)(Math.random()*5-3);
     myY = myY + (int)(Math.random()*5-3);
   }
 } 
