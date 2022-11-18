#include <stdio.h>
#include <stdlib.h>



//algoritmo di moore
int possiblyMajorityCandidate(int* arr,int arrLgt){
    int count=0,m;
    for(int i=0;i<arrLgt;i++){
        if (count==0){
            m=arr[i];
            count++;
        } else if (arr[i]==m){
            count++;
        } else {
            count--;
        }
    }
    // VERIFICARE LA CORRETTEZZA DI M
    count =0;
    for (int i=0;i<arrLgt;i++){
        if (arr[i]==m){
            count++;
        }
    }
    if (count>arrLgt/2){
        return m;
    } else {
        return -1;
    }
}








int main()
{
    printf("POSSIBLY MAJORITY CANDIDATE IN A RANDOM ARRAY OF INTEGERS\n");
    int l = 100000;
    int array[l];
    for (int i=0;i<l;i++){
        array[i] = rand()%1000;
    }
    int vect[] = {2,2,3,3,2,2,9};
    int n = 7;

    int mag = possiblyMajorityCandidate(vect,n);
    printf("MAG: %d",mag);

    return 0;
}
