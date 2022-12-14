
ArrayList<Particle> pts;
int particleNum = 100;

void setup() {
  size(800, 800);
  background(255);

  initiate();
}

void initiate() {
  
  float imod,im=0;
  pts = new ArrayList<Particle>();

  for (int i  = 0; i < particleNum; i ++) {
     imod = random(0,4);
     if(imod<1){
       im=1;
     }
     if(imod>=1 && imod<2){
       im=2;
     }
    if(imod>=2 && imod<=3){
       im=3;
    }
    if(imod>=3 && imod<=4){
       im=4;
    }

    Particle p = new Particle(random(width), random(height), random(10, 30),im);
    pts.add(p);
  }
}

void draw() {
  background(255);
  //pt.display();
  //pt.move();
  
  for(int i = 0 ; i <pts.size(); i ++){
    pts.get(i).display();
    pts.get(i).move();
    pts.get(i).edgeProcess();
  }
}

void keyPressed() {
  if (key == 'r') {
    initiate();
  }
}
