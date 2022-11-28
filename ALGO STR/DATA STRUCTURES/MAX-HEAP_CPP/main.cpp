#include <iostream>
#include "MaxHeap.h"
using namespace std;




int parentID(int index) {
    return (index-1)/2;
}

int leftID(int index) {
    return (2*index)+1;
}

int rightID(int index) {
    return (2*index)+2;
}

bool isLeaf(int index) const {
    return (index > (heapSize/2) && index <=heapSize);
}

void swap(int x, int y) {
    int tmp = heap[x];
    heap[x]=heap[y];
    heap[y]=tmp;
}


void print() {
    for(int i=0;i<heapSize/2;i++){
        printf("PARENT-NODE: %d\n",heap[i]);
        if (leftID(i)<heapSize){
            printf("LEFT-CHILD-NODE: %d\n",heap[leftID(i)]);
        }
        if (rightID(i)<heapSize){
            printf("RIGHT-CHILD-NODE: %d\n",heap[rightID(i)]);
        }
        cout<<endl;
    }
}

void buildHeap(int *arr, int arrLength) {

    // costruisce gli heap iterativamente dal basso verso l'alto
    // l'indice parte deal parentID dell'ultimo elemento in quanto
    // l'ultima riga non ha figli e quindi non ha senso chiamare la funzione heapifyDown
    for (int i= parentID(arrLength-1);i>0;i--){
        heapifyDownRec(arr,i);
    }
}

int getMaxKey() {


    try{
        if (heapSize == 0){
            throw out_of_range("HEAP TROPPO PICCOLO");
        }
        int tmp = heap[0];
        heap[0] = heap[heapSize-1];
        heapSize--;
        heapifyDownRec(0);
        return tmp;



    }catch (const out_of_range &oor){
        cout<<endl<<oor.what();
    }




    /*// ROOT è la MAGGIORE
    int returnKey = heap[0];
    // scambia l'ultimo elemento con il primo
    heap[0] = heap[heapSize-1];
    // viene controllata la validità dello heap in quanto ora la root contiene una key bassa
    heapifyRec(0);
    heapSize--;
    return returnKey;*/
}

void heapifyDownRec(int* heap,int subtree_root_index) {

    int largest_value = subtree_root_index;

    int left = leftID(subtree_root_index);

    int right = rightID(subtree_root_index);


    if (left < heapSize && heap[left] > heap[largest_value]){

        largest_value = left;

    }


    if (right < heapSize && heap[right] > heap[largest_value]){

        largest_value = right;

    }


    if (largest_value != subtree_root_index )

    {

        swap(subtree_root_index, largest_value);


        heapifyDownRec ( largest_value);

    }


}

void heapifyUp(int index) {
    while(index>0 && heap[index]>heap[parentID(index)]){
        swap(index, parentID(index));
        index= parentID(index);
    }
}

void heapSort(int *arr, int arrLgt) {
    // costruisce la HEAP
    buildHeap(arr,arrLgt);
    // preleva iterativamente il primo elemento della heap, essenso il più grande
    // e lo scambia con quello in ultima posizione
    // il nuovo elemento in prima posizione possiede un errore di validità
    // di chiavi perciò è necessario chiamare heapifyDown
    for(int i=arrLgt-1;i>0;i--){
        swap(i,0);
        // decrementare la lunghezza in quanto l'ultimo elemento
        // non ci interessa più nei confronti
        heapSize--;
        // risolve il problema della root
        heapifyDownRec(0);
    }
}











int main() {

    //MaxHeap* heapArr = new MaxHeap(2000);
    int l = 1000;
    int array[l];
    for (int i=0;i<l;i++){
        array[i] = rand()%1000;
    }

    heapArr->heapSort(array,l);

    cout<<heapArr->getMaxKey()<<endl;
    //heapArr->print();
    cout<<heapArr->getMaxKey()<<endl;
    //heapArr->print();
    cout<<heapArr->getMaxKey()<<endl;

    return 0;
}
