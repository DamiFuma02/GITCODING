import java.util.ArrayList;
import java.util.LinkedList;

public class Main {
    public static void main(String[] args) {
        LinkedList<String> linkedList = new LinkedList<>();
        // INSERIMENTO DIRETTO... SI MODIFCANO IL PUNTATORE PREV E NEXT DEL NODO PRECEDENTE E SUCCESSIVO
        // RISPETTO ALLA POSIZIONE(INDEX) IN CUI SI VUOLE AGGIUNGERE L'ELEMENTO
        linkedList.add("CIAO");

        linkedList.add(2,"COME");

        linkedList.add("VA");

        linkedList.add("?");

        // RIMOZIONE DIRETTA PER LO STESSO MOTIVO DELL'INSERIMENTO... È SUFFICIENTE MODIFICARE I PUNTATORI
        linkedList.remove("?");

        // ACCESSO SEQUENZIALE, QUINDI COSTOSO THETA(n)
        linkedList.get(2);



        ArrayList<String> arrayList = new ArrayList<>();
        // INSERIMENTO COSTOSO IN QUANTO È POSSIBILE TERMINARE LO SPAZIO A DISPOSIZIONE DELL'ARRAY CHE CONTIENE LA LISTA
        // OPPURE PERCHE BISOGNA FARE UNO SHIFT A DX DI TUTTI GLI ELEMENTI SUCCESSIVI ALLA POSIZIONE INDEX SCELTA PER L'INSERIMENTO
        arrayList.add(2,"CIAO");
        arrayList.add("COME");

        arrayList.add("VA");

        // RIMOZIONE COMPLICATA PER LO STESSO MOTIVO DELL'INSERIMENTO
        arrayList.remove("VA");

        arrayList.add("?");
        // ACCESSO DIRETTO, COSTO UNICO THETA(1)
        arrayList.get(2);











    }
}