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

    return 0;
}