
public class Ex18 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[][] score = {
				{100, 100, 100}
				,{20, 20, 20}
				,{30, 30, 30}
				,{40, 40, 40}
				,{50, 50, 50}
		}; // �� �л��� �������� ���߹迭�� ������ �Ӵϴ�.
		
		System.out.println("  ��ȣ     ����     ����     ����     ����     ���"); // �� ������� �����ݴϴ�.
		System.out.println("================================"); // ������ �׾��ݴϴ�.
		
		
		// ������ �迭�� ����� �ִ� ���� �ҷ� �� �� �ִ� ������ �������ݴϴ�.
		for(int i=0; i<score.length; i++) {
			System.out.printf("%3d", i+1); // �л��� �ε����� �����ϱ� ���� ��¹��Դϴ�.
			int sum=0; // �л��� ������ ���� ��� �δ� ������ �����մϴ�.
			double avg = 0.0f; // �л��� ������ ����� ���� ���� double���� ������ ����� �ݴϴ�.
			for(int j=0; j<score[i].length; j++) {
				System.out.printf("%5d", score[i][j]);
				sum += score[i][j]; // ������ ����� ���ϱ����� �迭�� ���� ���� �̸� �����ص� ���� sum�� �����ݴϴ�.
			} avg = sum/score[i].length; // ������ ���� �迭�� ���� ������ ����� �����ݴϴ�.
			System.out.printf("%5d", sum); // ������ ���� ����մϴ�. ������ �������־� ������ �������ݴϴ�.
			System.out.printf("%6.1f", avg); // �̸� ���� ���صξ��� ��� ���� �հ� ���������� ������ �������־� ����մϴ�.
			System.out.println(); // ������ �մϴ�.
		}  System.out.println("================================"); //������ �׾��ݴϴ�.
		System.out.print("����:");
		// ������ ���� ���ϱ� ���� for���� ���� �ε��� ���� �������� �������� ������ݴϴ�.
		for(int i=0; i<score[i].length; i++) {
			int allSum =0; // ������ ������ ���� ��� ���� ��� ������ ����ϴ�.
			for(int j=0; j<score.length; j++) {
				 allSum += score[j][i];
			} System.out.printf("%5d", allSum); // ������ ������ ����մϴ�.
		}
	}
}
