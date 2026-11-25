class Message {

  String[] message = loadStrings("text.txt");
  String[] cardMessage = {};
  float[] x = new float[cardMessage.length];
  float[] y = new float[cardMessage.length];

  //Vars for waterfall
  boolean falling = true;

  void createMessage() {
    String content = join(message, " ");
    for (int i = 0; i < content.length(); i++) {
      cardMessage = append(cardMessage, str(content.charAt(i)));
      x = append(x, i * 50);
      y= append(y, 0);
    }
  }



  void update() {

    for (int i = 0; i < cardMessage.length; i++) {
      text(cardMessage[i], 10 + x[i], 50 + y[i] );
    }
  }
  void clicked() {
    if (falling) {
      falling = false;
    } else {
      falling = true;
    }
    for (int i = 0; i < cardMessage.length; i++) {
      x[i] = x[i] + random(-5, 5);
      y[i] = y[i] + random(-5, 5);
    }
  }
  
}
