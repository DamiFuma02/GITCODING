import java.util.Stack;

public class Giugno {


    public static long st (int n, int k){   // n,k > 0
        long[] ct = new long[] {0};
        sRec(n,k,1,ct);
        return ct[0];

    }

    private static void sRec(int n, int k, int q, long[] ct) {
        if ((k==1)||(k==n)){
            ct[0] += q;
        } else {
            sRec(n-1,k-1,q,ct);
            sRec(n-1,k,k*q,ct);
        }
    }


    public static long stIter( int n, int k ) { // n, k > 0
        long[] ct = new long[] { 0 };

        Stack<int[]> stack = new Stack<int[]>();
        int[] f = new int[]{n,k,1};
        stack.push( f );

        while(!stack.empty()){
            f = stack.pop();   // {n , k , q }
            // if ( k == 1 ) || ( k == n )
            if ( (f[1] == 1) || (f[1] == f[0]) ) {
                ct[0] = ct[0] + f[2];   ///ct[0] +=  q
            } else {
                // INVERTIRE L'ORDINE RISPOETTO AL PROGRAMMA RICORSIVO
                // rec(n-1 , k, k*q)
                stack.push( new int[] { f[0]-1,f[1],f[1]*f[2] } );
                // rec(n-1, k-1 , q)
                stack.push( new int[] { f[0]-1,f[1]-1,f[2] } );
            }
        }
        return ct[0];
    }



    private static int[] ldiffRec( String u, String v ) {

        if ( u.equals("") || v.equals("") ) {

            return new int[] { u.length(), v.length() };

        } else if ( u.charAt(0) == v.charAt(0) ) {

            return ldiff( u.substring(1), v.substring(1) );

        } else {
            int[] x = ldiff( u.substring(1), v );
            int[] y = ldiff( u, v.substring(1) );

            return ( x[0] < y[0] ) ?
                    new int[] { x[0]+1, x[1] } :
                    new int[] { y[0], y[1]+1 };
        }
    }


    public static int[] ldiff(String u, String v){
        int ul = u.length();
        int vl = v.length();

        int[][][] mem = new int[ul+1][vl+1][2];
        for (int i = 0; i <=ul ; i++) {
            for (int j = 0; j <=vl ; j++) {
                mem[i][j] = null;
            }
        }



        return ldiffMem(u,v,mem);
    }

    private static int[] ldiffMem(String u, String v, int[][][] mem) {
        int ul = u.length();
        int vl = v.length();

        if (mem[ul][vl] == null){

            if ( u.equals("") || v.equals("") ) {

                mem[ul][vl] = new int[] { u.length(), v.length() };

            } else if ( u.charAt(0) == v.charAt(0) ) {

                mem[ul][vl] = ldiffMem( u.substring(1), v.substring(1),mem );

            } else {
                int[] x = ldiffMem( u.substring(1), v,mem );
                int[] y = ldiffMem( u, v.substring(1),mem );

                mem[ul][vl] = ( x[0] < y[0] ) ?
                        new int[] { x[0]+1, x[1] } :
                        new int[] { y[0], y[1]+1 };
            }



        }
        return mem[ul][vl];






    }


}
