package com.company;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Main {

    public static void main(String[] args) {
	// write your code here
        //LISTE
        IntSchemeList listaProva = new IntSchemeList();
        IntSchemeList lista2 = new IntSchemeList();
        System.out.println(listaProva.equal(lista2));

        //System.out.println(listaProva.listLength());
        listaProva = listaProva.cons(3);
        listaProva = listaProva.cons(4);
        listaProva = listaProva.cons(5);

        System.out.println("3 BELONG: "+listaProva.belong(3));
        //System.out.println(listaProva == lista2);
        //listaProva = IntSchemeList.NULL_INTLIST;
        //lista2 = IntSchemeList.NULL_INTLIST;
        //System.out.println(listaProva == lista2);
        System.out.println("POSITION OF 3 in lista = "+listaProva.position(1));
        IntSchemeList listaRange = new IntSchemeList().creaListaRange(3,8);
        System.out.println("APPEND");
        System.out.println(listaProva.append(listaRange).ListToString());
        System.out.println(listaRange.listRef(2));
        System.out.println(listaRange.listLength());


        lista2 = new IntSchemeList();
        lista2 = lista2.cons(5);
        lista2 = lista2.cons(4);
        lista2 = lista2.cons(1);
        lista2 = lista2.cons(3);
        lista2 = lista2.cons(5);
        lista2 = lista2.cons(6);
        lista2 = lista2.cons(4);
        lista2 = lista2.cons(2);
        lista2 = lista2.cons(1);
        System.out.println("LISTA RIFERIMENTO");
        System.out.println(lista2.ListToString());
        System.out.println("LIS");
        IntSchemeList LongIncSub = lista2.LIS();
        System.out.println(LongIncSub.ListToString());
        System.out.println("LLIS");
        System.out.println(lista2.LLIS());
        if (lista2.LLIS() == LongIncSub.listLength()) System.out.println("LLIS COMBACIA CON LA LUNGHEZZA DI LIS calcolata a parte");
        else System.out.println("ERRORE");



    }



}
