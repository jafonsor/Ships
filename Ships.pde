import java.util.List;
import java.util.LinkedList;

List<Integer> a = new LinkedList<Integer>();
Square sq = new Square(5,5,50);

public void setup() {
  size(400,400);
  
}

public void draw() {
  background(100,100,100);
  sq.moveTo(mouseX,mouseY);
  pushMatrix();
  rotate(radians(45));
  sq.draw();
  popMatrix();
}
