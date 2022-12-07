class rect {  //定义Circle对象
  //属性
  float x;
  float y;
  float s; //边长
  color c; //颜色

  //构造函数，用class声明一个类，需要定义一个与类名名称相同，无返回值类型的构造函数。在类被实例化为对象时自动调用。 
  rect(float x_, float y_,float s_, color c_) {
    x = x_;
    y = y_;
    s = s_;
    c = c_;
  }

  //行为/方法
  void drawrect() {  //画方块
      noStroke();      //不画线条
      rectMode(CORNER);
      fill(img.pixels[c]);
      rect(x,y,s,s);
   }

}
