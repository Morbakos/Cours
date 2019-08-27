public class TestMunition {
	public static void main(String[] args) {
		Missile m1 = new Missile();
		Missile m11 = new Missile(5, 4);
		Missile m12 = new Missile(m11);

		Mine m2 = new Mine();
		Mine m21 = new Mine(5, 4);
		Mine m22 = new Mine(m21);

		System.out.println(m1.toString());
		System.out.println(m11.toString());
		System.out.println(m12.toString());

		System.out.println(m2.toString());
		System.out.println(m21.toString());
		System.out.println(m22.toString());
	}
}