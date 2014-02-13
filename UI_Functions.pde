
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




// # REGION ****** ****** ****** REGION CLASSES ****** ****** ****** ******

public class region1 {
  
  float highAlert= 5.5;
  float lowAlert= 0;
  float graphSpeed= .25;
  
  
  void input(float i){ //must be a value 0-5 for voltage
  // Reset if @ Right side
    if (rXval_1 == width/2){
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

// # END REGION
