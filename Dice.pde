void setup()
{
	noLoop();
	size(600, 700);
}

String totalnumber = "Total: ";
String averagenumber = "Average: ";
String rollnumber = "# of Rolls: ";
String averagetotalnumber = "Average total number: ";
int total = 0;
int sum = 0;
int average;
int numberofroll = 1;
int averagetotal = 0;

void draw()
{
	//your code here
	background(255);
	for(int i = 30; i <= 570; i+= 70){
		for ( int j = 30; j <= 570; j+= 70){
			Die die1 = new Die(i, j);
			die1.show();
			die1.roll();
		}
	}
	textAlign(CENTER, TOP);
	fill(135, 193, 218);
	textSize(25);
	text(totalnumber + total, 100, 610);
	text(averagenumber + average, 100, 650);
	text(rollnumber + numberofroll, 400, 610);
	text(averagetotalnumber + averagetotal, 400, 650);
}
void mousePressed()
{
	total = 0;
	numberofroll ++;
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, number;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		number = (int)(Math.random()*6)+1;
	}
	void roll()
	{
		//your code here
		total = total + number;
		sum = sum + number;
		average = (int)(total/64);
		averagetotal = (int)((sum)/numberofroll);
	}
	void show()
	{
		fill(135, 193, 218);//your code here
		noStroke();
		rect(myX, myY, 60, 60, 15);
		fill(255);
		if (number == 1) {
			ellipse(myX + 30, myY + 30, 10, 10);  // one
		}
		else if (number == 2) {
			ellipse(myX + 15, myY + 15, 10, 10);  // two
			ellipse(myX + 45, myY + 45, 10, 10);
		}
		else if (number == 3) {
			ellipse(myX + 15, myY + 45, 10, 10);  // three
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 45, myY + 15, 10, 10);
		}
		else if (number == 4) {
			ellipse(myX + 15, myY + 45, 10, 10);  // four
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
		}
		else if (number == 5) {
			ellipse(myX + 15, myY + 45, 10, 10);  // five
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
			ellipse(myX + 30, myY + 30, 10, 10);
		}
		else {
			ellipse(myX + 15, myY + 45, 10, 10);  // six
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
			ellipse(myX + 15, myY + 30, 10, 10);
			ellipse(myX + 45, myY + 30, 10, 10);
		}



	}
}
