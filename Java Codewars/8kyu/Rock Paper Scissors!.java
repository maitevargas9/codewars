/*
Description

Rock Paper Scissors

Let's play! You have to return which player won! In case of a draw return Draw!.

Examples(Input1, Input2 --> Output)
"scissors", "paper" --> "Player 1 won!"
"scissors", "rock" --> "Player 2 won!"
"paper", "paper" --> "Draw!"
*/

public class Kata {

  public static String rps(String p1, String p2) {
    if (p1 == p2) {
      return "Draw!";
    }
    int p = (p1 + p2).equals("scissorspaper") ||
      (p1 + p2).equals("rockscissors") ||
      (p1 + p2).equals("paperrock")
      ? 1
      : 2;
    return "Player " + p + " won!";
  }
}
