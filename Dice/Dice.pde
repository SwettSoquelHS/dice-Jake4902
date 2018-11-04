
void setup(){
  noLoop();
  //OR if you ever call redraw()
  size(500, 500);
  background(0);
}

void draw(){
  background(0);
  Die die1 = new Die();
  die1.setMatrix(50,50);
  die1.roll();
  die1.show();
  int total = die1.getTotal();
  Die die2 = new Die();
  die2.setMatrix(250,50);
  die2.roll();
  die2.show();
  total = total + die2.getTotal();
  Die die3 = new Die();
  die3.setMatrix(450,50);
  die3.roll();
  die3.show();
  total = total + die3.getTotal();
  Die die4 = new Die();
  die4.setMatrix(50,200);
  die4.roll();
  die4.show();
  total = total + die4.getTotal();
  Die die5 = new Die();
  die5.setMatrix(250,200);
  die5.roll();
  die5.show();
  total = total + die5.getTotal();
  Die die6 = new Die();
  die6.setMatrix(450,200);
  die6.roll();
  die6.show();
  total = total + die6.getTotal();
  Die die7 = new Die();
  die7.setMatrix(50,350);
  die7.roll();
  die7.show();
  total = total + die7.getTotal();
  Die die8 = new Die();
  die8.setMatrix(250,350);
  die8.roll();
  die8.show();
  total = total + die8.getTotal();
  Die die9 = new Die();
  die9.setMatrix(450,350);
  die9.roll();
  die9.show();
  total = total + die9.getTotal();
  textSize(30);
  fill(255);
  text("Total: ", 175, 450);
  text(String.valueOf(total), 275, 450);
}

void mousePressed(){
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
  int total;
	int value;
  int XPos;
  int YPos;
  
	public Die(){
    value = 0;
    XPos = 0;
    YPos = 0;
  }
	void setMatrix(int x, int y){
		XPos = x;
    YPos = y;
  }
  int getTotal(){
    return total;
  }
	
	//Simulate a roll of a die
	void roll(){
	value = (int)(Math.random() * 6) + 1;
  }
	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
    pushMatrix();
    translate(XPos,YPos);
    fill(255);
    rect(-25, -25, 50, 50);
    if(value == 1){
      fill(0);
      ellipse(0, 0, 10, 10);
      total = total + 1;
     }else if(value == 2){
       fill(0);
       ellipse(-15, 0, 10, 10);
       ellipse(15, 0, 10, 10);
       total = total + 2;
     }else if(value == 3){
       fill(0);
       ellipse(15,-15, 10, 10);
       ellipse(0,0,10,10);
       ellipse(-15,15,10,10);
       total = total + 3;
     }else if(value == 4){
       fill(0);
       ellipse(-15, 15, 10, 10);
       ellipse(15, 15, 10, 10);
       ellipse(-15, -15, 10, 10);
       ellipse(15, -15, 10, 10);
       total = total + 4;
     }else if(value == 5){
       fill(0);
       ellipse(0,0,10,10);
       ellipse(-15, 15, 10, 10);
       ellipse(15, 15, 10, 10);
       ellipse(-15, -15, 10, 10);
       ellipse(15, -15, 10, 10);
       total = total + 5;
     }else if(value == 6){
       fill(0);
       ellipse(-15,0,10,10);
       ellipse(15,0,10,10);
       ellipse(-15, 15, 10, 10);
       ellipse(15, 15, 10, 10);
       ellipse(-15, -15, 10, 10);
       ellipse(15, -15, 10, 10);
       total = total + 6;
     }
     popMatrix();
  }
}
