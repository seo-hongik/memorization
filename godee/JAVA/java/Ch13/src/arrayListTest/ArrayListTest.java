//��Ű���̸��� arrayListTest �Դϴ�.
package arrayListTest;


import java.util.ArrayList;



//Ŭ�����̸��� ArrayListTest �Դϴ�.
public class ArrayListTest {
	//���� �޼���()�� �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		//ArrayList�� �����մϴ�.
		ArrayList<Book> library=new ArrayList<Book>();
		
		Book book;
		//add()�޼���� ��Ұ��� �߰�
		library.add(new Book("HTML�� ���̴� �׸�å","�̿���"));
		library.add(new Book("�ڹٰ� ���̴� �׸�å","�輺��"));	
			
		
		
		//�迭�� �߰��� ��� ������ŭ ����մϴ�.
		for(int i=0; i<library.size(); i++) {
			
			Book book=library.get(i);
			book.showBookInfo();
			
		}
		
		//���� for ��
		
	//	for(Book book:library) {
			
	//		book.showBookInfo();
		}
		
		
		
		
		
	}

}
