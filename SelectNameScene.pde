/**
 * Scene of select name that user want to rename
 * 
 * ↑: move cursor to up 1
 * ↓: move cursor to down 1
 * →: rename current pointed name
 * Enter: start Amidakuji
 */
class SelectNameScene extends Scene {

  public String[] nameArray;
  private int arrayLength = 0;
  private int cursor = 0;


  public SelectNameScene(int num) {
    super();

    this.nameArray = new String [num];
    this.arrayLength = num;

    for (int i = 0; i < num; i++) {
      this.nameArray[i] = i + "";
    }
  }


  public SelectNameScene(String[] arr) {
    super();

    this.arrayLength = arr.length;
    this.nameArray = new String [this.arrayLength];

    for (int i = 0; i < this.arrayLength; i++) {
      this.nameArray[i] = new String(arr[i]);
    }
  }


  void setup() {
    String message = "";
    message += "Select the member to rename...\n";
    message += "↑ ↓: select\n";
    message += "→   : rename\n";
    message += "Enter: start Amidakuji\n";
    message += "\n";

    for (int i = 0; i < this.arrayLength; i++) {
      if (i == this.cursor) {
        message += "> ";
      } else {
        message += "  ";
      }
      message += this.nameArray[i] + "\n";
    }

    cl.update(message);
  }


  void keyPressed() {
    String message = "";
    message += "Select the member to rename...\n";
    message += "↑ ↓: select\n";
    message += "→   : rename\n";
    message += "Enter: start Amidakuji\n";

    if (keyCode == UP) {
      this.cursor--;
      if (this.cursor < 0) {
        this.cursor += this.arrayLength;
      }
    } else if (keyCode == DOWN) {
      this.cursor++;
      if (this.cursor >= this.arrayLength) {
        this.cursor -= this.arrayLength;
      }
    } else if (keyCode == RIGHT) {
      sceneAdministrator.set("RENAME", new RenameScene(this.nameArray, this.cursor));
      sceneAdministrator.changeScene("RENAME");
      return;
    } else if (key == ENTER) {
      sceneAdministrator.set("CALCULATE", new CalcScene(this.nameArray));
      sceneAdministrator.changeScene("CALCULATE");
      return;
    }

    message += "\n";

    for (int i = 0; i < this.arrayLength; i++) {
      if (i == this.cursor) {
        message += "> ";
      } else {
        message += "  ";
      }
      message += this.nameArray[i] + "\n";
    }

    cl.update(message);
  }
}
