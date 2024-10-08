/*
Description

Learning TypeScript. Classes & Interfaces. Setters

N.B.: To solve this kata you need to choose "2.4/ES6" target.

Overview

In "Learning TypeScript. Classes & Interfaces. Getters", we learned that if we knew all the dimensions (i.e. length, width, 
height) of a cuboid, we could easily work out its corresponding volume and surface area. The way we achieved this in our code 
was by the use of getters which automatically computed the volume and surface area of the cuboid whenever either one of length, 
width, height changed. However, in the previouos exercise, one thing we could not do is define setters for surface area or 
volume of a cuboid because for a given volume/SA, there were an infinite number of possibilities to the dimensions of the cuboid.

However, for cubes (a special type of cuboid), since their length, width and height are always the same, it is possible to 
figure out the side length of a cube given its surface area and/or volume. Therefore, in this Kata, you will be asked to define 
setters as well as getters for both the surface area and volume of a cube.

Task

You're given the ICuboid interface. Define a class Cube that implements ICuboid. Constructor function of Cube takes exactly one 
parameter length and stores the value of the argument into this.length. You will then define both a getter and a setter for the 
surfaceArea and volume of the cube.

Articles of Interest
Below are some articles of interest that may help you complete this Kata:
Setters - Mozilla Developer
What are getters and setters? - Stack Overflow
ES6 Classes Intro (includes section on getters and setters)

Credits
This is TypeScript version of kata "Fun with ES6 Classes #4 - Cubes and Setters" by @donaldsebleung
P.S. Solved this kata? Take a look at other katas in "Learning TypeScript" collection.
*/

declare var ICuboid: {
  new (length: number): ICuboid;
};

interface ICuboid {
  length: number;
  surfaceArea: number;
  volume: number;
}

export class Cube implements ICuboid {
  public length: number;
  constructor(length: number) {
    this.length = length;
  }
  get surfaceArea(): number {
    return 6 * Math.pow(this.length, 2);
  }
  get volume(): number {
    return this.length * this.length * this.length;
  }
  set surfaceArea(sA: number) {
    this.length = Math.pow(sA / 6, 1 / 2);
  }
  set volume(v: number) {
    this.length = Math.pow(v, 1 / 3);
  }
}
