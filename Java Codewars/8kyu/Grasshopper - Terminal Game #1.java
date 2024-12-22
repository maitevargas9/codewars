/*
Description

Terminal Game - Create Hero Prototype

In this first kata in the series, you need to define a Hero prototype to be used in a terminal game. 
The hero should have the following attributes:
attribute	  value
name	      user argument or 'Hero'
position	  '00'
health	      100
damage	      5
experience	  0
*/

public class Hero {

  String name = "Hero";
  String position = "00";
  int health = 100;
  int damage = 5;
  int experience = 0;

  public Hero(String name) {
    this.name = name;
  }

  public Hero() {}
}
