public class Main {

    private static final long UNKNOWN = -1;

    public static void main(String[] args) {
	// write your code here
        int a = 9, b = 8, c = 12;
        //System.out.println(rec(a, b, c));
        //System.out.println(recMem(a, b, c));
        IntQueue q = new IntQueue(2);
        q.add(7);
        q.add(5);

        q.add(4);
        System.out.println(q.peek());
        System.out.println(q.poll());
        System.out.println(q.peek());
        //System.out.println(tessellations(4, 5));
        /*System.out.println(Giugno.st(6, 3));
        System.out.println(Giugno.stIter(6, 3));*/
    }

    public static long rec( int x, int y, int z ) { // 1 ≤ x, y ≤ z
        if ( (x == 1) || (y == z) ) {
            return 1;
        } else {
            return rec( x-1, y, z ) + x * rec( x, y+1, z );
        }
    }

    public static long recMem(int x, int y, int z){
        // 1 <= a <= x   --> length = x+1 considerando x come indice finale di mem
        // y <= b <= z   --> length = (z-y)+1 considerando z come indice finale
        // z costante
        long[][] mem = new long[x+1][z+1];
        for (int i = 0; i <= x; i++) {
            for (int j = 0; j <= z; j++) {
                mem[i][j] = UNKNOWN;
            }
        }
        return recMemRec(x,y,mem);
    }

    private static long recMemRec(int x, int y, long[][] mem) {
        int z = mem[0].length-1;
        if (mem[x][y] == UNKNOWN){
            // CASI BASE RICORSIONE
            if ( (x == 1) || (y == z) ) {
                mem[x][y]= 1;
            }else {
                mem[x][y] = recMemRec( x-1, y, mem ) + (x *recMemRec( x, y+1, mem ));
            }
        }
        return mem[x][y];
    }










}
