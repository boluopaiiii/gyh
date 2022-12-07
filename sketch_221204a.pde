PImage img;
int s;
int xnum,ynum,num;
rect[] cls;
void setup() {
  size(640,440);
  background(255);
  img = loadImage("f39cf714941b9c02904a1cc3063ba61.jpg");
  s=4;
  xnum=img.height/s;  //x方向小方块的个数
  ynum=img.width/s;   //y方向小方块的个数
  num= xnum*ynum;     // 小方块的总的个数
  cls = new rect[num]; //初始化cls这个数组，注意这时候数组里面的数据是随机的，没有意义的。
  int k=0;
  for (int y = 0; y < img.height; y+=s ) {
    for (int x = 0; x < img.width; x+=s) {
      int loc = x + (y * img.width);
      cls[k] = new rect(x,y,s,loc);   //对数组中的每一个元素进行独立的赋值，这里，程序初始的时候每个小方块的大小位置和颜色就确定了
      k++;
      }
    }
}

void draw() {
  int k=0;                    //在所有像素中随机选择点
  for(int i=0;i<num/80;i++){  //控制i的范围，就能控制速度
    k=(int)random(0,num);    //在所有像素中随机选择点
    cls[k].drawrect();
  }
}
