PFont font;
Message message;




void setup() {
    size(800, 600);
    font = loadFont("ComicSansMS-48.vlw");
    textFont(font,48);

    message = new Message();
    message.createMessage();
}

void draw() {
    background(0);
    message.update();
}
void mouseClicked() {
  message.clicked();
}