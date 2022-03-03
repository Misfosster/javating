int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };

void setup()
{
  printValuesDivisible(17); 

  println("Random number at a random place in the array: "+ randomIndex(arr));
  println("Descending numbers: ");
  printNumbersDescending(10);
  printFibonacci(1, 1);
}

void printValuesDivisible(int divider)
{
  for (int i = 0; i<=100; i++)
  {
    if (i%divider==0 && i!=0)
    {
      println(i);
    }
  }
}

int randomIndex(int[] arr)
{
  int index = arr[(int)random(0, arr.length)];
  return index;
}

void printNumbersDescending(int num)
{
  for (int i=num; i>=0; i--)
  {
    println(i);
  }
}

void printFibonacci(int num, int num2)
{
  int sum;
  println("Printing fibonacci-sequence: ");
  println(num+"\t"+num2);
  for (int i=0; i<10000; i=sum)
  {
    sum=num+num2;
    num=num2;
    num2=sum;
    println(num+"\t"+num2);
  }
}
