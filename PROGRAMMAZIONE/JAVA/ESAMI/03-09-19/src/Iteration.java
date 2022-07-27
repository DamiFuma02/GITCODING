import java.util.Stack;
import java.util.Vector;

public class Iteration {
    public static Vector<String> perm( String u ) { // u non vuota
        Vector<String> p = new Vector<String>();
        permRec( u, 0, p );
        return p;
    }
    public static void permRec( String u, int k, Vector<String> p ) {
        int n = u.length();
        if ( k == n-1 ) {
            p.add( u );
        } else {
            permRec( u, k+1, p );
            for ( int i=k+1; i<n; i=i+1 ) {
                String v = u.substring( 0, k ) + u.substring( i, i+1 ) + u.substring( k+1, i )
                        + u.substring( k, k+1 ) + u.substring( i+1, n );
                permRec( v, k+1, p );
            }}
    }


    public static Vector<String> permIter( String u ) { // u non vuota
        Vector<String> p = new Vector<String>();
        int n = u.length(), k;
        Stack<String> s = new Stack<String>();
        Stack<Integer> t = new Stack<Integer>();
        s.push( u ); t.push( 0 );
        do {
            k = t.peek();
            if ( k == n-1 ) {
                p.add( u );
            } else {
                t.push(k+1);
                s.push(u);
                for (int i = k+1; i <n ; i++) {
                    String v = u.substring(0,k)+u.substring(i,i+1)+u.substring(k+1,i)+u.substring(k,k+1)+u.substring(i+1,n);
                    s.push(v);
                    t.push(k+1);
                }
            }
        } while ( !s.empty() );
        return p;
    }



    public static int pow4(int n){   // n > 0

        // INVARIANTI
        int x=0;        // x <= n^2
        int y = x*x;    // y = x^2
        int z = 2*x+1;  // z = 2x+1
        int u = Math.min(y+z,n*n);  // u = min(y+z,n^2)

        while (x < u){
            x += 1;
            y += (2*x-1);
            z += 2;
            if ((y+z) <= (n*n)){
                u = y+z;
            }
        }
        return y;




    }




}
