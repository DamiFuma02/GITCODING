package com.company;



//  PER DEFINIRE DELLE LISTE SIMILI A LINGUAGGIO SCHEME
public class IntSchemeList {
    // LISTA NULLA
    public static final IntSchemeList NULL_INTLIST = new IntSchemeList();
    // METODI USATI DA SCHEME
    // null = lista vuota
    // (null? list) if list == null
    // (car lista) = primo elemento della lista  --> lista.car()
    // (cdr lista) = tutta la lista senza il primo elemento
    // (cons element lista) = aggiunge il primo parametro alla lista passata come secondo parametro
    // (reverse lista) = inverte la lista dal primo all'ultimo elemento
    //
    // ESSENDO VARIABILI DI TIPO PRIVATE NON SONO ACCESSIBILI DALL'ESTERNO DELLA CLASSE
    // PERCIò NON POSSONO ESSERE MODIFICATI DALL'ESTERNO
    private final boolean vuoto;
    private final int primoElemento;
    private final IntSchemeList restoLista;
    // FINAL = il valore passato non potrà più essere modificato
    // SI tratta di una variabile di istanza interpretata come COSTANTE

    //COSTRUTTORE
    public IntSchemeList(){
        vuoto = true;
        // SE è VUOTA RITORNA LA LISTA VUOTA
        primoElemento = 0;
        restoLista = null;
    }

    public IntSchemeList(int n, IntSchemeList lista){
        vuoto = false;
        primoElemento = n;
        restoLista = lista;
    }

    // CREA UNA LISTA CON GLI ELEMENTI COMPRESI NEGLI INTERVALLI DEL RANGE sup e inf
    public static IntSchemeList creaListaRange(int inf, int sup){
        if (inf > sup) {
            return new IntSchemeList();
        } else {
            return creaListaRange(inf+1, sup).cons(inf);
        }
    }   // SUP >= INF

    public boolean isNull(){
        return vuoto;
    }

    public int car(){
        return primoElemento;
    }

    public  IntSchemeList cdr() {
        return restoLista;
    }

    // AGGIUNGE n DAVANTI ALLA LISTA CORRENTE
    public IntSchemeList cons (int n) {
        // CHIAMARE UN COSTRUTTORE
        return new IntSchemeList(n,this);
    }
    // RITORNA LA LISTA COME STRINGA
    public String ListToString(){
        String desc = "(";
        if (!isNull()){
            //CONTIENE CARATTERI E LI STAMPA IN STRINGA
            desc = desc +car();
            IntSchemeList resto = cdr();
            while (!resto.isNull()){
                desc = desc + ","+ resto.car() ;
                // TOGLIE IL PRIMO ELEMENTO
                resto = resto.cdr();
            }
        } return desc+")";
    }
    // RITORNA LA LISTA INVERTITA
    public IntSchemeList reverse()
    {
        if (isNull()) return this;
        //RESTITUISCE LA LISTA STESSA INVERTITA
        // lista nulla
        IntSchemeList lista = new IntSchemeList();
        // lista corrente
        IntSchemeList resto = cdr();
        lista = lista.cons(car());
        while (!resto.isNull()) {
            lista = lista.cons(resto.car());
            resto = resto.cdr();
        }
        return lista;
    }

    // LIST-REF (index) restituisce l'elemento a quell'indice.. INDICE parte da 0 = CAR()
    public int listRef(int index) {
        if (index == 0) {
            return car();
        } else {
            return cdr().listRef(index-1);
        }
    }

    // EQUAL se le due liste sono uguali
    public boolean equal (IntSchemeList b){
        if (isNull() || b.isNull()){
            return isNull() && b.isNull();
        } else if (car() == b.car()) {
            // RIMUOVE IL PRMO ELEMENTO DA ENTRAMBE LE LISTE
            return cdr().equal(b.cdr());
        } else {
            return false;
        }
    }
    // LENGTH
    public int listLength(){
        int lungh = 0;
        IntSchemeList resto = this;
        while (!resto.isNull()){
            lungh = lungh +1;
            resto = resto.cdr();
        }
        return lungh;
    }

    // CONCATENCA ALLA LISTA CORRENTE QUELLA PASSATA COME ARGOMENTO
    public IntSchemeList append(IntSchemeList lista2){
        if (isNull()){
            return lista2;
        } else {
            return cdr().append(lista2).cons(car());
        }
    }


    public boolean belong(int n){
        // CONTROLLA SE IL NUMERO n APPARTIENE ALLA LISTA
        if (car() == n) return true;
        else if(cdr().isNull()) return false;
        else return cdr().belong(n);
    }

    public int position(int n){
        // RESTITUISCE L'INDICE A CUI SI TROVA n

        if (belong(n)) {
            System.out.println(n+" appartiene alla lista");
            int pos = 0;
            IntSchemeList lista = this;
            while (lista.car() != n || lista.isNull()) {
                // TOGLI OGNI VOLTA IL PRIMO ELEMENTO
                lista = lista.cdr();
                pos++;
            }
            return pos;
        } else {
            System.out.println(n+" NON APPARTIENE ALLA LISTA");
            return -1;
        }
    }

    public IntSchemeList longer(IntSchemeList lista) {
        // RESTITUISCE LA LISTA Più LUNGA TRA LA CORRENTE E QUELLA PASSATA COME ARGOMENTO
        if (listLength() > lista.listLength()) return this;
        return lista;
    }


    // RESTITUISCE LA LONGEST INCREASING SUBSEQUENCE DELLA LISTA CORRENTE
    public IntSchemeList LIS(){
        return LIS_REC(0,0);
    }
    private IntSchemeList LIS_REC(int i, int t){
        // i = INDICE IN CUI CERCARE, t = NUMERO PRECEDENTE
        int lungh = listLength();
        if (i == lungh) return NULL_INTLIST;   // LISTA VUOTA
        else if (listRef(i) <= t) {
            // CONTINUA LA RICERCA
            return LIS_REC(i+1, t);
        } else {
            // INCREMENTA LA LUNGHEZZA DELLA LISTA E SALVA IL NUMERO APPENA LETTO PER LA PROSSIMA RICORSIONE
            IntSchemeList a = LIS_REC(i+1, listRef(i)).cons(listRef(i));
            // NON INCREMENTA LA LISTA E MANTIENE IL t PRECEDENTE
            IntSchemeList b = LIS_REC(i+1,t);

            return a.longer(b);
        }

    }


    // RESTITUISCE LA LUNGHEZZA DELLA LIS
    public int LLIS(){
        return LLIS_REC( 0 , 0);
    }
    private int LLIS_REC(int i, int t){
        int lungh = this.listLength();
        if (i == lungh) return 0;
        else if (listRef(i) <= t) return LLIS_REC(i+1, t);
        else {
            int a = 1 + LLIS_REC(i+1, listRef(i));
            int b = LLIS_REC(i+1,t);
            return Math.max(a,b);
        }
    }


}
