class DisplayScene extends Scene {

  private String[] nameArray;
  private Permutation permutation;
  private int arrayLength;
  private int maxStrLength = 0;
  private String format;

  public DisplayScene(String[] arr, Permutation p) {
    super();
    this.arrayLength = arr.length;
    this.nameArray = new String [this.arrayLength];
    for (int i = 0; i < this.arrayLength; i++) {
      this.nameArray[i] = new String(arr[i]);
      if (this.maxStrLength < this.nameArray[i].length()) {
        this.maxStrLength = this.nameArray[i].length();
      }
    }
    this.format = "%" + this.maxStrLength + "s";
    this.permutation = p.copy();
  }

  void setup() {
    String message = "";
    for (int i = 0; i < this.arrayLength; i++) {
      message += String.format(this.format, this.nameArray[i]);
      message += " => ";
      message += this.permutation.getImage(i);
      message += "\n";
    }
    message += "\n";
    message += "Press enter to shuffle.";
    cl.update(message);
  }

  void keyPressed() {
    if (key == ENTER) {
      Permutation shuffleFactor = Permutation.getRandomPermutation(this.arrayLength);
      this.permutation = Permutation.product(this.permutation, shuffleFactor);
      String message = "";
      for (int i = 0; i < this.arrayLength; i++) {
        message += String.format(this.format, this.nameArray[i]);
        message += " => ";
        message += this.permutation.getImage(i);
        message += "\n";
      }
      message += "\n";
      message += "Press enter to shuffle.";
      cl.update(message);
    }
  }
}
