//��Ű���̸��� dailyTest�Դϴ�.
package dailyTest;



//Ŭ���� �̸��� MyDate�Դϴ�.
public class MyDate {

	//field(�������)�� �����մϴ�.
	
	//public�� private �����մϴ�.
	/*
	public int day; 	//��
	
	public int month; 	//��
	
	public int year;	//�⵵
	*/
	
	private int day; 	//��
	
	private int month; 	//��
	
	private int year;	//�⵵
	
	//ó���� boolean ������ ���������൵ �޼ҵ尡 boolean�̸� ����� �� �ִ�.
	
	//�� �ޱ�
	public int getDay() {
		
		return day;
	}
	//���ޱ�
	public int getMonth() {

		return month;
	}
	//�⵵ �ޱ�
	public int getYear() {

		return year;
	}
	

	MyDate(){
		
		
		
		
	}
	
	
	MyDate(int day, int month, int year){

		this.day=day;
		this.month=month;
		this.year=year;
		


	}
	

	//�ش���� ���� �����ϴ� �޼���
	public void setDay(int day) {
		//2���� 1~29�ϱ��� ����	
		
		if(month==2) {
			
			if(day<1||day>29) {
				System.out.println("���� �Դϴ�.");
				
			}else{
				this.day=day;
			}
		}
	}
	
	//�ش���� �����ϴ� �޼���
		public void setMonth(int month) {
					
			this.month=month;
			}

		//�ش�⵵�� �����ϴ� �޼���
		public void setYear(int year) {
					
			this.year=year;
			}

		
		public boolean isVaild() {
			if(year==2020) {
				if((month==1||month==3||month==5||month==7||month==8||month==10||month==12)&&(day>0&&day<=31)) {
					return true;
					
				}else if((month==2||month==4||month==6||month==9||month==11)&&(day>0&&day<=30)) {
					return true;
					
				}else {
					return false;
				}			
		
			} else {
				return false;
			}
//			return false;
			 
		}


	
}