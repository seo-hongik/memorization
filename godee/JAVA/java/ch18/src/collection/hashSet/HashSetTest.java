//��Ű�� �̸��� collection.hashSet�Դϴ�.
package collection.hashSet;

import java.util.HashSet;

//Ŭ���� �̸��� HashSetTest�Դϴ�.
public class HashSetTest {
	//main() �޼��尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//hashSet��ü�� �����մϴ�. 
		
		HashSet<String> hashset =new HashSet<String>();
		
		//���ڿ� Ŭ������ �̿��Ͽ� ȸ���� �߰��մϴ�. 
		hashset.add(new String("���̾�"));
		hashset.add(new String("����ġ"));
		hashset.add(new String("����"));
		
		//hashSet ��ü�� ����մϴ�. 
		System.out.println(hashset);
		
		
				
	}

}