/*
Debug 1:
Fjernede "()" fra klassen.

  void setup() 
{
  MyClass myclass = new MyClass();
}
public class MyClass {

  public MyClass()
  {
    println("Jobs done!");
  }
}

Debug 2:
Lavede s'et i "Setup" til småt.

void setup()
{
  println("Jobs done!");
}

Debug 3:
Ændrede return type fra void til boolean i "isJobDone" metoden, 
  og skiftede "jobsDone" til true.

  boolean jobsDone = true;

void setup()
{
  if (isJobDone())
  {
    println("Job's done!");
  }
}

boolean isJobDone()
{
  return jobsDone;
}

Debug 4:
Tilføjede "()" bag på "isJobDone", da det er et metodekald.

  boolean jobsDone = true;

void setup()
{
  if (isJobDone())
  {
    println("Job's done!");
  }
}

boolean isJobDone()
{
  return jobsDone;
}

Debug 5:
Satte ";" bag på "println("Job's done!")".

boolean jobsDone = true;

void setup()
{
  if (isJobDone())
  {
    println("Job's done!");
  }
}

boolean isJobDone()
{
  return jobsDone;
}

Debug 6:
Satte "(int)" foran "random(min, max)", da random som udgangspunkt er en float.

  boolean jobsDone = true;

void setup()
{

  println(getRandomNumber(0, 10));
  if (isJobDone())
  {
    println("Job's done!");
  }
}

boolean isJobDone()
{
  return jobsDone;
}

int getRandomNumber(int min, int max) 
{
  return (int)random(min, max);
}

Debug 7:
Initialiserer "int sum" udenfor for-loopet.

  boolean jobsDone = true;

void setup()
{
  int myArray[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
  println(getSumOfElementsInArray(myArray));

  if (isJobDone())
  {
    println("Job's done!");
  }
}

int getSumOfElementsInArray(int[] arr) 
{
  int sum=0;
  for (int i = 0; i < arr.length; i++)
  {
    sum += arr[i];
  }
  return sum;
}

boolean isJobDone()
{
  return jobsDone;
}

Debug 8:
Manglende return statement i isValue... metoden.
  Kunne kun return true, under et if-statement.

  boolean jobsDone = true;

void setup()
{
  println(isValueGreaterThanThreshold(10, 5));
  println(isValueGreaterThanThreshold(4, 8));

  if (isJobDone())
  {
    println("Job's done!");
  }
}

boolean isValueGreaterThanThreshold(int value, int threshold) 
{
  if (value > threshold) 
  {
    return true;
  }
  return false;
}

boolean isJobDone()
{
  return jobsDone;
}

Debug 9:
I for-loopet under getSum-metoden, stod der "i<=arr.length", så jeg slettede "=".

  boolean jobsDone = true;

void setup()
{
  int myArray[] = { 9, 8, 7, 6, 5, 4, 3, 2, 1};
  print(getSumOfAllElementsInArray(myArray));

  if (isJobDone())
  {
    println("Job's done!");
  }
}

boolean isJobDone()
{
  return jobsDone;
}

int getSumOfAllElementsInArray(int[] arr) 
{
  int sum = 0; 
  for (int i = 0; i < arr.length; i++)
  {
    sum += arr[i];
  }
  return sum;
}


Debug 10:
Ny metode erklæret i draw, samt manglende curly-bracket for enden af if-statement.

  boolean jobsDone = true;

void setup()
{
  size(1000, 1000);
  drawGrid(15, 15, 40);

  if (isJobDone())
  {
    println("Job's done!");
  }
}

void draw() {
}

boolean isJobDone()
{
  return jobsDone;
}

void drawGrid(int numberOfHorizontalCells, int numberOfVerticalCells, int cellSideLength)
{
  for (int x = 0; x < numberOfHorizontalCells; x++)
  {   
    for (int y = 0; y < numberOfVerticalCells; y++)
    {
      if (x == 5 && y == 8)
      {
        fill(255, 0, 0);
      } else
      {
        fill(255);
      }
      rect(x * cellSideLength, y * cellSideLength, cellSideLength, cellSideLength);
    }
  }
}
*/
