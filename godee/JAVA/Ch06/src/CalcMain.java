//������
public class CalcMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		System.out.println(concatenate("100","200"));//�ݹ��� ����
		
		String[] strArr= {"100","200","300"};
		
		System.out.println(concatenate(strArr));//�ݹ��� ���۷���
		
	/*3*/System.out.println(concatenate(new String[] {"100","200","300"}));//�ݹ��� ���۷���
	/*4*/System.out.println(concatenate(",",new String[] {"100","200","300"}));//�ݹ��� ���۷���
	/*5*/System.out.println("["+concatenate(new String[] {"1","2","3"})+"]");

	}
	
		static String concatenate(String str1, String...str2) {
		String result="";
		
		for(String i:str2) {
			result=result+i+str1;
			//result+=i+str1;
		}
		
		return result;
		
	}
	
	
	/*1*/static String concatenate(String str1, String str2) {

			String result="";
			result=str1+str2;
			return result;
		
	}
	
	
	/*2*/static String concatenate(String...str) {//�����迭
			String result="";
			
     		
     	 	for(int i=0; i<str.length; i++) {
			result+=str[i];
			}
			
			
			
			
     	 		
		 	//��庥���� for
			//for(String i : str) {
			//	result+=i;
			//}
		
			return result;
		
	}

}