//package�� abstractTest �Դϴ�.
package abstractTest;


//Desktop Ŭ������ �����մϴ�.
//Desktop Ŭ������ Computer Ŭ������ ��� �޽��ϴ�.

/*
 	Multiple markers at this line
	- The type Desktop must implement the inherited abstract method 
	 Computer.typing()
	- The type Desktop must implement the inherited abstract method 
	 Computer.display()
	//���1 source�� ��� 2 Desktop�� ���콺�� ���� ���3 class�տ� abstract�� ���δ�(���������� ���� ���)
*/


public class Desktop extends Computer{

	@Override
	public void display() {
		// TODO Auto-generated method stub
		System.out.println("Decktop display()");
	}

	@Override
	public void typing() {
		// TODO Auto-generated method stub
		System.out.println("Decktop typing()");
	}
	
	/*@Override
	public void display() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void typing() {
		// TODO Auto-generated method stub
		
	}*/

	
}
