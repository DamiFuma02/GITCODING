package com.company;

public class Tavolo {

    // VARIABILI DI ISTANZA
    private IntSchemeList cavalieri;


    Tavolo(int n) {
        // CREA UN TAVOLO CON n CAVALIERE
        // UN TAVOLO PUò ESSERE RAPPRESENTATO DA UNA LISTA DI INTERI
        // IL PRIMO ELEMENTO DELLA LISTA POSSIEDE LA BROCCA

        cavalieri = creaListaRange(1,n);
    }
    private Tavolo(IntSchemeList lista){
        cavalieri = lista;
    }


    // RESTITUISCE IL NUMERO DI CAVALIERI ATTORNO ALLA TAVOLA
    public int numeroCavalieri(){
        return cavalieri.listLength();
    }

    // CHI HA LA BROCCA?
    // int = identificatore del cavaliere = posizione iniziale quando tavolo creato
    public int chiHaLaBrocca(){
        return cavalieri.car();
    }

    // GIOCO FINITO?? TRUE O FALSE
    public boolean giocoFinito(){
        return cavalieri.cdr().isNull();
    }

    // SERVIRE IL SIDRO == FA USCIRE UN CAVALIERE = nuova configurazione del tavolo
    public Tavolo serviSidro(){
        IntSchemeList nuovaTavola = cavalieri.cdr().cdr().cons(cavalieri.car());
        return new Tavolo(nuovaTavola);

    }

    public Tavolo dopoUscita(){
        Tavolo nuovaTav = serviSidro();
        return nuovaTav.passaBrocca();

    }


    // PASSA LA BROCCA AL PROSSIMO CAVALIERE
    public Tavolo passaBrocca(){
        // IL CAV DOPO QUELLO SERVITO OTTIENE LA BROCCA
        // IL PRIMO ELEMENTO VA PER ULTIMO
        // CREA UNA LISTA CON UN SOLO ELEMENTO
        IntSchemeList coda = IntSchemeList.NULL_INTLIST.cons(cavalieri.car());
        IntSchemeList nuova = cavalieri.cdr().append(coda);
        return new Tavolo(nuova);
    }

    private static IntSchemeList creaListaRange(int inf, int sup){
        if (inf > sup) {
            return new IntSchemeList();
        } else {
            return creaListaRange(inf+1, sup).cons(inf);
        }
    }   // SUP >= INF


}    // classe Tavolo
