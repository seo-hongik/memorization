
class Books {
	String title;
	String writer;
	
	Books(String t, String w) {
		title = t;
		writer = w;
	}
	
	Books(Books copy) {
		title = copy.title;
		writer = copy.writer;
	}
	
	void print ( ) {
		System.out.println("�� �� : "+title);
		System.out.println("�� �� : "+writer);
	}
	
}

public class Book {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Books book1 = new Books("c�� ���̴� �׸�å", "ANK");
		System.out.println(book1.title);
		System.out.println(book1.writer);
		
		Books book2 = new Books(book1);
		System.out.println(book2.title);
		book2.writer = "Ȧ����";
		System.out.println(book2.writer);
	}

}
