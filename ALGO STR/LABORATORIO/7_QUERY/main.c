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

void querySum(int *inputArray, int inputSize, int *indexArray, int indexSize) {
    // T(n)
    // n = inputSize
    // m = indexSize

    printf("QUERYSUM\n");
    for (int i=0;i<indexSize;i+=2){   // c*(m/2)
        int startIndex = indexArray[i];   // c
        int endIndex = indexArray[i+1];   // c
        int currSum = 0;  // c
        for (int j= startIndex;j<=endIndex;j++){   //c*
            currSum+=inputArray[j];
        }
        printf("Somma tra %d e %d = %d\n",startIndex,endIndex,currSum);
    }
}


