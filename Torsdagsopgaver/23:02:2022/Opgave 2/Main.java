class Main{
  public static boolean happy = true;

public static void main(String [] args) {
   if (iAmHappy())
   {
     System.out.println("I clap my hands");
   }
   else
   {
     System.out.println("I don't clap my hands"); 
   }
   System.out.println(sum(5,6));
   System.out.println(uppercaseString("hello"));
   System.out.println(isUppercaseChar("string"));
}


public static boolean iAmHappy()
{
  if(happy)
  {
  return true;
  }
  return false;
}

public static boolean isUppercaseChar(String s)
{
  return Character.isUpperCase(s.charAt(0));
}

public static String uppercaseString(String s)
{
  return s.toUpperCase();
}

public static int sum(int a, int b)
{
  return a+b;
}
}