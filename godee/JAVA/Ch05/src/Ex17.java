
public class Ex17 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//�Խ��� �л������ �����ϰ� ����
		int[][] score = {
				{100,100,100},
				{20,20,20},
				{60,60,60},
				{80,80,80}
		};
		
		int sum =0;
		for(int i=0; i<score.length; i++) {//��κ�
			for(int j=0; j<score[i].length; j++) {
				//���κ�
				
				System.out.printf("%5d",score[i][j]);
				
			}
			System.out.println();
			
		}
	}

}