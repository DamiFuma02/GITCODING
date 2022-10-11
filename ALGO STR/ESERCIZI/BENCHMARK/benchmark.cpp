#include <benchmark.h>

// put all your include files here together with globals

START_BENCHMARK
// expands to int main(int, char**)
//      - don't define your own  !!!

    //-------------------------------------------------------------
    // repeat following code for each test you wish to run
    //-------------------------------------------------------------

    // below are helper macros for safe access to test parameters
    // each parameter once set is valid for all consecutive tests
    // until changed by a call to it`s appropriate setter
    // parameters are set in this order:
    // 1. default values - "Generic Test" in dirty environment
    //           with 5 chaching and 10,000 testing iterations
    // 2. command line arguments - override default values
    //           (see below for possible switches)
    // 3. macro setters

    //sets test description - may be omitted
    SET_DESCRIPTION(formatting string)
    //sets number of chaching iterations - may be omitted
    SET_CACHING_ITERATIONS(integer)
    //sets number of testing iterations - may be omitted
    SET_TESTING_ITERATIONS(integer)
    //sets clean environment on or off - may be omitted
    SET_ENVIRONMENT(boolean)

    // use following macros to encapsulate chaching
    // of tested code - may be omitted
    BEGIN_CACHING
    // put both tested code blocks here
    FINISH_CACHING

    // this is the actual test
    EXEBLOCK_A
    // put first tested code block here
    EXEBLOCK_B
    // put second tested code block here
    EVALUATE

    //-------------------------------------------------------------
    // end of a single test
    //-------------------------------------------------------------

CLOSE_BENCHMARK
