
public class Ex18 {

 public static void main(String[] args) {
  // TODO Auto-generated method stub
  
	//������ �迭 ����
  int [][] score = {
    {100,100,100},
    {20,20,20},
    {30,30,30},
    {40,40,40},
    {50,50,50}
  };
  
  //6�� ũ�⸦ ������ ������ ���� ���� �迭 ����
  String[] menu = {"��ȣ","����","����","����","����","���"};
  
  //3�� ũ�⸦ ������ �ʱⰪ 0���� ä���� �迭 ����
  int deptSum[] = new int[3];
  
  //�޴� ���(��ȣ ���� ���� ���� ���� ���)
  for(String str : menu) {
   System.out.printf("%6s",str);
  }
  
  System.out.println();//����
  
  System.out.println("========================================");
  
  
  for(int i=0;i<score.length;i++) {
   int sum=0;
   System.out.printf("%4d",i+1);//�ε����� 0 ���� �����ϴϱ� +1�� ��
   for(int j=0;j<score[i].length;j++) {
    System.out.printf("%4d",score[i][j]);
    
    //���� ���� ��
   sum+=score[i][j];
    
    //�� ���� ���� ��
    // 00 10 20 30 40 , 01 11 21 31 41 , 02 12 22 32 42 
    deptSum[j]+=score[i][j];
   }
   float avg = (float)sum/score[i].length;
   System.out.printf("%4d",sum);
   System.out.printf("%6.1f",avg);
   System.out.println();
  }
  System.out.println("========================================");
  System.out.print("���� :");
  
  // �� ���� ���� ����
  for(int a : deptSum) {
   System.out.printf("%4d",a);
  }

 }

}