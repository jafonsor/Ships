class Ship extends MovableElement implements Animation {
  private float vx = 1;
  private float vy = 1;
  private float speed = 1.5;
  
  public Ship(Element element) {
    super(element);
    vx = 0;
    vy = 1;
  }
  
  @Override
  public void turn(float angle) {
    super.turn(angle);
    vx = sin(-getAngle());
    vy = cos(-getAngle());
  }
  
  public void animate(int timePassed) {
    System.out.println("animate: " + vx + "," + vy);
    move(vx*timePassed*speed, vy*timePassed*speed);
  }
}
