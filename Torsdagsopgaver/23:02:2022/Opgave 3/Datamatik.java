class Datamatik 
{
	public static void main(String[] args)
	{
		Teacher teacher = new Teacher("Tobias", 25, false);
		Student student1 = new Student("William", 22, false, "ostehovederne");
		Student student2 = new Student("Isak", 23, false, "alle os der hader Isak");
		System.out.println(teacher.name);
		System.out.println(student1.name+" og "+student2.name);
		System.out.println("henholdsvist: " + student1.datamatikerTeam + " og " + student2.datamatikerTeam);

	}
}