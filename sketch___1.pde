PImage[] sliderPix = new PImage[4]; 
int activeSlider = -1; 
Slider attraction, repulsion, repulsionDistance, count, friction, limiter; 
int particleMax = 200;
int colorMax = 100;
PImage img;
float s,r,g,b;

void setup() {
  size(800, 533);
  
  sliderPix[0] = loadImage("base.png");
  sliderPix[1] = loadImage("bar.png");
  sliderPix[2] = loadImage("handle.png");
  sliderPix[3] = loadImage("tip.png");

  setupSliders(); 
}

void draw() {
  noStroke();
  img = loadImage("IMG_0252.JPG");
  
  background(255);
  s = map(count.val, 10, 200, 1, 100);  
  for (int y = 0; y < img.height; y+=s ) {
    for (int x = 0; x < img.width; x+=s) {
    int loc = x + (y * img.width);
    float r = red(img.pixels[loc]); 
    r=r+(255-r)*(repulsion.val/100);
    float g = green(img.pixels[loc]);
    g=g+(255-g)*(repulsionDistance.val/100);
    float b = blue(img.pixels[loc]); 
    b=b+(255-b)*(friction.val/100);
    fill(color(r,g,b));
    rect(x, y, s, s);
    }
  }
  if (mousePressed){  
      save("exp6.jpg");  
  }
  fill(255);
  count.check();
  repulsion.check();
  repulsionDistance.check();
  friction.check();


}

void mouseReleased() {
  activeSlider = -1; 
}


void mousePressed() {
  
  if (count.mouseOver()) activeSlider = count.id;
  if (repulsion.mouseOver()) activeSlider = repulsion.id;
  if (repulsionDistance.mouseOver()) activeSlider = repulsionDistance.id;
  if (friction.mouseOver()) activeSlider = friction.id;

}

void setupSliders() {
  
  int basePositionX = 10;
  int basePositionY = 15;

  count = new Slider(sliderPix, "Zoom in/out", basePositionX, basePositionY, 0);// 
  count.flagShowPercent = false;
  count.setLimits(10, particleMax);
  count.val = 30;
  basePositionY += sliderPix[0].height + 15;

  repulsion = new Slider(sliderPix, "Change red", basePositionX, basePositionY, 1);// 
  repulsion.flagShowPercent = false;
  repulsion.setLimits(0, colorMax);
  repulsion.val = 0;  
  basePositionY += sliderPix[0].height + 15;

  repulsionDistance = new Slider(sliderPix, "Change green", basePositionX, basePositionY, 2);//
  repulsionDistance.flagShowPercent = false;
  repulsionDistance.setLimits(0, colorMax);
  repulsionDistance.val = 0;
  basePositionY += sliderPix[0].height + 15;

  friction = new Slider(sliderPix, "Change blue", basePositionX, basePositionY, 3);//
  friction.flagShowPercent = false;
  friction.setLimits(0, colorMax);
  friction.val = 0;
  basePositionY += sliderPix[0].height + 15;


}
