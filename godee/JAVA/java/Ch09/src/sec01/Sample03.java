package sec01;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Sample03 {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("���ڿ��� �Է��ϼ���");
		
		BufferedReader br= new BufferedReader(new InputStreamReader(System.in));
		
		String str1=br.readLine();
		
		System.out.println("�˻�� �Է��Ͻÿ�");
		
		String str2 = br.readLine();
		
		char ch = str2.charAt(0);//char charAt(int index); : ���ڿ����� index�� ��ġ�� �ִ� ���ڸ� ��ȯ�մϴ�.
		
		int num= str1.indexOf(ch);// int indexOf(String ch) : �񱳴�� ���ڿ����� ch�� ���ʷ� �����ϴ� ��ġ�� ��ȯ 
		
		if(num!=-1) {
		System.out.println(ch+":"+num);
		}else {System.out.println("�˻��� ����� �����ϴ�.");
		
		}
	}

}