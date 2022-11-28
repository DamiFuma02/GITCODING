#include <iostream>

using namespace std;


void insertionSort(int inputArr[], int inputLgt){
    for (int j=1;j<inputLgt;j++){
        int key = inputArr[j];
        int i = j-1;
        while (i>=0 && inputArr[i]>key){
            inputArr[i+1] =inputArr[i];
            i--;
        }
        inputArr[i+1] = key;
    }
}


void print(int arr[],int arrLgt){
    for(int i=0;i<arrLgt;i++){
        cout<<arr[i]<<" ";
    }
}

int main() {
    cout << "Hello, World!" << endl;
    int l = 10;
    int array[l];
    for (int i=0;i<l;i++){
        array[i] = rand()%100;   // numero random tra 0 e 999
    }
    print(array,l);
    cout<<endl;
    insertionSort(array,l);

    print(array,l);

    return 0;
}
