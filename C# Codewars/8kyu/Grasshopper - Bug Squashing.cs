/*
Description

Terminal game bug squashing

You are creating a text-based terminal version of your favorite board game. In the board game, each turn has six steps that must 
happen in this order: roll the dice, move, combat, get coins, buy more health, and print status.

You are using a library that already has the functions below. Create a function named main that calls the functions in the proper 
order.
- `Combat`
- `BuyHealth`
- `GetCoins`
- `PrintStatus`
- `RollDice`
- `Move`

using System;

public static partial class Kata
{
  public static int Health = 100
  public static int Position = 0
  public static int Coins = 0
  
  public static void PlayTurn()
  {
    GetCoins();
    Move();
    PrintStatus();
    Combat();
    RolDice();
    Attack();
  }
}
*/

public static partial class Kata
{
    public static int Health = 100;
    public static int Position = 0;
    public static int Coins = 0;

    public static void PlayTurn()
    {
        RollDice();
        Move();
        Combat();
        GetCoins();
        BuyHealth();
        PrintStatus();
    }
}