
region1 r1 = new region1();
region2 r2 = new region2();

int rXval_1;
int cycleCnt;

void setup()
{ 
size(1000,500); // Must be divisable by 5
background(0);
line(width/2,0,width/2,height); //   Vertical 
line(0,height/2,width,height/2); //  Horizontal


r1.refresh();


}


void draw()
{
 // REMOVE THIS!, background will need to be reset PER region

stroke(127,255,0); //Green
strokeWeight(2);




float inpt = random(3.5,3.6); // Tester
r1.input(inpt);

r1.textContent(inpt + " v");
//r1.refresh();


r2.refresh();
r2.textContent("All Work And No PlayMake Jack A Dull Boy. All Work And No PlayMake Jack A Dull Boy");



// CENTER GUIDELINES
stroke(127,255,0); //Green
strokeWeight(2);

line(width/2,0,width/2,height); //   Vertical 
line(0,height/2,width,height/2); //  Horizontal
}





// INCOMPLETE!!!
public class region2 {
  
  
  void input(float i){ //must be a value 0-5 for voltage
    
    
    if (rXval_1 == width/2){
        rXval_1 = 0;
        refresh();
      }
      
    stroke(255);
    
    float interval= (height/2)/5;
    ellipse(rXval_1, (height/2) -(i*interval), 3, 3);
    rXval_1 = rXval_1 +1;
    
  }
  
  
  
  
  
 void OnOff1(boolean B){
    fill(255);
  if (B == true){
    fill(255,0,0);
  }
  
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
  
  

  void textContent(String sInput){ 
    fill(255);
    sInput = regionTextLengthCheck(sInput); //Returns a modified string, trimmed to length
    text(sInput,(width/2) +5,13);
  }


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




//****** ****** ****** REGION CLASSES ****** ****** ****** ******

public class region1 {
  
  
  void input(float i){ //must be a value 0-5 for voltage
    if (rXval_1 == width/2){
        rXval_1 = 0;
        refresh();
      }
      
    fill(0,10);
    rect(0,0,width/2,height/2);
    
    stroke(255);
    
    float interval= (height/2)/5;
    ellipse(rXval_1, (height/2) -(i*interval), 3, 3);
    rXval_1 = rXval_1 +1;
    
  }
  
  
   // WORKS!
  void refresh(){
  
    fill(0);
    rect(0,0,width/2,height/2);
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
  
  

  void textContent(String sInput){ 
    noStroke();
    fill(0);
    rect(3,3,width/2,15);
    fill(255);
    sInput = regionTextLengthCheck(sInput); //Returns a modified string, trimmed to length
    text(sInput,5,13); 
  }
  
  
}

