class Rect { 
  
  float x1;
  float y1;
  float x2;
  float y2;
  color c;
 

  
  Rect(float x1_, float y1_, float x2_,float y2_, color c_) {
    x1 = x1_;
    y1 = y1_;
    x2 = x2_;
    y2 = y2_;
    c = c_;
  }

 
  void drawRect() {  
     
      noStroke();
      fill(c);       
      rectMode(CORNER);
      rect(x1,y1,x2,y2);
   
  }

 
   
}
