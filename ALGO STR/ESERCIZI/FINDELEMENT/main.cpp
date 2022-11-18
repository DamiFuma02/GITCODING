// C++ program for the above approach
#include <bits/stdc++.h>
using namespace std;

// Function to check whether X
// is present in the array A[]
void findElement(int A[], int N, int X)
{
    // Initialise a pointer
    int i = 0;

    // Store the number
    // of comparisons
    int Comparisons = 0;

    // Variable to store product
    int T = 1;

    string Found = "No";

    // Check is N is odd
    Comparisons++;
    if (N % 2 == 1) {

        // Update i and T
        i = 1;
        T *= (A[0] - X);
    }

    // Traverse the array
    for (; i < N; i += 2) {

        // Check if i < N
        Comparisons += 1;

        // Update T
        T *= (A[i] - X);
        T *= (A[i + 1] - X);
    }

    // Check if T is equal to 0
    Comparisons += 1;



    if (T == 0) {
        cout << "FOUND!!\t Number of comparisons:" << Comparisons<<endl;
    }
    else {
        cout << "No";
    }




}


int ricerca_lenta(int* a,int n, int chiave){
    for (int i=0;i<n;i++){
        if (a[i] == chiave){
            return i;
        }
    }
    // mai trovato l'elemento
    return -1;
}


int ricerca_dicotomicaITER(int* a, int n, int chiave){
    int start = 0;
    int end = n-1;
    while(start <= end){
        int middle = (start+end)/2;
        if (a[middle] == chiave){
            return middle;
        } else if (a[middle]<chiave){
            start = middle+1;
        } else {
            end=middle-1;
        }
    }
    return -1;
}

int ricerca_dicotomicaREC(int* a, int n, int chiave,int start, int end){
    if (start <= end){
        int middle = (start+end)/2;
        if (a[middle] == chiave){
            return middle;
        } else if (a[middle]<chiave){
            ricerca_dicotomicaREC(a,n,chiave,middle+1,end);
        } else {
            ricerca_dicotomicaREC(a,n,chiave,start,middle-1);
        }
    }
    return -1;
}









// Driver Code
int main()
{
    // Given Input
    int l = 10000;
    int array[l];
    for (int i=0;i<l;i++){
        array[i] = rand()%1000;
    }
    int n = sizeof(array) / sizeof(array[0]);
    int X = rand()%1000;
    cout<<"N = "<<n<<endl;
    printf("STO CERCANDO %d nell'array...\n",X);
    // Function Call
    clock_t start = clock();
    findElement(array, n, X);
    clock_t end = clock();
    double time_spent = (double)(end - start) / (CLOCKS_PER_SEC) ;
    printf("FIND ELEMENT IN ARRAY WITH AT MOST (N-1)/2 COMPARISONS \nTIME SPENT %f seconds\n",time_spent);

    start = clock();
   int index =  ricerca_lenta(array,n,X);
    printf("array[%d] = %d",index,array[index]);
    end = clock();
    time_spent = (double)(end - start) / (CLOCKS_PER_SEC) ;

    start = clock();
     index =  ricerca_dicotomicaITER(array,n,X);
    printf("array[%d] = %d",index,array[index]);
    end = clock();
    time_spent = (double)(end - start) / (CLOCKS_PER_SEC) ;

    return 0;
}