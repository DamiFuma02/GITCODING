import java.util.Random;

public class Main {
    public static void main(String[] args) {
        Random rand = new Random();
        int n = 100000;
        int[] numbers = new int[n];
        for (int i = 0; i < n; i++) {
            numbers[i] = rand.nextInt(10000);
        }
//        printArray(numbers);
        long start = System.currentTimeMillis();
        quickSort(numbers);
        long end = System.currentTimeMillis();
        float sec = (end - start) / 1000F;
//        System.out.println("DOPO");
//        printArray(numbers);
        System.out.println("QUICKSORT1\nTempo Trascorso "+sec + " seconds");




        //printArray(numbers);



    }

    private static void printArray(int[] numbers) {
        for (int i = 0; i < numbers.length; i++) {
            System.out.println(numbers[i]);

        }
    }


    private static void quickSort(int[] numbers){
        quickSort(numbers,0,numbers.length-1);

    }

    /**
     * @param numbers vettore da ordinare
     * @param start < (end-1) indice primo elemento
     * @param end indice ultimo elemento
     **/
    private static void quickSort(int[] numbers, int start, int end) {

        if (start >= end) return;

        int pivotID = new Random().nextInt(end-start)+start;
        int pivot = numbers[pivotID];

        // per mettere il pivot all'ultimo posto
        swap(numbers,pivotID,end);
        // spostare tutti gli elementi minori pivot a SX
        // e tutti i maggiori a DX
        // PARTITIONING
        int leftID = partitioning(numbers,start,end,pivot);


        // TUTTI GLI ELEMENTI a SX di numbers[leftID] che contiene il numero maggiore del pivot scelto all'inizio della chiamata
        quickSort(numbers,start,leftID-1);



        quickSort(numbers,leftID+1,end);




        // CHIAMATE RICORSIVE PER ORDINARE LE DUE PORZIONI
        // SENZA TENERE CONTO DELL'INDICE DEL PIVOT
        // IN QUANTO ESSO SI TROVA NELLA POSIZIONE FINALE DELL'ARRAY ORDINATO


    }

    private static int partitioning(int[] numbers, int start, int end, int pivot) {
        int leftID = start;
        int rigthID = end-1;
        // cercare tramite leftID i numeri maggiori di pivot
        // appena trovato il primo maggiore si mantiene leftID nella sua posizione
        // si parte da rigthID e si torna indietro fino all'inizio del vettore oppure
        // fino a trovare un numero minore del pivot
        // trovato il minore, scambiare arr[leftID] con arr[rigthID]
        // ricominciare la ricerca con leftID fino a un altro minore
        // ATTENZIONE!! leftID < rigthID altrimenti si confronta lo stesso elemento
        // start < end - 1

        while (leftID < rigthID){
            while(numbers[leftID]<=pivot && leftID < rigthID){
                leftID++;
            }
            // numbers[leftId] > pivot
            while (numbers[rigthID]>= pivot && leftID < rigthID){
                rigthID--;
            }
            // numbers[rigthID] <  pivot
            swap(numbers,leftID,rigthID);
        }
        // scambia il numero maggiore con il pivot
        swap(numbers,leftID,end);

        return leftID;

    }

    private static void swap(int[] numbers, int leftID, int rigthID) {
        int tmp = numbers[leftID];
        numbers[leftID] = numbers[rigthID];
        numbers[rigthID] = tmp;
    }





}