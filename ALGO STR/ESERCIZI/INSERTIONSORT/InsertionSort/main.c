// C program for insertion sort
#include <math.h>
#include <stdio.h>


// VALUTAZIONE COSTO
// C = UNITÀ DI PESO DI UNA OPERAZIONE UNITARIA
// ASSEGNAZIONE; CONFRONTO; INCREMENTO

int main()
{
	int arr[] = { 32,12,5,9,23 };
	int n = sizeof(arr) / sizeof(arr[0]);

	insertionSort(arr, n);
	printArray(arr, n);

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


