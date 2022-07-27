import java.util.Stack;

public class Memoization {
    public static int f(int u, int v, int x, int y){   //u,v,x,y >= 0
        if ((x == u) &&  (y == v)){
            return 0;
        } else if (x == 0) {
            return (u==0)? 0 : 1;
        } else if (y == 0){
            return (v==0)? 0 : 1;
        } else {
            return f(u,v,x-1,y) + f(u,v,x,y-1);
        }
    }



    public static long fIter(int u, int v, int x, int y){
        long c=0;
        Stack<int[]> s = new Stack<>();
        s.push(new int[]{x,y});
        while (!s.empty()){
            int[] r = s.pop();
            x = r[0];
            y = r[1];
            if (x==u && y==v){
                ; //NON ESEGUE NIENTE
            } else if (x==0){
                c+=(u==0)? 0 : 1;
            } else if (y==0){
                c+=(v==0)? 0 : 1;
            } else {
                s.push(new int[]{x,y-1});
                s.push(new int[]{x-1,y});
            }
        }
        return c;
    }










    private static int UNKNWON = -1;

    public static int fMem(int u, int v, int x, int y){
        // mem[0]=u , ... , mem[3]=y
        int[][] mem = new int[x+1][y+1];

        for (int k = 0; k <=x ; k++) {
            for (int l = 0; l <=y ; l++) {
                if (k==0) mem[k][l] = (u==0)? 0 : 1;
                else if (l==0) mem[k][l] = (v==0)? 0 : 1;
                else if (u==k && v==l) mem[k][l]=0;
                else mem[k][l] = UNKNWON;
            }
        }

        return fMemRec(u,v,x,y,mem);
    }

    private static int fMemRec(int u, int v, int x, int y, int[][] mem) {
        if (mem[x][y]==UNKNWON){
            if ((x == u) &&  (y == v)){
                mem[x][y] = 0;
            } else if (x == 0) {
                mem[x][y] =  (u==0)? 0 : 1;
            } else if (y == 0){
                mem[x][y] =  (v==0)? 0 : 1;
            } else {
                mem[x][y] =  fMemRec(u,v,x-1,y,mem) + fMemRec(u,v,x,y-1,mem);
            }
        } return mem[x][y];
    }


}
