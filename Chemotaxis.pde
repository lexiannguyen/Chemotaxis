 //declare bacteria variables here 
 Bacteria[] colony;
 void setup()   
 {     
   //initialize bacteria variables here
   
   size(400, 400);
 }   
 void draw()   
 {    
   // make an array of bacteria
   colony = new Bacteria[6];
   for(int i = 0; i < colony.length;i++){
    colony[i] = new Bacteria();
   }
   //move and show the bacteria   

   for(int i = 0; i<colony.length;i++){
    //colony[i].move();
    colony[i].show();
    
   }
 }  
 void mousePressed(){
  redraw(); 
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
     //int[] colors = { };
     //int col = (colors[(int)(Math.random()*colors.length)]);
     //fill(color(col));
     ellipse(myX, myY, 50, 50);
   }
   //move
   void move() {
     myX = myX + (int)(Math.random()*5-3);
     myY = myY + (int)(Math.random()*5-3);
   }
 } 
