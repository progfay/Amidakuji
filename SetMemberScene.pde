/**
 * Scene of set number of member
 *
 * User can only use number key and backspace on text input
 */
class SetMemberScene extends Scene {

  String num;

  void setup() {
    this.num = "";
    cl.update("Enter the number of member... (1 < n < 13)\n"
      + "You can use number key, backspace, and enter.\n"
      + "\n"
      + num + '_');
  }

  void keyPressed() {
    String message = "Enter the number of member... (1 < n < 13)\n";

    if (key == BACKSPACE) {
      if (num.length() > 0) {
        this.num = this.num.substring(0, this.num.length()-1);
        message += "You can use number key, backspace, and enter.\n";
      }
    } else if (key == ENTER) {
      if (this.num.length() > 0) {
        int input = Integer.parseInt(this.num);
        if (input < 2) {
          message += "Error: entered number is less than 2\n";
        } else if (input > 12) {
          message += "Error: entered number is more than 13\n";
        } else {
          sceneAdministrator.set("SELECT_NAME", new SelectNameScene(input));
          sceneAdministrator.changeScene("SELECT_NAME");
          return;
        }
      } else {
        message += "Error: entered number length is zero\n";
      }
    } else if (48 <= int(key) && int(key) <= 57) {
      this.num += key;
      message += "You can use number key, backspace, and enter.\n";
    } else {
      message += "You can use number key, backspace, and enter.\n";
    }

    message += "\n";

    cl.update(message + num + '_');
  }
}
