public class TestRegistre
{
	public static void main(String[] args) {
		Registre r1 = new Registre();
		System.out.println(r1.toString());

		boolean[] t = new boolean[3];
		t[0] = false;
		t[1] = true;
		t[2] = false;
		Registre r2 = new Registre(t);
		System.out.println(r2.toString());

		Registre r3 = new Registre(3);
		System.out.println(r3.toString());

		Registre r4 = new Registre(r3);
		System.out.println(r4.toString());

	}
}