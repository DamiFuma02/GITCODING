public class MergeSort {
    private int[] ARR;
    private int[] X;
    private int n;

    public MergeSort(int[] a){
        this.ARR = a;
        this.n = a.length;
        this.X = new int[this.n];
        sort(0,this.n-1);
    }

    private void sort( int i, int j) {
        if (i<j) {
            // indice di mezzo del vettore ARR
            int k = i + (j - i) / 2;
            // PRIMA METÀ DI ARR
            sort(i, k);
            // SECONDA METÀ DI ARR
            sort(k + 1, j);
            // UNISCE LE DUE METÀ E LE ORDINA IN MODO CRESCENTE
            merge(i, k, j);
        }
    }

    private void merge(int start, int middle, int end) {
        // COPIA IL VETTORE AA in X
        for (int i = start; i <= end; i++) {
            X[i] = ARR[i];
        }

        // INIZIO SORTING

        // contatore 1 metà
        int c1 = start;
        // contatore seconda metà parte da middle
        int c2 = middle+1; // contatore che shifta
        // contatore per la traccia nel ARR
        int k = c1;

        // CASO BASE: CERCARE ELEMENTI SINGOLI
        // per avere elementi singoli
        // jj = ii && ii == kk
        // CONFRONTO TRA I DUE ELEMENTI E RIORDINO

        // QUANDO GLI ARRAY DA UNIRE HANNO PIÙ ELEMENTI
        // SI CONFRONTANO I PRIMI ELEMENTI, IL MINORE VIENE INSERITO COME PRIMO
        // IL SECONDO MINORE VIENE CONFRONTATO CON IL SECONDO DELL'ALTRO VETTORE
        // IL MINORE VA IN SECONDA POSIZIONE E COSÌÌ VIA AL TERZO ELEMENTO DEL PROSSIMO VETTORE

        // i contatori delle rispettive metà sono ancora in range valido
        while(c1 <= middle &&
              c2 <= end  ) {
            // controllo i primi elementi delle due metà
            if (X[c1] <= X[c2]){
                // salva il minore nella posizione più a sinistra di ARR
                ARR[k] = X[c1];
                // confronta il successivo elemento della metà in cui è presente il minore
                // con il corrente dell'altra metà
                c1++;
            } else {
                // salva il minore nella posizione più a sinistra di ARR
                ARR[k] = X[c2];
                // confronta il successivo elemento della metà in cui è presente il minore
                // con il corrente dell'altra metà
                c2++;
            }
            // INCREMENTA LA POSIZIONE DI ARR IN CUI
            // INSERIRE IL PROSSIMO VALORE
            k++;
        }


        // finchè il primo contatore è in range vengono copiati tutti i valori da X a ARR
        while (c1 <= middle) { // --> && c2 > end
            ARR[k] = X[c1]; // X[c1] è più grande di X[c2-1]
            k++;
            c1++;
        }

        // ORA LE DUE METÀ SONO ORDINATE


    }


}
