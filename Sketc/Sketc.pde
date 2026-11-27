PFont font;
PImage backgroundImage;
Message message;




void setup() {
    size(2052/2, 2630/4);
    font = loadFont("ComicSansMS-48.vlw");
    textFont(font,48);
    message = new Message();
    message.createMessage();
    backgroundImage = loadImage("Fall_Tree.png");
}


void draw() {
    imageMode(CORNER);
     background(0);
    image(backgroundImage, 0, 0);
   
    message.update();
}
void mouseClicked() {
  message.clicked();
}