public class TestBaseRegistre
{
	public static void main(String[] args) {

		BaseRegistre r1 = new BaseRegistre(); // on appelle le constructeur par défaut
		r1.init(); // on appelle la méthode init

		BaseRegistre r2 = new BaseRegistre(r1);

		System.out.println(r1.toString());
		System.out.println(r2.toString());
	}
}