class Square {
  private int x;
  private int y;
  private int a;
  
  public Square(int x, int y, int a) {
    this.x = x;
    this.y = y;
    this.a = a;
  }
  
  public void moveTo(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public void draw() {
    rect(x,y,a,a);
  }
}
