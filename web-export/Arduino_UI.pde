

// Class Object Delcarations
region1 r1 = new region1(); 
region2 r2 = new region2();

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

float inpt = 3.35;//random(4.75,5.2); // Tester
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
r2.createBar(4,test,1000,2,0);
r2.createBar(5,test,1100,2,0);
r2.createBar(6,test,1200,2,0);


r2.textContent("        SENSOR READINGS");





//rect(startingX  + (rectWidth * 1) + (rectInterval * 1), rectY_start,rectWidth,rectLength);
//r2.bar1(5.5,1024);




// rect(startingX  + (rectWidth * 4) + (rectInterval * 4), rectY_start,rectWidth,rectLength);
///r2.bar1(5.5,1024);


// CENTER GUIDELINES
//stroke(127,255,0); //Green
//strokeWeight(2);
//line(width/2,0,width/2,height); //   Vertical 
//line(0,height/2,width,height/2); //  Horizontal

// MUST BE LAST, places over All region backgrounds
centerGuideLines(127,255,0);
}










 








void regionTxt_2(String sInput)
{ 
sInput = regionTextLengthCheck(sInput); //Returns a modified string, trimmed to length
text(sInput,(width/2) +5,13);  }

void regionTxt_3(String sInput)
{ 
  sInput = regionTextLengthCheck(sInput); //Returns a modified string, trimmed to length
text(sInput,5,(height/2) + 13);  }

void regionTxt_4(String sInput)
{
  sInput = regionTextLengthCheck(sInput); //Returns a modified string, trimmed to length
text(sInput,(width/2) +5,(height/2) + 13);}



String regionTextLengthCheck(String input)
{  
  String modString = input;
  float myRatio = (width/2)* .12;

  if (input.length() > myRatio )
  {    
  if (myRatio != 60) { println("Error: [Function regionTextLengthCheck] Adjust Region String Length Default for Width");}
  
 String [] returnArr = match(input,".{80}"); // function returns Array  
  return returnArr[0] + "...";
  }

  else { return input;}

}


void centerGuideLines(float red, float green, float blue){
    stroke(red,green,blue); //Green
    strokeWeight(2);
    line(width/2,0,width/2,height); //   Vertical 
    line(0,height/2,width,height/2); //  Horizontal
}




 String display_decPlace(float F, int dd){
   String modString = "";
    if (dd == 0){modString = String.format("%.0f", F);}
    if (dd == 1){modString = String.format("%.1f", F);}
    if (dd == 2){modString = String.format("%.2f", F);}
    if (dd == 3){modString = String.format("%.3f", F);}
    if (dd == 4){modString = String.format("%.4f", F);}
    if (dd == 5){modString = String.format("%.5f", F);}
   return modString;
  }
  
  


// # REGION ****** ****** ****** REGION CLASSES ****** ****** ****** ******

public class region1 {
  
  float highAlert= 5.5;
  float lowAlert= 0;
  float graphSpeed= .25;
  
  
  void input(float i){ //must be a value 0-5 for voltage
  // Reset if @ Right side
    if (rXval_1 == width/2 - (height/100)){
        rXval_1 = 0;
        refresh();
      }
      
      // "Fading Tail"
    fill(0,2); // Transparent Rectangle
    rect(0,0,width/2,height/2);
  
  
    drawGraphLines();
    stroke(255);
    
    // Color Changes for Alert Levels
    if (i <= lowAlert || i >= highAlert  ){
    stroke(255,0,0);
    }
    
    
    float interval= (height/2)/6; //   SAME as GuideLines algorithm :: Factor for converting Voltage on graph ( IE 4.5 to say 200 pixels for Y) )
    ellipse(rXval_1, (height/2) -(i*interval), height/100, height/100); // height/100 = 5 on Development size
    rXval_1 = rXval_1 + graphSpeed;//1;
    
  }
  
  
  void drawGraphLines(){ // SEPERATE so it can be called on in Input and Refresh
  
    float interval= (height/2)/6; //
    float i = height/2;
    int loopCnt = 0;
   strokeWeight(1);
    float baseLine = (height/2) -20;
    
        while (i > 0){
            stroke(100); //grey
           line(0,i,width/2,i);
           i = i -interval; }
          }  
     
 
  
   // WORKS!
  void refresh(){
  
    fill(0);
    rect(0,0,width/2,height/2);
    stroke(127,255,0); //Green
   
      //Sets guideline Bars Region 1
    drawGraphLines();
    }
  
  

  void textContent(String sInput){ 
    //BLACK BAR BEHIND TEXT
    noStroke();
    fill(0);
    rect(3,3,width/2,15);
    fill(255);
    sInput = regionTextLengthCheck(sInput); //Returns a modified string, trimmed to length
    text(sInput,5,13); 
    }
  
  
}





public class region2 {
   String InputString; // For Display
   String TotalString;
   // ******************* 
    
   float rectInterval;
   float rectY_start;
   float rectLength;
   float rectWidth;  // +20 to account for width of rect
   float startingX;   
  
  
  void initialize(){
    // # Constants
      rectInterval = 40;
      rectY_start =(height/2) *.15 ;
      rectLength = height *.35;
      rectWidth = 20;  // +20 to account for width of rect
      startingX = (width /2)+ rectInterval;   
      
      //fill(0);
      //noStroke();
      rect(width/2,0,width/2,height/2);
    // *** *** *** 
    }
  
  
   //Alarm Values for Bars 
    float alarmLow = -1;
    float alarmHigh = -1;
    
void createBar(int BarNumber, float i, float maxVal,int inputDecplace, int maxDecPlace){ 
  
   // REFRESH BACKGROUND RECTANGLE
     fill(0);//255,0,0);
     noStroke();
     rect((startingX   + (rectWidth * BarNumber) + (rectInterval * BarNumber) ) -10 ,rectY_start -19,rectWidth *3,rectLength *1.20); //32
   // *** *** ***
    
   // WHITE Rectangle
     stroke(255);
     fill(255);
     
         // Sets Alarm Values if Not user Defined, or User Error ( -1)
         if (alarmLow == -1 || alarmHigh== -1){
             alarmLow = 0;
             alarmHigh = maxVal;
           }
     
         if ( i > alarmHigh || i < alarmLow){
               stroke(255,0,0);
               fill(255,0,0);
           }
     rect(startingX  + (rectWidth * BarNumber) + (rectInterval * BarNumber), rectY_start,rectWidth,rectLength);
   //*** *** ***
    
   //Reveal Rectangle
      float ratio = rectLength/maxVal;
      float inputPixel= i*ratio;
      stroke(0);
      fill(100);
      rect(startingX  + (rectWidth * BarNumber) + (rectInterval * BarNumber), rectY_start,rectWidth, rectLength-inputPixel);
   //*** *** ***
      
   // TEXT
     fill(255);
     InputString = display_decPlace(i,inputDecplace); 
     TotalString = display_decPlace(maxVal,maxDecPlace);
     text(TotalString, startingX  + (rectWidth * BarNumber) + (rectInterval * BarNumber) - 5,rectY_start -8 ); // Max Value
     text(InputString, startingX  + (rectWidth * BarNumber) + (rectInterval * BarNumber) - 5,rectY_start + rectLength + 12); // input
   // *** *** ***
   
   } // #end CreateBar
  
  
  
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




// # END REGION

