class ShipManager extends SceneManager {
  public void addShip(Ship ship) {
    addAnimation(ship);
    addElement(ship);
  }
  
  public void removeShip(Ship ship) {
    removeAnimation(ship);
    removeElement(ship);
  }
}
