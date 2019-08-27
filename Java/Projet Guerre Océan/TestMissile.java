public class TestMissile {
	public static void main(String[] args) {
		Missile m = new Missile();
		Missile m2 = new Missile(5, 4);
		Missile m3 = new Missile(m2);

		System.out.println(m.toString());
		System.out.println(m2.toString());
		System.out.println(m3.toString());
	}
}