class Message {

  String[] message = loadStrings("text.txt");
  String[] cardMessage = {};
  //Vars for position
  //current position
  float[] x = new float[cardMessage.length];
  float[] y = new float[cardMessage.length];
  //orginal position of the x and y
  float[] orgX = new float[cardMessage.length];
  float[] orgY = new float[cardMessage.length];

  //Vars for waterfall
  boolean falling = false;
  boolean orgPosition = true;

  void createMessage() {
    String content = join(message, " ");
    for (int i = 0; i < content.length(); i++) {
      cardMessage = append(cardMessage, str(content.charAt(i)));
      x = append(x, i * 50);
      y= append(y, 0);
    }
    orgX = x.clone();
    orgY = y.clone();
  }



  void update() {

    
    for (int i = 0; i < cardMessage.length; i++) {
      text(cardMessage[i], 10 + x[i], 50 + y[i] );
    }
    
    updatePosition();
  }
  void clicked() {

    if (falling) {
      falling = false;
      println("Animation stopped");
    } else {
      falling = true;
      println("Animation started");
    }
  }



  //Check if the letters are in their original position
  boolean originalPosition() {
    for (int i = 0; i < cardMessage.length; i++) {
      if (x[i] != orgX[i] || y[i] != orgY[i]) {
        orgPosition = false;
      }
      else{
        orgPosition = true;
      }
    }
    return orgPosition;
  }
  

void updatePosition(){
  float noisescale = 0.02;
  float xlimit = cardMessage.length * 50/ cardMessage.length;
    if (falling) {
      for (int i = 0; i < cardMessage.length; i++) {
        if (x[i]<xlimit*i) {
        x[i] = x[i] + noise(x[i] * noisescale, y[i] * noisescale) * 20;}
        else{
          x[i] = x[i] - noise(x[i] * noisescale, x[i] * noisescale) * 20;
        }
        y[i] = y[i] + noise(x[i] * noisescale, y[i] * noisescale) * 10;
        
      }
    }
}

}