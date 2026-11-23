PFont font;
Message message;




void setup() {
    font = loadFont("ComicSansMS-48.vlw");
    textFont(font,48);
    size(800, 600);
    background(0);

}

 void draw() {
    for(int i = 0; i < cardMessage.length; i++) {
        text(cardMessage[i], 10+ i * 48, 50 );
    }
 }