/*
Description

Terminal Game - Create Hero Class

In this first kata in the series, you need to define a Hero class to be used in a terminal game. 
The hero should have the following attributes:
attribute	type	value
Name	    string	user argument or "Hero"
Position	string	"00"
Health	    float	100
Damage	    float	5
Experience	int	    0
*/

class Hero
{
    public string Name { get; set; }
    public float Health { get; set; } = 100;
    public float Damage { get; set; } = 5;
    public int Experience { get; set; } = 0;
    public string Position { get; set; } = "00";

    public Hero(string name = "Hero")
    {
        this.Name = name;
    }
}