int num = 36;       
Rect[] cls;        

void setup() {
  size(800, 800);
  float x1=0,y1=0,x2=0,y2=0;
 

  
  cls = new Rect[num];
  
  for (int i = 0; i < 8; i ++) {  
    x1 = random(3,650);               
    y1 = random(3,650);
    x2 = random(57,147);      
    y2 = random(57,147);     
    
    color c = color(175,11,11);  
    cls[i] = new Rect(x1, y1, x2, y2, c);            
  }
  
  for (int i = 8; i < 16; i ++) { 
    y1 = random(3,650);
    x2 = random(57,147);      
    y2 = random(57,147);     
    color c = color(14,36,155);  
    cls[i] = new Rect(x1, y1, x2,y2, c);             
  }
  
  for (int i = 16; i< 36; i ++) {  
    float k = random(0,2);
    x1 = random(3,650);               
    y1 = random(3,650);
    if(k>1){
      x2 = random(7,10);      
      y2 = random(80,100);
      
    }
    else{
      x2 = random(80,100);      
      y2 = random(7,10);     
    
    }
    
    
    color c = color(0);  
    cls[i] = new Rect(x1, y1, x2, y2, c); 
    
  }
  
   
}

void draw() {    
  background(255);  
  for (int i = 0; i<36; i ++) {  
    cls[i].drawRect();                  
  }
}
