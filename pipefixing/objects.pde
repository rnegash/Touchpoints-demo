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
  void checkTouch() {
    if (mousePressed) {
      if (mousePressed&&dist(_x, _y, mouseX, mouseY)<_s/2) {
        sum+=id;
        println(id+" "+sum);
      }
    }
    else {
      sum=0;
    }
  }
}

