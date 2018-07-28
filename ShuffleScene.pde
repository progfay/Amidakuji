/**
 * Scene of shuffle Amidakuji's result
 */
class ShuffleScene extends Scene {

  private String[] nameArray;
  private Permutation permutation;
  private int arrayLength;


  public ShuffleScene(String[] arr, Permutation p) {
    super();
    
    this.arrayLength = arr.length;
    this.nameArray = new String [this.arrayLength];
    
    for (int i = 0; i < this.arrayLength; i++) {
      this.nameArray[i] = new String(arr[i]);
    }
    
    this.permutation = p.copy();
  }


  void draw() {
    Permutation shuffleFactor = Permutation.getRandomPermutation(this.arrayLength);
    this.permutation = Permutation.product(this.permutation, shuffleFactor);
    
    sceneAdministrator.set("DISPLAY", new DisplayScene(this.nameArray, this.permutation));
    sceneAdministrator.changeScene("DISPLAY");
  }
}
