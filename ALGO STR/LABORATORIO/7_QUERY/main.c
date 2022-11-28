#include <stdio.h>
#include <stdlib.h>

void printArray(int *a, int n) {
    for (int i = 0; i < n; i++)
        printf("%d ", a[i]);
}

#define MAX_LINE_SIZE 10000   // maximum size of a line of input

void querySum(int *inputArray, int inputSize, int *indexArray, int indexSize);

int checkValidity(int* array, int size) {
    if (size %2!=0){
        printf("LA LUNGHEZZA DEL SECONDO ARRAY DEVE ESSERE PARI");
        return 0;
    }
    // controllo della validità delle singole coppie di indici
    for (int i=0;i<size;i+=2){
        if (array[i]>=array[i+1]) return 0 ;
    }
    return 1;

}

int scanArray(int *a) {
    // scan line of text
    char line[MAX_LINE_SIZE];
    scanf("%[^\n]", line);

    getchar();
    // convert text into array
    int size = 0, offset = 0, numFilled, n;
    do {
        numFilled = sscanf(line + offset, "%d%n", &(a[size]), &n);
        if (numFilled > 0) {
            size++;
            offset += n;
        }
    } while (numFilled > 0);

    return size;
}

int main( )
{
    printf("INSERIMENTO PRIMO VETTORE:\n");
    int a[MAX_LINE_SIZE];
    int aSize = scanArray(a);

    printArray(a,aSize);
    printf("\nInserisci coppie di indici i,j tali che 0<=i<j<%d:\n",aSize);
    int b[MAX_LINE_SIZE];
    int bSize = scanArray(b);

    printArray(b,bSize);

    int v = checkValidity(b,bSize);
    if (v==0){
        printf("ARRAY DEGLI INDICI NON VALIDO");
        return 0;
    }

    querySum(a,aSize,b,bSize);





    return 0;
}



/*
PROGETTARE UN ALBERO BINARIO IN CUI LE FOGLIE SONO I VALORI DELL'ARRAY 
E I NODI SONO IL VALORE MASSIMO TRA I DUE FIGLI
ACCESSO AL MASSIMO THETA(1)
*/

typedef struct BinTree
{
    int key;
    struct BinTree* leftChild;
    struct BinTree* rigthChild;
} BinTree; 


void makeTree(int* arr, int arrSize){

}



void querySum(int *inputArray, int inputSize, int *indexArray, int indexSize) {
    // T(n)
    // n = inputSize
    // m = indexSize

    
    // siccome il primo elemento di B vale 0 allora B deve contenere un elemento in più
    // per coprire tutte le somme cumulate fino all'ultimo elemento di inputArray
    int* B[inputSize+1];   
    B[0] = 0;
    for (int i = 0; i < inputSize; i++)
    {   
        // frequenze cumulate
        // B[i] = sum(A[1,i])
        B[i+1] = B[i] + inputArray[i];
    }
    



    printf("\nQUERYSUM\n");
    for (int i=0;i<indexSize;i+=2){   // c*(m/2)
        int startIndex = indexArray[i];   // c
        int endIndex = indexArray[i+1];   // c
        int currSum = 0;  // c
        for (int j= startIndex;j<=endIndex;j++){   //c*
            currSum+=inputArray[j];
        }
        printf("Somma tra indice %d e %d = %d\n",startIndex,endIndex,currSum);
    }
}

typedef struct intPair{
    int i,j;
}intPair;

intPair cerca_somma_intervallo(int*v, int n, intPair s){
    int w[n+1];
    w[0] = 0;
    for(int i=1;i<=n;i++){
        w[i] = w[i-1]+v[i-1];
    }
    return cerca_differenza(w,n+1,s);

    
}

intPair cerca_differenza(int* v, int n, intPair d){

}


