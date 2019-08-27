public class TestMine {
	public static void main(String[] args) {
		Mine m = new Mine();
		Mine m2 = new Mine(5, 4);
		Mine m3 = new Mine(m2);

		System.out.println(m.toString());
		System.out.println(m2.toString());
		System.out.println(m3.toString());
	}
}