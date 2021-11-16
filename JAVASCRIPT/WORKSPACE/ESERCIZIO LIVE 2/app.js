"use strict"

//INDIVIDUARE I DATI CONO CUI ANDARE A LAVORARE
//BISOGNA CREARE UNA LISTA, CHE SARà UN ARRAY


function getUserName() {
    const name = prompt("Inserisci il tuo nome: ");
    return name;
}

document.body.innerHTML = "HELLO " + getUserName() + "!";

const lista = [
    {   id: 1, descrizione: "Learn Programming", done: true    },

    {   id: 2, descrizione: "Learn JavaScript", done: false    }
];