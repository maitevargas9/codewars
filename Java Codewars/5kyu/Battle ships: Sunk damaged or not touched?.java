/*
Description

Task
Your task in the kata is to determine how many boats are sunk damaged and untouched from a set amount of attacks. 
You will need to create a function that takes two arguments, the playing board and the attacks.

Example Game

The board
Boats are placed either horizontally, vertically or diagonally on the board. 0 represents a space not occupied by a 
boat. Digits 1-3 represent boats which vary in length 1-4 spaces long. There will always be at least 1 boat up to a 
maximum of 3 in any one game. Boat sizes and board dimentions will vary from game to game.

Attacks
Attacks are calculated from the bottom left, first the X coordinate then the Y. There will be at least one attack per 
game, and the array will not contain duplicates.
{ {2, 1}, {1, 3}, {4, 2} };
First attack      `[2, 1]` = `3`
Second attack `[1, 3]` = `0`
Third attack     `[4, 2]` = `1`

Function Initialization
int[][] board   = new int[][] {new int[] {0,0,1,0},
                               new int[] {0,0,1,0},
                               new int[] {0,0,1,0}};
int[][] attacks = new int[][] {new int[] {3,1},new int[] {3,2},new int[] {3,3}};
BattleShips.damagedOrSunk(board, attacks);

Scoring
1 point for every whole boat sank.
0.5 points for each boat hit at least once (not including boats that are sunk).
-1 point for each whole boat that was not hit at least once.

Sunk or Damaged
`sunk` = all boats that are sunk
`damaged` = all boats that have been hit at least once but not sunk
`notTouched/not_touched` = all boats that have not been hit at least once

Output
You should return a hash with the following data

Example Game Output
In our above example..
First attack: `boat 3` was damaged, which increases the `points` by `0.5`
Second attack: miss nothing happens
Third attack: `boat 1` was damaged, which increases the `points` by `0.5`
`boat 2` was untouched so `points -1` and `notTouched +1` in Javascript/Java/C# and `not_touched +1` in Python/Ruby.
No whole boats sank

Return Hash
*/

import java.util.*;

public class BattleShips {

  public static Map<String, Double> damagedOrSunk(
    final int[][] board,
    final int[][] attacks
  ) {
    Map<Integer, Integer> boatParts = new HashMap<>();
    Map<Integer, Integer> boatHits = new HashMap<>();

    int rows = board.length;
    int cols = board[0].length;

    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        int val = board[i][j];
        if (val > 0) {
          boatParts.put(val, boatParts.getOrDefault(val, 0) + 1);
        }
      }
    }

    for (int[] attack : attacks) {
      int col = attack[0] - 1;
      int row = rows - attack[1];
      if (row >= 0 && row < rows && col >= 0 && col < cols) {
        int val = board[row][col];
        if (val > 0) {
          boatHits.put(val, boatHits.getOrDefault(val, 0) + 1);
        }
      }
    }

    int sunk = 0;
    int damaged = 0;
    int notTouched = 0;
    double points = 0.0;

    for (int boat : boatParts.keySet()) {
      int total = boatParts.get(boat);
      int hit = boatHits.getOrDefault(boat, 0);
      if (hit == 0) {
        notTouched++;
        points -= 1;
      } else if (hit == total) {
        sunk++;
        points += 1;
      } else {
        damaged++;
        points += 0.5;
      }
    }

    Map<String, Double> result = new HashMap<>();
    result.put("sunk", (double) sunk);
    result.put("damaged", (double) damaged);
    result.put("notTouched", (double) notTouched);
    result.put("points", points);

    return result;
  }
}
