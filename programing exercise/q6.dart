// Count Words in a Sentence
// Write a function that counts the number of words in a given sentence.
// Words are separated by spaces, and the function should ignore extra spaces.

int countWords(String sentence) {
  String trimmedSentence = sentence.trim();
  if (trimmedSentence.isEmpty) {
    return 0;
  }
  return trimmedSentence.split(' ').length;
}
