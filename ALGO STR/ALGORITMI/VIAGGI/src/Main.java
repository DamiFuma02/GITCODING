import java.util.List;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");
        Manager man = new Manager();
        man.prenotaViaggio();
        dataPartenza = 2022-10-24;
        dataArrivo = 2022-10-28;
        // estrae i viaggi che hanno una corrispondenza con la data inserita
        List<Viaggio> viaggiPerData = man.estraiViaggiPrenotati(dataPartenza, dataArrivo);

        List<Viaggio> viaggiPerLuogo = man.estraiViaggiPrenotati(luogoPartenza, luogoArrivo);

        // modifica il percorso associato al [viaggio] con il [nuovoPercorso]
        // il [viaggio] corrente deve avere origine e destinazione in comune con il [nuovoPercorso]
        man.reinstradaViaggio(viaggio,nuovoPercorso);
    }
}