class RenameScene extends Scene {

  private String[] nameArray;
  private int selected;
  private String name;

  public RenameScene(String[] arr, int cursor) {
    super();
    this.nameArray = arr;
    this.selected = cursor;
    this.name = arr[cursor];
  }

  void setup() {
    String message = "";
    message += "Enter the changed name of " + this.nameArray[this.selected] + "\n";
    message += "\n";
    message += "\n";
    message += this.name + '_';
    cl.update(message);
  }

  void keyPressed() {
    String message = "Enter the changed name of " + this.nameArray[this.selected] + "\n";

    if (key == BACKSPACE) {
      if (this.name.length() > 0) {
        this.name = this.name.substring(0, this.name.length()-1);
      }
    } else if (key == ENTER) {
      if (this.name.length() <= 0) {
        message += "Error: entered name length is zero";
      } else {
        this.nameArray[this.selected] = this.name;
        sceneAdministrator.set("SELECT_NAME", new SelectNameScene(this.nameArray));
        sceneAdministrator.changeScene("SELECT_NAME");
        return;
      }
    } else if (33 <= int(key) && int(key) <= 125) {
      this.name += key;
    }

    message += "\n";
    message += "\n";

    cl.update(message + this.name + '_');
  }
}
