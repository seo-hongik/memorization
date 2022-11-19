import java.util.ArrayList;

class StaticExam{
    //1 static ����(class ����)
    private static final int immutable;
    private static final ArrayList<Integer> idx = new ArrayList<>();
    private static int mutable;
    private int nonStatic_Var = 0;

    //2 static �ʱ�ȭ ��
    static{
        immutable = 100;
        mutable = 100;

        for(int i = 0 ; i < 12; ++i){
            idx.add(i);
        }
    }

    //3 static �޼���
    public static void showStaticVars(){
        System.out.println(immutable);
        System.out.println(idx);
        System.out.println(mutable);
        //System.out.println(nonStatic_Var); non static �������� ���� �� �� ����.
    }

    //4 ��ø Ŭ����
    public static class NestedClass {
        int value;

        public void getValue(){
            System.out.println("��ø Ŭ������ �����");
            //this.value = nonStatic_Var; // ��ø class���� �ܺ� class�� �ν��Ͻ� ������ ���� �� �� ����.
            showStaticVars(); // �޼���� ���� ����.
        }
    }

    public void useNestedClassMethod(){
        NestedClass nc = new NestedClass(); // ��ø Class�� instance�� ����
        nc.getValue();
    }

}
public class StaticClass {
    public static void main(String args []){
        System.out.println(Math.PI);// static ���� : Math.PI
        System.out.println(Math.pow(2, 4));// static �޼��� : Math.pow(), System.

        StaticExam se = new StaticExam();
        StaticExam.showStaticVars(); 

        se.useNestedClassMethod();

    }
}
 
 