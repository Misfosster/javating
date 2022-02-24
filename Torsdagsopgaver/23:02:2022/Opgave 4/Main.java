class Main
{
	public static void main(String[] args) 
	{
		int[] nums = new int[3];
		String[] s = new String[3];
		boolean[] b = new boolean[3];
		for(int i = 0; i<nums.length; i++)
		{
			nums[i]=28-i;
			s[i]="ost";
			b[i]=false;
		}
		printStringArray(s);
		System.out.println("The sum is: "+returnSum(nums));
		System.out.println("The average is: "+returnAvg(nums));
		System.out.println("The normal array is: "+nums[0]+" "+nums[1]+" "+nums[2]);
		System.out.println("The sorted array is: "+returnSorted(nums)+".\n");
	}

	static void printStringArray(String[] ost)
	{
		for(int i = 0; i<ost.length; i++) 
		{
			System.out.print(ost[i]+" ");
		}
		System.out.println("");
	}

	static int returnSum(int[] bigshaq)
	{
		int sum = 0;
		for (int i = 0; i<bigshaq.length; i++) 
		{
			sum+=bigshaq[i];	
		}
		return sum;
	}

	static float returnAvg(int[] mansnothot)
	{
		int sum = 0;
		for (int i = 0; i<mansnothot.length; i++) 
		{
			sum+=mansnothot[i];	
		}
		float average = sum/mansnothot.length;
		return average;
	}

	static String returnSorted(int[] smoketrees)
	{
		int placeholder=0;
		int n = smoketrees.length;
		for (int i = 0; i<n; i++)
		{
			for (int j=1; j<n-i ; j++) 
			{
				if(smoketrees[j-1]>smoketrees[j])
				{
					placeholder=smoketrees[j-1];
					smoketrees[j-1]=smoketrees[j];
					smoketrees[j]=placeholder;
				}
			}
		}
		return smoketrees[0]+" "+smoketrees[1]+" "+smoketrees[2]+"\n";
	}
}