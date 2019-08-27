public class TestTorpille {
	public static void main(String[] args) {
		Torpille m = new Torpille();
		Torpille m2 = new Torpille(5, 4, 3);
		Torpille m3 = new Torpille(m2);

		System.out.println(m.toString());
		System.out.println(m2.toString());
		System.out.println(m3.toString());
	}
}