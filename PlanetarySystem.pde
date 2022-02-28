OrbitalObject sun, mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, moon;
PImage sunImg, mercuryImg, venusImg, earthImg, marsImg, jupiterImg, saturnImg, uranusImg, neptuneImg, plutoImg, backImg, moonImg;

int angleMove, angle, moveZ = 0;

int z = -1000;

void setup(){
  size(1280,800, P3D);
  
  backImg = loadImage("universoFondo.jpg");
  
  background(backImg);
  sunImg = loadImage("solImg.jpg");
  sun = new OrbitalObject(0, 0, 0, 200, sunImg, 0, 0.5, "Sun");
  
  mercuryImg = loadImage("mercurioImg.jpg");
  mercury = new OrbitalObject(300, 0, 0, 30, mercuryImg, 3, 1, "Mercury");
  
  venusImg = loadImage("venusImg.jpg");
  venus = new OrbitalObject(448, 0, 0, 55, venusImg, 2.5, 1, "Venus");
  
  earthImg = loadImage("tierraImg.jpg");
  earth = new OrbitalObject(653, 0, 0, 55, earthImg, 1, 1, "Earth");
  earth.createSatellite("lunaImg.jpg", 100, 25, -2, 4, "Moon");
  
  marsImg = loadImage("marteImg.jpg");
  mars = new OrbitalObject(830, 0, 0, 40, marsImg, 0.7, 1, "Mars");
  
  jupiterImg = loadImage("jupiterImg.jpg");
  jupiter = new OrbitalObject(1030, 0, 0, 100, jupiterImg, 0.5, 1, "Jupiter");

}

void draw(){
   
  background(backImg);
    
  textAlign(LEFT);
  textSize(60);
  text("- Press ESC to exit", -900, -500, -1000);
  text("- Use arrows to move the view vertically", -900, -430, -1000);
  text("- Use I and O to zoom in and zoom out",-900, -360, -1000);
  
  z += moveZ;
  
  translate(width/2, height/2, z);
  
  angle += angleMove;
  
  rotateX(radians(angle));
  
  sun.move();
  mercury.move();
  
  earth.move();
  mars.move();
  venus.move();
  jupiter.move();
}

void keyPressed(){
   if(keyCode == UP){
     angleMove = -5;
   }
   
   if(keyCode == DOWN){
     angleMove = 5;
   }
   
   if(key == 'i' || key == 'I'){
     moveZ = 20;
   }
   
   if(key == 'o' || key == 'O'){
     moveZ = -20;
   }
}

void keyReleased(){
   if(keyCode == UP || keyCode == DOWN){
     angleMove = 0;
   }
   
   if(key == 'i' || key == 'I' || key == 'o' || key == 'O'){
     moveZ = 0;
   }
}
