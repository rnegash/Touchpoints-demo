class spots {
  float _x, _y, _s;
  public int id;
  int _pid;
  //Konstruktor; xpos, ypos, storlek och id för spotsen
  spots(float x, float y, int s, int id) {
    _x=x;
    _y=y;
    _s=s;
    // this._pid=id;
    this.id=id;
  }
  color  f=100;//färg
  void display() {
    stroke(255);
    fill(f);
    ellipse(_x, _y, _s, _s);
  }

  /*
   kolla om något id är nertryckt. Vill fortsätta lägga till id'n till sum sålänge mousPressed==true och
   id't inte redan har blivit tillagt under denna mousepressed
   
   när sum sedan blir samma som sumOfPoints, kan man säga att man har klarat tasken
   */
  //public int sum; //Räkna ihop summan av id'n som har blivit nertryckta
  int pid=0;//senaste nertryckta id't
  boolean added=false;//kolla om id't har blivit tillagt

  boolean checkTouch() {
    if (mousePressed) {
      if (mousePressed&&dist(_x, _y, mouseX, mouseY)<_s/2) {
        if (added==false) {
          sum+=id;
          added=true;
          f=255;
        }
        else {
          //added=false;
          //f=100;
          //sum+=0;
        }
        print("id = "+id);
        //print(" pid = "+_pid);
        println(" sum = "+sum);
      }
    }
    else {
      f=100;
      added=false;
      //pid=0;
      sum=0;
    }


    if (added) {
      return true;
    }
    else {
      return false;
    }
  }
}



/*
class spots {
 float _x, _y, _s;
 public int id;
 //Konstruktor; xpos, ypos, storlek och id för spotsen
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
 
 
 kolla om något id är nertryckt. Vill fortsätta lägga till id'n till sum sålänge mousPressed==true och
 id't inte redan har blivit tillagt under denna mousepressed
 
 när sum sedan blir samma som sumOfPoints, kan man säga att man har klarat tasken
 
 int sum=0; //Räkna ihop summan av id'n som har blivit nertryckta
 int pid=0;//senaste nertryckta id't
 boolean added=false;//kolla om id't har blivit tillagt
 
 void checkTouch() {
 if (mousePressed) {
 if (mousePressed&&dist(_x, _y, mouseX, mouseY)<_s/2) {
 
 if (pid!=id) {
 added=false;
 pid=id;
 }
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
 pid=0;
 sum=0;
 }
 }
 }
 */
