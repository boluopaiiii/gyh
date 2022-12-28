class Slider {
  int posX, posY;
  float limitMin, limitMax, span, val;
  String label;
  int id;
  boolean flagShowPercent;
  
  PImage[] sliderImgs;
  PImage base, bar, handle, tip; 
  Slider(PImage[] sliderImgs_, String sliderLabel, int x, int y, int sliderID) {
    sliderImgs = sliderImgs_;
    base = sliderImgs[0];
    bar = sliderImgs[1];
    handle = sliderImgs[2];
    tip = sliderImgs[3];
    posX = x;
    posY = y;
    id = sliderID; 
    setLimits(0.0, 1.0); 
    val = 0.5; 
    label = sliderLabel + id; 
    flagShowPercent = true; 
  }
  
  boolean mouseOver() {

    return ( mouseX > posX && mouseX < posX + base.width &&
             mouseY > posY && mouseY < posY + base.height );
  }
 
  void setLimits(float sliderMin, float sliderMax) {
    limitMin = sliderMin;
    limitMax = sliderMax;
    span = limitMax - limitMin;
  }
 
  void check() {
    if (activeSlider == id) 
      val = constrain((limitMax - limitMin) * (mouseX - posX - 10) / bar.width + limitMin, limitMin, limitMax);

      pushMatrix();
      translate(posX, posY);
      image(base, 0, 0); 
      
      textSize(11);
      textAlign(LEFT, CENTER);
      text(label, 12, 12);
      
     
      
      float handleX = (val - limitMin)/(limitMax - limitMin)*bar.width;
      image(bar, 10, 30, handleX, bar.height); 
      
      if (activeSlider == id) { 
        textSize(9);
        textAlign(CENTER, CENTER);
        image(tip, handleX - 9, 4);
        if (flagShowPercent) text(int(val*100)+"%", handleX + 12, 12);
        else text(int(val), handleX + 12, 12);
      }
    popMatrix();
  }
}
