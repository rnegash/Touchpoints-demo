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
    fill(255);
    ellipse(_x, _y, _s, _s);
  }
  void checkTouch() {
    if (mousePressed&&dist(_x, _y, mouseX, mouseY)<30) {
      println(id);
    }
  }
}

