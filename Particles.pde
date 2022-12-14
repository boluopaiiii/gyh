class Particle {
  float x;
  float y;
  float d;
  float m;
  float xSpeed;
  float ySpeed;

  Particle(float x_, float y_, float d_,float m_) {
    x = x_;
    y = y_;
    d = d_;
    m = m_;
    xSpeed = random(-2, 2);
    ySpeed = random(-2, 2);
  }

  //行为behavior
  void display() {
    if(m==1){
      fill(250,187,187,100);
      noStroke();
      ellipse(x,y,d,d);
    }
    if(m==2){
      fill(53,164,175,100);
      noStroke();
      rectMode(CENTER);
      rect(x, y, d, d);
    }
    if(m==3){
      fill(156,183,234,100);
      noStroke();
      rectMode(CENTER);
      rect(x, y, d, d*2);
    }
    if(m==4){
      fill(130,226,242,100);
      noStroke();
      ellipse(x,y,d*2,d);
    }
  }

  void move() {
    x = x + xSpeed;
    y += ySpeed;
  }

  void edgeProcess() {
   

    if (x >= width - d/2) {
      x = width - d/2;
      xSpeed *= -1;
    }
    if (x <= d/2) {
      x = d/2;
      xSpeed *= -1;
    }

    if (y >= height - d/2) {
      y = height - d/2;
      ySpeed *= -1;
    }
    if (y <= d/2) {
      y = d/2;
      ySpeed *= -1;
    }
  }
}
