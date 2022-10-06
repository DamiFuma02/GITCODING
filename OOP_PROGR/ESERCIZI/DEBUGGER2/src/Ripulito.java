public class Ripulito {
    /**
     * VETTORE INPUT
     */
    private int[] aa;
    /**
     * VETTORE COPIA
     */
    private int[] x;
    /**
     * LUNGHEZZA ARRAY AA
     */
    private int ll;


    /**
     * COSTRUTTORE
     * @param xx array di interi
     */
    public void s(int xx[]) {
        this.aa = xx;
        this.ll = xx.length;
        this.x = new int[ll];
        foo(0, ll - 1);
    }
    private void foo(int i, int j) {
        if (i < j) {
            int k = i + (j - i) / 2;
            // DIVIDE I VETTORI
            foo(i, k);
            foo(k + 1, j);

            // UNIONE DI AA[i;k] e AA[k+1;j]
            mp(i, k, j);
        }
    }

    private void mp(int jj, int ii, int kk) {
        // COPIA IL VETTORE AA in X
        for (int i = jj; i <= kk; i++) {
            x[i] = aa[i];
        }

        int i = jj;
        int j = ii + 1;
        int k = jj;

        // AGGIORNAMENTO DEL VETTORE A IN ORDINE CRESCENTE
        while (i <= ii && j <= kk) {
            if (x[i] <= x[j]) {
                aa[k] = x[i];
                i++;
            } else {
                aa[k] = x[j];
                j++;
            }
            k++;
        }


        while (i <= ii) {
            aa[k] = x[i];
            k++;
            i++;
        }

    }
}