//package�̸��� virtualMethodTest�Դϴ�.
package virtualMethodTest;

//Ʋ���� �̸��� TestA�Դϴ�.
public class TestA {
	//main()�� �����Ǿ����ϴ�.
	int num;
	
	void aaa() {
		
		System.out.println("aaa() ����մϴ�.");
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//�ʵ�(��� ����)�� �������մϴ�.
		
		TestA a1=new TestA();
		a1.aaa();
		TestA a2= new TestA();
		a2.aaa();
		
	}

}
