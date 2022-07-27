package com.company;

import java.util.Arrays;

public class Main {

    public static void main(String[] args) {
	// write your code here
        int[] s =  new int[] {7,8,9,10,4,5,6,2,3,1};
        //System.out.println(Memoization.llis( s )   );
        int[] arr = BottomUpLIS.lisDP(s);
        System.out.println(Arrays.toString(arr));


    }
}
