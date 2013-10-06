class MovableElement {
  private int x;
  private int y;
  private float degree;
  private Element element;
  
  public MovableElement(Element element) {
    this.element = element;
  }
  
  public void moveTo(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public void rotate(degree) {
    this.degree += degree;
  }
  
  public void draw() {
    pushMatrix();
    rotate(degree);
    translate(x,y);
    element.draw();
    popMatrix();
  }
}
  
