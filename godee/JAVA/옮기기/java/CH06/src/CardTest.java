class Card {
	String kind;
	int num;
	
	static int width = 100;
	static int height = 250;
}

public class CardTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(Card.width);
		System.out.println(Card.height);
		
		Card.width=700;
		
		Card c1 = new Card();
		c1.kind = "heart";
		c1.num = 7;
		
		Card c2 = new Card();
		c2.kind = "space";
		c2.num = 5;
		
		System.out.println(c1.width);
		System.out.println(c1.height);
		System.out.println(c1.kind);
		System.out.println(c1.num);
		
		System.out.println(c2.width);
		System.out.println(c2.height);
		System.out.println(c2.kind);
		System.out.println(c2.num);
	}

}
