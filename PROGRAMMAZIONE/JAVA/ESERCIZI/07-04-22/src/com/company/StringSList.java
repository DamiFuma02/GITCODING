package com.company;

public class StringSList {
    // VARIABILI DI ISTANZA
    private final boolean vuoto;   // isNull?
    private final String primoElemento;   // car()
    private final StringSList restoLista;  // cdr()
    // COSTRUTTORE LISTA VUOTA
    public StringSList(){
        vuoto = true;
        primoElemento = "";
        restoLista = null;
    }
    // COSTRUTTORE CON PARAMETRI
    // AGGIUNGE COME PRIMO ELEMENTO e all'interno della lista L
    public StringSList(String e, StringSList L){
        vuoto = false;
        primoElemento = e;
        restoLista = L;
    }

    // IS NULL?
    public boolean isNull(){
        return vuoto;
    }

    // CAR = PRIMO ELEMENTO DELLA LISTA
    public String car(){return primoElemento;}

    // CDR = TUTTO TRANNE IL PRIMO ELEMENTO
    public StringSList cdr(){return restoLista;}

    // CONS ALTERNATIVO
    public StringSList cons(String e){
        // AGGIUNGE e COME PRIMO ELEMENTO DELLA LISTA THIS (corrente)
        return new StringSList(e,this);
    }

    // RITORNA IL NUMERO DI ELEMENTI CHE COMPONGONO LA LISTA
    public int listlength(){
        int lungh = 0;
        StringSList resto = this;
        while (!resto.isNull()){
            lungh = lungh +1;
            resto = resto.cdr();
        }
        return lungh;
    }

    // ELEMENTO ALLA POSIZIONE INDEX DELLA LISTA CORRENTE
    public String listRef(int index){
        if (index == 0) {
            return car();
        } else {
            return cdr().listRef(index-1);
        }
    }

    // CONFRONTA LA LISTA CORRENTE CON QUELLA PASSATA COME PARAMETRO
    public boolean equals(StringSList lista){
        if (isNull() || lista.isNull()){
            return isNull() && lista.isNull();
        } else if (car() == lista.car()) {
            // RIMUOVE IL PRMO ELEMENTO DA ENTRAMBE LE LISTE
            return cdr().equals(lista.cdr());
        } else {
            return false;
        }
    }

    // CONCATENA LA LISTA PARAMETRO IN CODA ALLA LISTA CORRENTE
    public StringSList append(StringSList lista){
        if (isNull()){
            return lista;
        } else {
            return cdr().append(lista).cons(car());
        }
    }

    // INVERTE LA LISTA CORRENTE
    public StringSList reverse(){
        //RESTITUISCE LA LISTA STESSA INVERTITA
        // lista nulla
        StringSList lista = new StringSList();
        // lista corrente
        StringSList resto = cdr();
        lista = lista.cons(car());
        while (!resto.isNull()) {
            lista = lista.cons(resto.car());
            resto = resto.cdr();
        }
        return lista;
    }

    // CONCATENA TUTTI GLI ELEMENTI IN UNA UNICA STRINGA
    public String listToString(){
        String desc = "(";
        if (!isNull()){
            //CONTIENE CARATTERI E LI STAMPA IN STRINGA
            desc = desc +car();
            StringSList resto = cdr();
            while (!resto.isNull()){
                desc = desc + ","+ resto.car() ;
                // TOGLIE IL PRIMO ELEMENTO
                resto = resto.cdr();
            }
        } return desc+")";
    }


}
