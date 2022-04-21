package com.company;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Function;

public class Main {

    public static void main(String[] args) {
	// write your code here
        GenSchemeList<String> n = new GenSchemeList<String>();
        n = n.cons("ciao");
        n = n.cons("a tutti");
        System.out.println(n.reverse().listToString());
        System.out.println(n.car().charAt(2));
        System.out.println(n.listToString());

    }




}
