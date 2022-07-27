public class Memoization {
    public static int q( int[] s ) { // s.length > 0
        int n = s.length;
        int[] t = new int[ n ]; t[0] = s[0];
        for ( int k=1; k<n; k=k+1 ) {
            int i=k-1;
            while ( (i >= 0) && (t[i] > s[k]) ) {
                t[i+1] = t[i]; i = i - 1;
            }
            t[i+1] = s[k];
        }
        return qRec( s, t, n, 0, 0 );
        return qMem( s, t, n, 0, 0 );
    }


    private static int qRec( int[] s, int[] t, int n, int i, int j ) {
        if ((i == n) || (j == n)) {
            return 0;
        } else if (s[i] == t[j]) {
            return 1 + qRec(s, t, n, i + 1, j + 1);
        } else {
            return Math.max(qRec(s, t, n, i + 1, j), qRec(s, t, n, i, j + 1));
        }
    }





}
