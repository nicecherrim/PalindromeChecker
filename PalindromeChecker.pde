public void setup()
{
  String lines[] = {"salt. and betrayal", "test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String test = new String(); //test = reversed string to compare to original
  test = reverse(word);
  
  test = lowerLetters(test);//removes extra nonletters/spaces from the test string
  word = lowerLetters(word);//removes extra nonletters/spaces from the original
  //System.out.println(test);
  //System.out.println(word);
  if(test.equals(word)) {//compares the 2 strings
    return true;
  }
  return false;
}

//reverses gvien string
public String reverse(String str)
{ 
  String reverse = new String();
  for(int i = 0; i < str.length(); i++) {
    reverse += str.charAt(str.length()-i-1);
  }
  return reverse;
}

//removes any chars thats aren't letters (removes sapces too)
public String lowerLetters(String str) {
  String letters = new String();
  for(int i = 0; i < str.length(); i++) {
    if(Character.isLetter(str.charAt(i)) == true) {
      letters += str.charAt(i);
    }
  }
  return letters.toLowerCase();
}
