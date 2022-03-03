void setup() {
  int[] array = new int[]{8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2};
  boolean sorted=false;
  while(!sorted)
  {
    sortArray(array);
    sorted=true;
    println(array);
  }
}

int[] sortArray(int[] arr)
{
  int temp;
  for(int i=0; i<arr.length-1; i++)
  {
    if(arr[i]>arr[i+1])
    {
      temp=arr[i];
      arr[i]=arr[i+1];
      arr[i+1]=temp;
    }
  }
  return arr;
}
