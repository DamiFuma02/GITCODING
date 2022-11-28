#include "Abstraction.h"

Abstraction::Abstraction()
{
    //ctor
    Abstraction(int *arr){
            inputArray = &arr;
        }
    private:
        int inputArray[];
        int copyArray[];
        int inputLength;

    public:




}

Abstraction::~Abstraction()
{
    //dtor
}
