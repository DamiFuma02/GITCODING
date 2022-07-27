public class Dynamic {

    public static long q( int i, int j, int k ) {    // i, j, k >= 0
        long x = ( i < 2 ) ? i : q( i-2, j, k );
        long y = ( j < 2 ) ? j : q( i, j-2, k );
        long z = ( k < 2 ) ? k : q( i, j, k-2 );
        long m = x + y + z;
        return ( m == 0 ) ? 1 : m;
    }
    private static long UNKNOWN = -1;

    public static long qDyn(int i, int j, int k){
        // CASI BASE
        // i < 2 --> x = i   [0,1]
        // j < 2 --> y = j   [0,1]
        // k < 2 --> z = k   [0,1]
        // m = x+y+z --> [0,3]
        // (i==0 && j==0 && k==0) --> m==0 --> return 1;

        long x = (i%2==0)? 0 : 1;
        long y = (j%2==0)? 0 : 1;
        long z = (k%2==0)? 0 : 1;

        long m=0;
        long[][][] mem = new long[i+1][j+1][k+1];
        // CASO BASE
        mem[0][0][0]  = 1;

        /*
        // MATRICE PER SALVARE I DATI RELATIVI ALLE RICORSIONI
        for (int l = 0; l <=i ; l++) {
            for (int n = 0; n <=j ; n++) {
                for (int o = 0; o <=k ; o++) {
                    if ((l<2) && (n<2) && (o<2)){
                        long e = l+n+o;
                        mem[l][n][o]=(e==0)? 1 : e;
                    } else {
                        mem[l][n][o] = UNKNOWN;
                    }
                }
            }
        }
        */


        // STRUTTURA DI CONTROLLO
        for (int l = 0; l <=i ; l++) {
            for (int n = 0; n <=j ; n++) {
                for (int o = 0; o <= k; o++) {
                    x=(l<2)? l : mem[l-2][n][o];
                    y=(n<2)? n : mem[l][n-2][o];
                    z=(o<2)? o : mem[l][n][o-2];
                    m = (x+y+z);
                    mem[l][n][o] = (m==0)?1:m;

                    //System.out.println(m);
                }
            }
        }
        return mem[i][j][k];
    }



}
