//��Ű�� �̸��� interfaceTest�Դϴ�. 
package interfaceTest;

//Ŭ���� �̸��� calculatorTest�Դϴ�.
public class CalculatorTest {
	
	//main()�޼��尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		int num1=10;
		int num2=5;
		
		CompleteCalc calc = new CompleteCalc();
		
		
		
		//���ϱ� �޼��带 ȣ���� �� �� ������� ����մϴ�.
		System.out.println(calc.add(num1, num2));
		//���� �޼��带 ȣ���� �� �� ������� ����մϴ�.
		System.out.println(calc.substract(num1, num2));
		//���ϱ� �޼��带 ȣ���� �� �� ������� ����մϴ�.
		System.out.println(calc.times(num1, num2));
		//������ �޼��带 ȣ���� �� �� ������� ����մϴ�.
		System.out.println(calc.divide(num1, num2));
		//showInfo() �޼��带 ȣ�� �մϴ�.
		calc.showInfo();
		//������ �޼��带 ȣ���մϴ�. 
		calc.description();
		
		
		
		
	
		Calc calcTest=new CompleteCalc();
		System.out.println(calcTest.add(num1, num2));
		System.out.println(calcTest.substract(num1, num2));
		System.out.println(calcTest.times(num1, num2));
		System.out.println(calcTest.divide(num1, num2));
		//showInfo()�� ���� Ǯ����
		
		//�������� description()ȣ���մϴ�. 
		
		calcTest.description();
	
		int[]arr={1,2,3,4,5};
		
		//�̰� �м��ϱ� �������̽��ϱ� CalculatorTest�� ���� ����
	
		//�����޼��带 ȣ���Ͻÿ�
		System.out.println(Calc.total(arr));
		
	}

}