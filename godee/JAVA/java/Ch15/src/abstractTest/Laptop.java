//package�̸��� abstractTest�Դϴ�.
package abstractTest;

//Laptop Ŭ������ �����մϴ�.
//Laptop Ŭ������ Conputer Ŭ������ ��� �޽��ϴ�.

/*
	Multiple markers at this line
- The type Desktop must implement the inherited abstract method 
 Computer.typing()
- The type Desktop must implement the inherited abstract method 
 Computer.display()
//���1 source�� ��� 2 Desktop�� ���콺�� ���� ���3 class�տ� abstract�� ���δ�(���������� ���� ��� ���⼱ typing())
*/

//Laptop �߻�Ŭ������ Computer �߻�Ŭ������ ��� �޽��ϴ�.
public abstract class Laptop extends Computer {

	@Override
	public void display() {
		// TODO Auto-generated method stub
		
		//�߻� �޼����� ��ü �ڵ带 �ۼ��մϴ�.
		System.out.println("Laptop display()");
		
	}

	

}
