class spots {
  float _x, _y, _s;
  public int id;
  spots(float x, float y, int s, int id) {
    _x=x;
    _y=y;
    _s=s;
    this.id=id;
  }

  void display() {
    stroke(255);
    fill(255);
    ellipse(_x, _y, _s, _s);
  }
  int sum=0;
  int pid=-1;
  boolean added=false;
  void checkTouch() {
    if (mousePressed) {
      if (mousePressed&&dist(_x, _y, mouseX, mouseY)<_s/2) {

        if (pid!=id) added=false;

        if (added==false) {
          sum+=id;
          pid=id;
          added=true;
        }
        else {
          sum+=0;
        }
        print("pid = "+pid);
        print(" id = "+id);
        println(" sum = "+sum);
      }
    }
    else {
      pid=-1;
      sum=0;
    }
  }
}

