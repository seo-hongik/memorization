package exam01;


class Calculator{
	
	void add(int num1,int num2) {
		System.out.println(num1+num2);
				
		
	}
	
	void sub(int num1, int num2) {
		
		System.out.println(num1-num2);
	}
	
	void mul(int num1, int num2) {
		
		System.out.println(num1-num2);
	}
	void div(int num1, int num2) {
		
		System.out.println(num1-num2);
	}
	
}

public class Exam01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		int num1 =10;
		int num2=5;
		char op='+';
		
		Calculator calc1=new Calculator();
		
		
		switch(op) {
		case '+':  
			//System.out.println(num1+num2);
			calc1.add(num1, num2);
			break;
			
		case '-':  
			//System.out.println(num1+num2);
			calc1.sub(num1, num2);
			break;
		
		case '*':  
			//System.out.println(num1+num2);
			calc1.mul(num1, num2);
			break;
		case '/':  
			//System.out.println(num1+num2);
			calc1.div(num1, num2);
			break;
		
			
		}
	}

}