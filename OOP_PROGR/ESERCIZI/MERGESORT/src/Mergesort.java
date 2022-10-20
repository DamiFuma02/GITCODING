public class Mergesort {
    // COPIATO DALLA PAGINA DI PROGRAMMAZIONE
    // https://users.dimi.uniud.it/~claudio.mirolo/teaching/programmazione/pages/java/MergeSort.java
    // APPROCCIO BOTTOM-UP
    private static int[] merge( int q, int n, int[] v ) {

        int[] u = new int[ n ];
        int k = 0;
        int i = 0;
        int j = q;
        int s = q;
        int t = Math.min( s+q, n );

        while ( k < n ) {

            if ( (i == s) && (j == t) ) {
                i = t;
                j = Math.min( t+q, n );
                s = j;
                t = Math.min( s+q, n );
            } else if ( j == t ) {
                u[k] = v[i];
                k = k + 1;
                i = i + 1;
            } else if ( i == s ) {
                u[k] = v[j];
                k = k + 1;
                j = j + 1;
            } else if ( v[i] < v[j] ) {
                u[k] = v[i];
                k = k + 1;
                i = i + 1;
            } else {
                u[k] = v[j];
                k = k + 1;
                j = j + 1;
            }
        }
        return u;
    }


    /**
     * @param v vettorej da dia
     * @return vettor eorindeoanoao
     */
    public static int[] sort( int[] v ) {

        int n = v.length;
        int[] u = v;

        int q = 1;

        while ( q < n ) {

            v = merge( q, n, v );

            q = 2 * q;  // show( v );
        }
        return v;
    }


}
