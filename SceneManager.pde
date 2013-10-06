class SceneManager {
  private int lastTime;
  private int timePassed = 0;
  private List<Animation> animations = new LinkedList<Animation>();
  private List<Element> elements = new LinkedList<Element>();
  
  public SceneManager() {
    lastTime = millis();
  }
  
  public void addAnimation(Animation animation) {
    animations.add(animation);
  }
  
  public void removeAnimation(Animation animation) {
    animations.remove(animation);
  }
  
  public void addElement(Element element) {
    elements.add(element);
  }
  
  public void removeElement(Element element) {
    elements.remove(element);
  }
  
  public void drawObjects() {
    timePassed = millis() - lastTime;
    lastTime = millis();
    for(Animation anim: animations) {
      anim.animate(timePassed/10);
    }
    for(Element elem: elements) {
      elem.draw();
    }
    
  }
}
