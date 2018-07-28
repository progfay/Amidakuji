/**
 * CommandLine is pseudo CLI.
 * 
 * Output display on Processing Console.
 * Using update method, clear console and display text.
 */
class CommandLine {
  final String CLEAR_LINE = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";

  public CommandLine() {
    super();
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
