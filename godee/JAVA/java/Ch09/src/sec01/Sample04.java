package sec01;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Sample04 {

	
	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("���ڿ��� �Է��ϼ���");
		
		BufferedReader br= new BufferedReader(new InputStreamReader(System.in));
		String str1 =br.readLine();
		
		System.out.println("�߰��� ���ڿ��� �Է��Ͻÿ�");
		
		String str2 = br.readLine();
		
		StringBuffer sb =new StringBuffer(str1);
		
		sb.append(str2);
		
		System.out.println(sb);
	}
}