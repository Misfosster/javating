class Main{
	 	public static void main(String[]args){
			emptyLine eLine=new emptyLine();
			eLine.datPrint();
			String myName=args[0];
			String myAge=args[1];
			myData md1= new myData();
			md1.dataPrint(myName,myAge);
  		}
}