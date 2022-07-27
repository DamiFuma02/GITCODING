import java.util.Stack;

public class Esame {

    // esercizio 1
    /*Un array v di double rappresenta uno heap se e solo se vale la relazione v[i] ≥ v[j] per ogni coppia (i, j) di indici
    dell’array tali che j = 2i+1 oppure j = 2i+2 — in altri termini quando l’indice i è il quoziente della divisione per due
    di j–1.*/
    //heapCheck( new double[] { 8.5, 4.7, 8.5, 2.8, 3.2, 5.0, 6.3, 1.5, 2.6 } ) → true
    //heapCheck( new double[] { 8.5, 4.7, 8.5, 2.8, 4.8, 5.0, 6.3, 1.5, 2.6 } ) → false


    public static boolean heapCheck(double[] v){
        int n = v.length;
        // 2i+2 <= n - 1  -->  i < (n-3)/2
        // ultimo indice raggiungibile da j
        for (int i = 0; i <= (int)(n-3)/2; i++) {
            if ((v[i]>=v[2*i+1]) && (v[i]>=v[2*i+2])){
                ;   // CONTINUA CON LA RICERCA
            } else return false;
        }
        return true;
    }

    // esercizio 2

    /*Una sequenza s di double si definisce smorzantesi (damping) se ogni suo elemento ha un valore che ricade
        strettamente all’interno dell’intervallo delimitato dai due elementi precedenti, quando ci sono entrambi. Formalmente:
        min( s[i–2], s[i–1] ) < s[i] < max( s[i–2], s[i–1] ) per i ≥ 2
    */



    public static int llds( double[] s ) { // s[i] > 0 per i in [0,n-1], dove n = s.length

        return lldsRec( s, 0, UNKNOWN, UNKNOWN );
    }

    private static int lldsRec( double[] s, int k, int i, int j ) {

        if ( k == s.length ) {
            return 0; // coda di s vuota
        } else if ( (i == UNKNOWN) ||
                ((Math.min(s[i],s[j]) < s[k]) && (s[k] < Math.max(s[i],s[j]))) ) {
            return Math.max( 1+lldsRec(s,k+1,j,k),
                    lldsRec(s,k+1,i,j) ); // s[k] può essere scelto o meno
        } else {
            return lldsRec( s, k+1, i, j ); // s[k] non può essere scelto
        }
    }

    private static final int UNKNOWN = -1; // indice i indefinito



    public static int lldsMem(double[] s){
        int n = s.length;
        int[][][] mem = new int[n+1][n+1][n+1];
        for (int i = 0; i <=n ; i++) {
            for (int j = 0; j <=n ; j++) {
                for (int k = 0; k <=n ; k++) {
                    if (i == n){
                        mem[i][j][k] = 0;
                    } else {
                        mem[i][j][k] = UNKNOWN;
                    }
                }
            }
        }
        return lldsRecMem(s,0,UNKNOWN,UNKNOWN,mem);
    }

    private static int lldsRecMem(double[] s, int k, int i, int j, int[][][] mem) {
        if (mem[k][i][j] == UNKNOWN){
            if ( k == s.length ) {
                mem[k][i][j] = 0; // coda di s vuota
            } else if ( (i == UNKNOWN) ||
                    ((Math.min(s[i],s[j]) < s[k]) && (s[k] < Math.max(s[i],s[j]))) ) {
                mem[k][i][j] = Math.max( 1+lldsRecMem(s,k+1,j,k,mem),
                        lldsRecMem(s,k+1,i,j,mem) ); // s[k] può essere scelto o meno
            } else {
                mem[k][i][j] = lldsRecMem( s, k+1, i, j ,mem); // s[k] non può essere scelto
            }
        } return mem[k][i][j];
    }


    public static int huffmanCodeSize( Node root ) {

        long bits = recSize( root, "" ); // visita dell'albero di Huffman

        return (int) ( bits / 7 ) + ( (bits%7 > 0) ? 1 : 0 );
    }

    private static long recSize( Node n, String path ) {

        if ( n.isLeaf() ) {
            return path.length() * n.weight();
        } else {
            return recSize( n.left(), path+"0" ) + recSize( n.right(), path+"1" );
        }
    }

    /*Completa le definizioni della classe Pair e del metodo codeSizeIter per trasformare la ricorsione in iterazione
        applicando uno stack.*/

    public static int codeSizeIter(Node root){
        long bits = 0;
        PairStack pairStack = new PairStack();
        pairStack.push(new Pair(root,""));
        do {
            Pair curr = pairStack.pop();
            Node n = curr.node;
            String path = curr.path;
            if (n.isLeaf()){
                bits += path.length()*n.weight();
            } else {
                pairStack.push(new Pair(n.right(),path+"1"));
                pairStack.push(new Pair(n.left(),path+"0"));
            }
        } while (!pairStack.empty());
        return (int) ( bits / 7 ) + ( (bits%7 > 0) ? 1 : 0 );

    }



}
