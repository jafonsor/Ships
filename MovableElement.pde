class MovableElement implements Element {
  private float x = 0;
  private float y = 0;
  private float angle = 0;
  private Element element = null;
  
  public MovableElement(Element element) {
    this.element = element;
  }
  
  public float getAngle() { return this.angle; }
  
  public void move(float x, float y) {
    this.x += x;
    this.y += y;
  }
  
  public void moveTo(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public void turn(float angle) {
    this.angle += angle;
  }
  
  public void draw() {
    pushMatrix();
    translate(x,y);
    println(angle);
    rotate(angle);
    element.draw();
    popMatrix();
  }
}
  
