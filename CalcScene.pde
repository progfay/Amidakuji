/**
 * Scene of calculate Amidakuji's mapping
 */
class CalcScene extends Scene {

  private String[] nameArray;

  public CalcScene(String[] arr) {
    super();
    this.nameArray = new String [arr.length];
    for (int i = 0; i < this.nameArray.length; i++) {
      this.nameArray[i] = new String(arr[i]);
    }
  }

  void setup() {
    cl.update("Now calculating...");
  }

  void draw() {
    Permutation permutation = Permutation.getRandomPermutation(this.nameArray.length);
    sceneAdministrator.set("DISPLAY", new DisplayScene(this.nameArray, permutation));
    sceneAdministrator.changeScene("DISPLAY");
  }
}
