int nur;
int counter=1;
ArrayList object;
public int sumOfPoints; //Räknar ihop summan av id´na som har assignats till spotsen
void setup() {
  size(800, 600);
  object = new ArrayList();
  //lägg till alla spots
  for (float x=350;x<400;x+=50) {
    for (float y=50;y<450;y+=50) {
      object.add(new spots(x+random(-50, 50), y, 50, counter++));
      sumOfPoints+=counter;
    }
  }
  sumOfPoints-=counter;
  println(sumOfPoints);
}


void draw() {
  background(10);
  //Loopa igenom spotsen och kör funktionerna för att visa och kolla touch
  for (int i =0;i<object.size(); i++) {
    spots objectal = (spots) object.get(i);
    objectal.display();
    objectal.checkTouch();
  }
}
/*
void spot(float x, float y, float s, int nr) {
 int counter=0;
 ellipseMode(CENTER);
 ellipse(x, y, s, s);
 if (mousePressed&&dist(x, y, mouseX, mouseY)<30) {
 println(nr);
 }
 }
 */
