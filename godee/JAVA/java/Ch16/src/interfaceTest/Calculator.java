//��Ű�� �̸��� interfaceTest�Դϴ�.
package interfaceTest;


//Calculator Ŭ������ �����մϴ�. 
//Calculator Ŭ���� Calc �������̽��� �����մϴ�.


/* �������̵� ���ҽ�
- The type Calculator must implement the inherited abstract method Calc.times(int, 
		 int)
		- The type Calculator must implement the inherited abstract method Calc.divide(int, 
		 int)
		- The type Calculator must implement the inherited abstract method Calc.add(int, 
		 int)
		- The type Calculator must implement the inherited abstract method 
		 Calc.substract(int, int)*/


public abstract class Calculator implements Calc {

	@Override
	public int add(int num1, int num2) {
		// TODO Auto-generated method stub
		return num1+num2;
	}

	@Override
	public int substract(int num1, int num2) {
		// TODO Auto-generated method stub
		return num1-num2;
	} //�߻�Ŭ����

	
	
	
	
	
}
