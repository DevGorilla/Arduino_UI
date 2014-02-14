

// Class Object Delcarations
region1 r1 = new region1(); 
region2 r2 = new region2();
region3 r3 = new region3();
region4 r4 = new region4();
// *** *** *** *** *** ***

float rXval_1;
int cycleCnt;

int test= 0;

void setup()
{ 
  size(1000,500); // Must be divisable by 5
  //background(0);

  centerGuideLines(127,255,0);

  r1.refresh();
  r2.initialize(); // Initializes Constant Values

}




void draw()
{
 // REMOVE THIS!, background will need to be reset PER region

stroke(127,255,0); //Green
strokeWeight(2);

r1.highAlert= 5.0;
r1.lowAlert= 3.2;
r1.graphSpeed=1;

float inpt = random(3.300,3.330); // Tester
r1.input(inpt);




String formatted_Inpt = String.format("%.2f", inpt);

r1.textContent(formatted_Inpt + " v");

fill(255);
stroke(255);

  
float test = random(450,455);

r2.alarmLow= 100;
r2.alarmHigh = 500;

r2.createBar(0,test,600,2,0);
r2.createBar(1,test,700,2,0); //int BarNumber, float i, float maxVal,int inputDecplace, int maxDecPlace)
r2.createBar(2,test,800,2,0);
r2.createBar(3,test,900,2,0);

float test1 = random(900,901.5000000000);
r2.createBar(4,test1,1000,2,0);
r2.createBar(5,test1,1100,2,0);
r2.createBar(6,test1,1200,2,0);


r2.textContent("        SENSOR READINGS");

r3.boolBrick(9, false,"test 123");
r3.boolBrick(7, true,"test 123");
r3.boolBrick(5, true,"TestSwitch 04");
r3.boolBrick(4, true,"TestSwitch 03");
r3.boolBrick(2, false,"TestSwitch 02");
r3.boolBrick(0, true,"TestSwitch 01");

r4.test();

// *** *** *** *** *** *** ***
centerGuideLines(127,255,0);
}




public class region4{

 float midVertLine = width/2;
 float midHorizonline= height/2;
 
 void test(){
 
   noStroke();
  fill(255,0,0);
  rect(width/2,height/2,width/2,height/4);
  fill(0);
  rect(width/2,height *.75,width/2,height/4);
 
  
 }
  
  

  
  
  void refreshTotal(){
  
    fill(0,0,0);
    rect(width/2,height/2,width/2,height/2);
  
  }
  
  
  

}










 







