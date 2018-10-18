
public class Athlete {
    static int nextBibNumber;
    static String raceLocation = "New York";
    static String raceStartTime = "9.00am";

    String name;
    int speed;
    int bibNumber;

Athlete (String name, int speed){
	raceLocation = "Boston";
	bibNumber++;
    this.name = name;
    this.speed = speed;
}

public static void main(String[] args) {
    //create two athletes      //print their names, bibNumbers, and the location of their race. }
Athlete one = new Athlete("test", 1);
nextBibNumber=one.bibNumber+1;
System.out.println(one.name);
System.out.println(one.bibNumber);
System.out.println(one.raceLocation);
Athlete two = new Athlete("Joe", 50);
System.out.println(two.name);
System.out.println(one.nextBibNumber);
System.out.println(two.raceLocation);
}
}
