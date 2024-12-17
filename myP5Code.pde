//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
    background(255,255,255,200);
}

//🎯Varaible Declarations Go Here
var eyeSize = 30;
var teeth = 30;
var teeth2 = 30;
var ear= 120;

//🟢Draw Procedure - Runs on Repeat
void draw(){
  fill(156, 145, 145);
  strokeWeight(1);
  background(255,255,255,200);

  //💡⬇️⬇️⬇️💡 Your Code For This Unit Goes Here
  
  ellipse(150, 70, 60, ear);  // left ear
  ellipse(240, 70, 60, 120);  // right ear

  ellipse(200, 170, 150, 150);    // face

  fill(0, 0, 0);
  ellipse(170, 150, eyeSize, eyeSize);  // left eye
  ellipse(230, 150, eyeSize, eyeSize);  // right eye

  line(150, 200, 250, 200);   // mouth

  noFill(255,255,255);
  fill(255,255,255)
  rect(185, 200, 15, teeth); // left tooth
  rect(200, 200, 15, teeth2); // right tooth
  

}



//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

var fillR = 255;
var fillG = 0;
var fillB = 255;

//🟡Mouse Pressed Procedue - Runs When Mouse is Pressed on Canvas
void mousePressed(){
  fill(fillR,fillG,fillB);
  strokeWeight(1);
  ellipse(mouseX, mouseY, 12, 12);
  var myText = "x: " + mouseX + "\ny: " + mouseY;
  text(myText, mouseX + 15, mouseY);
  console.log(myText);
  
  eyeSize=random(10,50)
  teeth2=random(10,20)
  ear= random(120,90)
}

//🟡Key Pressed Procedure - Runs When Keyboard Key is Pressed
void keyPressed(){
  if(key == 'c' || key == 'C'){
    background(255,255,255,100);
  }

  if(key == 'r' || key == 'R'){
    fillR = random(100,255);
    fillG = 0;
    fillB = 0;
  }

  if(key == 'g' || key == 'G'){
    fillR = 0;
    fillG = random(100,255);
    fillB = 0;
  }
}

