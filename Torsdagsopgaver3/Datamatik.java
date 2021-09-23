class Datamatik {
	public static void main(String[] args) {
		Teacher teacher = new Teacher("Jesper", 30, false);
		Student student1 = new Student("William", 22, false, 'a');
		Student student2 = new Student("Andreas", 22, false, 'a');
		System.out.println(teacher.name);
		System.out.println(student1.name+" "+student1.datamatikerTeam);
		System.out.println(student2.name+" "+student2.datamatikerTeam);
	}
}