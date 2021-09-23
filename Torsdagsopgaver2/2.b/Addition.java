class Main{
	public static void main(String[] args){
	int i = Integer.parseInt(args[0]);
	int j = Integer.parseInt(args[1]);

	Calculator c = new Calculator();
	c.addition(i, j);
}
}