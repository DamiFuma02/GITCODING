import java.util.Stack;

public class Memoization {

    public static String[] diff( String u, String v ) {

        if ( u.equals("") || v.equals("") ) {

            return new String[] { u, v };

        } else if ( u.charAt(0) == v.charAt(0) ) {

            return diff( u.substring(1), v.substring(1) );

        } else {

            String[] x = diff( u.substring(1), v );
            String[] y = diff( u, v.substring(1) );

            if ( x[0].length() < y[0].length() ) {
                return new String[] { u.charAt(0)+x[0], x[1] };
            } else {
                return new String[] { y[0], v.charAt(0)+y[1] };
            }
        }
    }

    public static String[] diffMem(String u, String v){
        String[][][] mem = new String[u.length()+1][v.length()+1][2];
        for (int i = 0; i <= u.length(); i++) {
            for (int j = 0; j <= v.length(); j++) {
                mem[i][j] = null;
            }
        }
        return diffMemRec(u,v,mem);
    }

    private static String[] diffMemRec(String u, String v, String[][][] mem) {
        if (mem[u.length()][v.length()] == null){
            if ( u.equals("") || v.equals("") ) {

                return new String[] { u, v };

            } else if ( u.charAt(0) == v.charAt(0) ) {

                mem[u.length()][v.length()] =  diffMemRec( u.substring(1), v.substring(1),mem );

            } else {

                String[] x = diffMemRec( u.substring(1), v ,mem);
                String[] y = diffMemRec( u, v.substring(1),mem );

                if ( x[0].length() < y[0].length() ) {
                    mem[u.length()][v.length()] = new String[] { u.charAt(0)+x[0], x[1] };
                } else {
                    mem[u.length()][v.length()] = new String[] { y[0], v.charAt(0)+y[1] };
                }
            }
        } return mem[u.length()][v.length()];
    }


    public static long manhattan3D( int i, int j, int k ) { // i, j, k ≥ 0
        Counter v = new Counter();
        manhattan3DRec( i, j, k, v );
        return v.count();
    }
    private static void manhattan3DRec( int i, int j, int k, Counter v ) {
        if ( (i == 0) && (j == 0) && (k == 0) ) {
            v.incr();
        } else {
            if ( i > 0 ) { manhattan3DRec( i-1, j, k, v ); }
            if ( j > 0 ) { manhattan3DRec( i, j-1, k, v ); }
            if ( k > 0 ) { manhattan3DRec( i, j, k-1, v ); }
        }
    }

    private static final long UNKNOWN = -1;


    public static long manhattan3dMem(int i, int j, int k) {   // i,j,k >= 0
        Counter v = new Counter();
        long[][][] h = new long[i+1][j+1][k+1];
        for (int l = 0; l <= i; l++) {
            for (int m = 0; m <= j ; m++) {
                for (int n = 0; n <= k ; n++) {
                    h[l][m][n] = UNKNOWN;
                }
            }
        }
        mem(i,j,k,v,h);
        return v.count();

    }

    private static void mem(int i, int j, int k, Counter v, long[][][] h) {
        if(h[i][j][k] == UNKNOWN){
            if ( (i == 0) && (j == 0) && (k == 0) ) {
                v.incr();
                h[i][j][k]=1;
            } else {
                long n = v.count();
                if (i>0){
                    mem( i-1, j, k, v ,h);
                } else if ( j > 0 ){
                    mem( i, j-1, k, v ,h );
                } else if ( k > 0 ) {
                    mem( i, j, k-1, v ,h);
                }
                h[i][j][k]=n+v.count();
            }
        } else {
            v.add(h[i][j][k]);
        }
    }



    public static long mahnattan3dIter(int i, int j, int k){    // i,j,k >= 0
        Counter v = new Counter();
        Stack<int[]> s = new Stack<>();
        s.push(new int[]{i,j,k});
        do{
            int [] f = s.pop();
            if ( (f[0] == 0) && (f[1] == 0) && (f[2] == 0) ) {
                v.incr();
            } else {
                if ( f[0] > 0 ) { s.push( new int[]{f[0]-1, f[1], f[2] }); }
                if ( f[1] > 0 ) { s.push( new int[]{ f[0], f[1]-1, f[2]}); }
                if ( f[2] > 0 ) { s.push( new int[]{ f[0], f[1], f[2]-1}); }
            }
        } while (!s.empty());
        return v.count();
    }






}
