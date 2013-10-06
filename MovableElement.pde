class MovableElement {
  private int x = 0;
  private int y = 0;
  private float degree = 0;
  private Element element = null;
  
  public MovableElement(Element element) {
    this.element = element;
  }
  
  public void moveTo(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public void rotate(float degree) {
    this.degree += degree;
  }
  
  public void draw() {
    pushMatrix();
    translate(x,y);
    rotate(degree);
    
    element.draw();
    popMatrix();
  }
}
  
