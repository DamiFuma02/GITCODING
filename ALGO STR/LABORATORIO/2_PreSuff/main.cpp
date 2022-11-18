#include <iostream>

int main() {
    char stringa[1000];
    printf("INSERISCI LA STRINGA\n");
    scanf("%s",&stringa);


    int n=0;
    for (int i=0;stringa[i] != '\0';i++) {
        n++;
    }

    for (int i=0;stringa[i] != '\0';i++) {
        //stampo il suffisso che parte dalla posizione i
        printf("%s\n",stringa+i);
    }

    for (int i=0;stringa[i] != '\0';i++) {
        char suffisso[1000];
        for(int j=0;i<n-i;j++){
            suffisso[j] = stringa[i+j];
        }
        printf("%s\n",suffisso);
    }



            return 0;
}
