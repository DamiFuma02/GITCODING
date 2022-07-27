import java.util.function.Function;

// TIPO = tipo di dato degli elementi
public class GenSchemeList<TIPO> {
    // VARIABILI DI ISTANZA
    private final boolean vuoto;
    private final TIPO primoElemento;
    private final GenSchemeList<TIPO> restoLista;

    // COSTANTE LISTA NULLA
    //public GenSchemeList<TIPO> NULL_LIST = new GenSchemeList<TIPO>();

    // COSTRUTTORE VUOTO
    public GenSchemeList(){
        vuoto = true;
        primoElemento = null;
        restoLista = null;
    }

    // COSTRUTTORE CON PARAMETRI
    public GenSchemeList(TIPO el, GenSchemeList<TIPO> L){
        vuoto = false;
        primoElemento = el;
        restoLista = L;
    }


    public boolean isNull(){
        return vuoto;
    }

    public TIPO car(){
        return  primoElemento;
    }

    public GenSchemeList<TIPO> cdr() {
        return restoLista;
    }

    public GenSchemeList<TIPO> cons(TIPO el){
        return new GenSchemeList<TIPO>(el,this);
    }

    public int listLength(){
        if (isNull()) return 0;
        return 1+cdr().listLength();
    }

    public TIPO listRef(int n){
        if(n==0) return car();
        return cdr().listRef(n-1);
    }

    // SI PUç METTERE PRIVATO ESSENDO RIDONDANTE
    private boolean equals( GenSchemeList<TIPO> tl ) {   // contronto di liste
        // Scheme: equal?
        if ( isNull() || tl.isNull() ) {
            return ( isNull() && tl.isNull() );
        } else if ( car().equals(tl.car()) ) {
            return cdr().equals( tl.cdr() );
        } else {
            return false;
        }
    }

    public boolean equals( Object tl ) {     // metodo invocato in generale!
        return equals( (GenSchemeList<TIPO>) tl );
    }



    public GenSchemeList<TIPO> reverse(){
        if (isNull()) return this;
        // lista nulla
        GenSchemeList<TIPO> lista = new GenSchemeList<TIPO>();
        // lista corrente
        GenSchemeList<TIPO> resto = cdr();
        lista = lista.cons(car());
        while (!resto.isNull()) {
            lista = lista.cons(resto.car());
            resto = resto.cdr();
        }
        return lista;
    }


    public String toString(){
        String desc = "(";
        if (!isNull()){
            //CONTIENE CARATTERI E LI STAMPA IN STRINGA
            desc = desc +(car()).toString();
            GenSchemeList<TIPO> resto = cdr();
            while (!resto.isNull()){
                desc = desc + ","+ resto.car().toString() ;
                // TOGLIE IL PRIMO ELEMENTO
                resto = resto.cdr();
            }
        } return desc+")";
    }

    // APPLICA LA FUNZIONE f a tutti gli elementi della lista
    public GenSchemeList<TIPO> map(Function<TIPO,Object> f){
        if (isNull()) return  new GenSchemeList<TIPO>();
        return new GenSchemeList<TIPO>((TIPO)f.apply(car()),cdr().map(f));
    }

    public GenSchemeList<TIPO> append(GenSchemeList<TIPO> Lista){
        if (isNull()) return Lista;
        return (cdr().append(Lista)).cons(car());
    }


}
