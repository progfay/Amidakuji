/**
 * Amidakuji application run on pseudo CLI <br>
 * All input is entered by user keyboard, and all output display on Console Window. <br>
 * Please keep active the executed application window while entering.
 */

/**
 * Using Permutatin API <br>
 * Please see: https://github.com/progfay/Permutation <br>
 * docs: https://progfay.github.io/Permutation/docs/index.html
 */

/**
 * Using sceneManager Add-on <br>
 * Please see: https://github.com/progfay/sceneManager
 */
SceneAdministrator sceneAdministrator = new SceneAdministrator();

CommandLine cl = new CommandLine();

void settings() {
  size(100, 100);
  sceneAdministrator.set("SET_MEMBER", new SetMemberScene());
  sceneAdministrator.changeScene("SET_MEMBER");
}
