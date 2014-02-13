
region1 r1 = new region1();
region2 r2 = new region2();

float rXval_1;
int cycleCnt;

int test= 0;

void setup()
{ 
size(1000,500); // Must be divisable by 5
background(0);


stroke(127,255,0); //Green
strokeWeight(2);
line(width/2,0,width/2,height); //   Vertical 
line(0,height/2,width,height/2); //  Horizontal


r1.refresh();


}




void draw()
{
 // REMOVE THIS!, background will need to be reset PER region

stroke(127,255,0); //Green
strokeWeight(2);



r1.highAlert= 5.0;
r1.lowAlert= 3.2;
r1.graphSpeed=1;

float inpt = 3.35;//random(4.75,5.2); // Tester
r1.input(inpt);




String formatted_Inpt = String.format("%.2f", inpt);

r1.textContent(formatted_Inpt + " v");



//r2.refresh();
r2.textContent("Under Construction");









 float rectInterval = 20;
 float rectY_start =(height/2) *.1 ;
 float rectLength = height *.40;
 float rectWidth = 20;  // +20 to account for width of rect
 float startingX = (width/2) + rectInterval;   
    
    
 stroke(255,0,0);
 //DEBUG
 line(width/2,(height/2) - 25,width,(height/2) - 25);
 noStroke();
    
    
    // Hard Code 11, Function for each Rectangle input. set r2.bar1 = true to make appear
    
 rect(startingX  + (rectWidth * 0) + (rectInterval * 0), rectY_start,rectWidth,rectLength);
// *** 1
 rect(startingX  + (rectWidth * 1) + (rectInterval * 1), rectY_start,rectWidth,rectLength);
// *** 2
 rect(startingX  + (rectWidth * 2) + (rectInterval * 2), rectY_start,rectWidth,rectLength);

int myI = 0;
while (myI < 12)
{
rect(startingX  + (rectWidth * myI) + (rectInterval * myI), rectY_start,rectWidth,rectLength);
myI = myI +1;
}





// CENTER GUIDELINES
stroke(127,255,0); //Green
strokeWeight(2);
line(width/2,0,width/2,height); //   Vertical 
line(0,height/2,width,height/2); //  Horizontal
}


 

// INCOMPLETE!!!
public class region2 {
  
  
  void input(float i){ //must be a value 0-5 for voltage
    
  
    
  }
  
  

  
  
  
  
  
   // WORKS!
  void refresh(){
  
    fill(0);
    noStroke();
    rect(width/2,0,width/2,height/2);
    stroke(127,255,0); //Green
   
      //Sets guideline Bars Region 1
    float interval= (height/2)/5;
    float i = interval;
    int lvl = height/4;
    strokeWeight(1);
    
        while (i < height/2 ){
           line(0,i,width/2,i);
           i = i +interval;
          } 
  }
  
  
 // works
  void textContent(String sInput){ 
    //BLACK BAR BEHIND TEXT
    noStroke();
    fill(0);
    rect((width/2) -3,3,(width/2) -3,15);
    
    fill(255);
    sInput = regionTextLengthCheck(sInput); //Returns a modified string, trimmed to length
    text(sInput,(width/2) +5,13);
  }


}









