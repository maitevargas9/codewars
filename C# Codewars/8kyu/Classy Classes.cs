/*
Description

Classy Classes
Basic Classes, this kata is mainly aimed at the new JS ES6 Update introducing classes

Task
Your task is to complete this Class, the Person class has been created. You must fill in the Constructor method 
to accept a name as string and an age as number, complete the get Info property and getInfo method/Info getter 
which should return johns age is 34

Reference: https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/classes-and-structs/using-properties
*/

public class Person
{
    private string name;
    private int age;

    public Person(string name, int age)
    {
        this.name = name;
        this.age = age;
    }

    public string Info
    {
        get
        {
            return $"{name}s age is {age}";
        }
    }
}