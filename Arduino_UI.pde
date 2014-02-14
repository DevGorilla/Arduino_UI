

// Class Object Delcarations
region1 r1 = new region1(); 
region2 r2 = new region2();
region3 r3 = new region3();
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

r3.test(9, false);
r3.test(8, true);
r3.test(7, true);
r3.test(6, false);
r3.test(5, true);

r3.test(4, true);
r3.test(3, true);
r3.test(2, false);
r3.test(1, true);
r3.test(0, true);

//r3.boolBrick(1);


// *** *** *** *** *** *** ***
centerGuideLines(127,255,0);
}


public class region3 {

 
  
  
  
void test(int brickNo, boolean condition){
  
    // debug
      stroke(255,0,0);
      line(width/4, height/2,width/4,height);
    // ***

   stroke(255);
   strokeWeight(2);
   noFill();
   
   float xStart = .02 *width;
   float xWidth= .05 * width;
   float yLength = .05 *height;
   float backingRectY= .08 * height;
    
    
    
    if (brickNo < 5) {
      // -- Refresh
          float horizonLine = height/2;
         noStroke();
         fill(0);
         rect(0, horizonLine + xStart + ( (yLength *1.5) *brickNo) -5,width/4,  backingRectY);
         // -- ******
         

         fill(0);
         stroke(255);
         rect(xStart, horizonLine + xStart + ( (yLength *1.5) *brickNo), xWidth, yLength);
         
         
         
            if (condition == true){
                fill(255);
                stroke(0);
                rect(xStart, horizonLine + xStart + ( (yLength *1.5) *brickNo), xWidth, yLength);
                }
              
                   
        }
    
    
      if (brickNo > 4) {
           brickNo = brickNo -5; // -- Deals multiplication issue
           
           // -- Refresh
           noStroke();
           fill(0);
           float horizonLine = height/2;
           rect(width/4, (horizonLine + xStart + ( (yLength *1.5) *brickNo)) -5, width/4, backingRectY);
           // -- ******
           
          
           fill(0);
           stroke(255);
           rect((width/4) +xStart, horizonLine + xStart + ( (yLength *1.5) *brickNo), xWidth, yLength);
           
         

               if (condition == true){
                fill(255);
                stroke(0);
                rect((width/4) +xStart, horizonLine + xStart + ( (yLength *1.5) *brickNo), xWidth, yLength);
                }
              
           
        }
    


   
   
   
  
   
   
  
    
 
   
  
  }
  
  
  
  
  void boolBrick(int brickNo,  boolean condition){
  
  
    
    
    
  
  
  }
  
  
  
  
  
  void refresh(){
    fill(255,0,0);
    rect(0,height/2,width/2,height/2);
  }





}







 







