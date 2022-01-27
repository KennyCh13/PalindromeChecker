public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String end = new String();
  for(int i = 0; i < word.length(); i++){
    if(word.charAt(i) != ' ' && Character.isLetter(word.charAt(i)) == true){
      end += word.substring(i, i+1);
    }
  }
  return end.toLowerCase().equals(reverse(word));
  /*if (end.equals(reverse(word))) {
    return true;
  }
  return false;*/
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length() - 1; i >= 0; i--) {
    if (str.charAt(i) != ' '){
    if (Character.isLetter(str.charAt(i)) == true) {
      sNew += str.substring(i, i + 1);
      }
    }
  }
  return sNew.toLowerCase();
}

// ans
// there are 6 lines
//test is NOT a palindrome.
//rotator IS a palindrome.
//rewriter is NOT a palindrome.
//nurses run IS a palindrome.
//Madam, I'm Adam! IS a palindrome.
//A Man! A Plan! A Canal! Panama! IS a palindrome.
