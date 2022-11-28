import org.junit.jupiter.api.Test;

import java.lang.reflect.Array;

import static org.junit.jupiter.api.Assertions.*;

class HeapArrayTest {

    @Test
    void insertKey() {
        HeapArray arr = new HeapArray(20);
        int[] inputArr = new int[]{20,15,15,12,2,18,8,3,1,1};
        arr.arrToHeap(inputArr);
        arr.print();
    }

    @Test
    void print() {
    }

    @Test
    void getMax() {
        HeapArray arr = new HeapArray(20);
        int[] inputArr = new int[]{20,15,18,8,3,15,12,2,1,1};
        arr.arrToHeap(inputArr);
        assertEquals(arr.getMax(), 20);
    }
}