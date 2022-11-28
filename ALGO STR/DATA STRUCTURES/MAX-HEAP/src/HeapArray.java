public class HeapArray {
    private int heapSize;
    private int length;
    private int[] heap;

    /**
     * Costruisce un array di interi sovradimensionato in cui implementare l'heap desiderato
     * @param maxsize sufficientemente grande
     */
    public HeapArray(int maxsize){
        this.length = maxsize;
        this.heapSize=0; //heap inizialmente vuoto
        heap = new int[this.length];
    }


    /**
     * @param index posizione del nodo attuale, in range tra 0 e heapSize
     * @return indice del nodo genitore di quello attuale
     */
    private int parent(int index){
        return (index-1)/2;
    }

    /**
     * @param index posizione del nodo attuale, in range tra 0 e heapSize
     * @return indice del nodo figlio SX di quello attuale
     */
    private int leftID(int index){
        return (2*index)+1;
    }
    /**
     * @param index posizione del nodo attuale, in range tra 0 e heapSize
     * @return indice del nodo figlio DX di quello attuale
     */
    private int rightID(int index){
        return (2*index)+2;
    }


    /**
     * Se l'indice inserito si trova oltre la metà dell'heapSize allora si tratta di una foglia, quindi non avrà figli
     * @param index indice valido in range [0,heapSize]
     * @return
     */
    private boolean isLeaf(int index){
        return (index > (this.heapSize/2) && index<=heapSize);
    }


    /**
     * Scambia gli elementi dell'array nelle due posizioni indicate
     * @param x indice valido in range [0,heapSize]
     * @param y indice valido in range [0,heapSize]
     */
    private void swap(int x, int y){
        int tmp=heap[x];
        heap[x]=heap[y];
        heap[y]=tmp;
    }


    /**
     * viene inserito un nuovo elemento con valore key, mantenendo corretta la struttura logica della MAXHEAP
     * @param element key da aggiungere nell'heap
     */
    public void insert(int element){
        // viene inserito come elemento successivo all'ultimo occupato dall'heapArray[heapSize-1]
        if (heapSize < length){

            heap[heapSize] = element;
            //indice di riferimento per il nodo attuale
            int index = heapSize;
            // finchè l'indice è valido in ricerca e finchè la key del figlio > key del padre
            while(index>1 && heap[index]>heap[parent(index)]){
                swap(index,parent(index));
                // aggiornamento del indice corrente perchè ora la key sbagliata potrebbe essere nella posizone del padre
                index=parent(index);
            }
            heapSize++;
        } else {
            System.out.println("ERRORE DI DIMENSIONE");
        }
    }

    public void arrToHeap(int[] arr){
        for (int i = 0; i < arr.length; i++) {
            insert(arr[i]);
        }
    }

    /**
     * STAMPA A CONSOLE IL CONTENUTO DELLA HEAP
     */
    public void print(){
        for (int i = 0; i < heapSize/2; i++) {
            System.out.println("PARENT-NODE: "+heap[i]);
            if (leftID(i) < heapSize){
                System.out.println("LEFT-CHILD-NODE: "+heap[leftID(i)]);
            }

            if (rightID(i) < heapSize){
                System.out.println("RIGHT-CHILD-NODE: "+heap[rightID(i)]);
            }
            System.out.println();
        }
    }


    /**
     * @return restituisce il valore corrente più grande della heap
     */
    public int getMax(){
        // ROOT È LA MAGGIORE
        int max = heap[0];
        // l'ultimo elemento, che sicuro avrà chiave piccola, viene messo come primo, essendo stato rimosso quello corrente
        heap[0] = heap[heapSize-1];

        // la validità della key root ora viene gestita dalla funzione heapify
        heapifyREC(0);
        return max;
    }

    /**
     * metodo RICORSIVO che sistema eventuali errori nelle key durante la fase di estrazione
     * @param index indice in cui vi è u possibile problema
     */
    private void heapifyREC(int index) {
        // heap(i) contiene una key possibilmente non valida
        // caso base della ricorsione
        if (isLeaf(index)){  //se il nodo è una foglia allora non ci sono controlli da fare sulla sua chiave
            return;
        }

        if (    heap[index]<heap[leftID(index)] ||
                heap[index]<heap[rightID(index)]
            )    {
            // viene scelto quale dei due nodi scambiare in base al loro valore key
            // mantenendo inalterato l'ordine in caso di numeri uguali
            if (heap[leftID(index)] >= heap[leftID(index)]){
                swap(index,leftID(index));
            } else {
                swap(index,rightID(index));
            }
        }


    }


}
