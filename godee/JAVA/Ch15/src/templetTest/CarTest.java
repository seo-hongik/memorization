//package�̸��� templetTest�Դϴ�.
package templetTest;
//CarTest Ŭ������ ���ǵǾ����ϴ�.
public class CarTest {

//	main()�޼ҵ尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//AI�ڵ��� ����
		Car myCar=new AICar();
		myCar.run();
		
		//Manual �ڵ����� �����մϴ�.
		
		Car yourCar=new ManualCar();
		yourCar.run();
		

	}

}
