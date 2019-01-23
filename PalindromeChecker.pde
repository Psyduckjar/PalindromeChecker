public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String dude = "";
  for(int i = 0; i < word.length(); i++) {
    if(Character.isLetter(word.charAt(i))) {
      dude+=word.substring(i,i+1);
    }
  }
  
  
  if(reverse(word.toUpperCase()).equals(dude.toUpperCase())) {
  
  return true;
  } else {
    return false;
  }
}
public String reverse(String str)
{
    String sNew = new String("");
    for(int i = str.length() - 1; i >= 0; i--) {
      if(Character.isLetter(str.charAt(i))) {
      sNew += str.substring(i, i + 1);
      
      }
    }
      println(sNew);
    return sNew;
}
