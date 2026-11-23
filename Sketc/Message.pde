class Message {

String message = loadStrings("text.txt");

void createMessage() {
    String[] cardMessage = {};
    
   for(int i = 0; i < message.length; i++) {
     String character = str(message.charAt(i));
    cardMessage = append(cardMessage, character);

    println(cardMessage[i]); //TESTS OUT MESSAGE
   }
  }
}
