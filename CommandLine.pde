/**
 * CommandLine is pseudo CLI.
 * 
 * Output display on Processing Console.
 * Using update method, clear console and display text.
 */
class CommandLine {
  String CLEAR_LINE = "";

  public CommandLine() {
    super();
    for (int i = 0; i < 20; i++) {
      CLEAR_LINE += "\n";
    }
  }

  void update(String str) {
    println(CLEAR_LINE);
    println(str);
  }

  void update(Object obj) {
    println(CLEAR_LINE);
    println(obj);
  }
}
