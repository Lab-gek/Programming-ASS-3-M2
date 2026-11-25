class Message {

  String[] message = loadStrings("text.txt");
  String[] cardMessage = {};

  void createMessage() {
    String content = join(message, " ");
    for (int i = 0; i < content.length(); i++) {
      cardMessage = append(cardMessage, str(content.charAt(i)));
    }
  }

  void update() {
    println("New");
    for (int i = 0; i < cardMessage.length; i++) {
      text(cardMessage[i], 10 + i * 22, 50);

      println(cardMessage[i]);

    }
  }
}
