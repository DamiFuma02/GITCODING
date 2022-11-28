// C program for insertion sort
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>


// VALUTAZIONE COSTO
// C = UNITÀ DI PESO DI UNA OPERAZIONE UNITARIA
// ASSEGNAZIONE; CONFRONTO; INCREMENTO

int main()
{
	printf("INSERTIONSORT O(n^2)\n");

	// generazione randomica di un array di lunghezza l
    int l = 10000;
    int array[l];
    for (int i=0;i<l;i++){
        array[i] = rand()%1000;   // numero random tra 0 e 999
    }
    int n = sizeof(array) / sizeof(array[0]);

    clock_t begin = clock();
    insertionSort(array,n);
    clock_t end = clock();
    double time_spent = (double)(end - begin) / (CLOCKS_PER_SEC) ;
    printf("MERGESORT ARRAYS\nTIME SPENT %f seconds\n",time_spent);
	// printArray(arr, n);

	return 0;
}

//FUNZIONE PER ORDINAMENTO DEGLI ELEMENTI IN UN VETTORE GENERICO
void insertionSort(int arr[], int n)
{
	for (int i = 1; i < n; i++) {
	// 2*C * n --> (intervallo valori i: [1,n-1] = n valori totali
    // nell'ultima chiamata vengono cmq effettuate i++ e i<n quindi vengono contate nel costo totale
		int key = arr[i];      // C * (n-1) perchè l'n-esima volta il ciclo fallisce e si esce dal FOR
		int j = i - 1;         // C * (n-1)
//        CONFRONTA TUTTI GLI ELEMENTI DI ARR[0;(i-1)] con KEY
//        E SHIFTA A DX DI 1 TUTTI QUELLI MAGGIORI DI KEY
		while (j >= 0 && arr[j] > key) {   // 2C * (t1+t2+...+tj) j: [1,n] dove tj è il tempo necessario per eseguire un ciclo while...
            //tj dipende dai valori del vettore
            // valore massimo se il vettore iniziale è decrescente
            // valore minimo se il vettore è già ordinato crescentemente

            // LE OPERAZIONI VENGONO ESEGUITE (j-1) VOLTE IN QUANTO
            // SI SHIFTA A DX TUTTO IL VETTORE FINCHÈ SI TROVA UN ELEMENTO <= KEY
			arr[j + 1] = arr[j];   // c* (t1+...+tn) = C*SOMMATORIA DA 1 A N DI TJ
			j = j - 1;              // c* (t1+...+tn)
		}
		// J NEGATIVO OPPURE È STATO TROVATO UN ELEMENTO <= KEY
		arr[j + 1] = key;    // C * (n-1)
	}
}

// STAMPA IN CONSOLE L'ARRAY
void printArray(int arr[], int n)
{
	for (int i = 0; i < n; i++)
		printf("%d ", arr[i]);

	printf("\n");
}


