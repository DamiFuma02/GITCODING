"use strict"

//DICHIARAZIONE OGGETTI
const object = {
    attributo1 : "testo",
    attributo2 : "ciao",
    attributo3 : 34
};

const array = [
    "matita",
    "occhiali",
    {
        nome : "Damiano",
        cognome : "Fumagalli",
        vettore : ["ciao", "come", "va?"]
    }
];

//SERVE PER AZZERARE UN VETTORE
//array.length=0;

//scelta=prompt("Inserisci l'attributo da visualizzare")
//console.log(object[scelta])
console.log(object.attributo1, object.attributo1)

console.log(array[0], array[1],  array[2].vettore[0])
console.log(array[2].nome)  //la cella 2 dell'array è un oggetto, perciò ha un attributo "nome"
console.log(array[2].vettore[0])    //la cella 2 dell'array è un oggetto, perciò ha un attributo che è anche un vettore

const arr = [];
//VETTORE VUOTO

//METODI PER GLI ARRAY

arr.push(1);         //RIEMPE L'ARRAY DA DX IN CODA
arr.push(2, 3, 4);
console.log(arr)

let c = arr.pop();  //PRELEVA L'ULTIMO VALORE, DALLA CODA LIFO /LAST IN FIRST OUT
console.log("c",c)


console.log(arr);
arr.unshift(0);      //RIEMPE L'ARRAY DA SX, IN TESTA

let s = arr.shift();    //PRELEVA IL PRIMO ELEMENTO
console.log("s",s)

const arr2 = arr.slice(1,4);    //DALL'INDICE 1 DAL 4(ESCLUSO) 1,2,3
console.log("arr: ", arr, "arr2", arr2)

const arr3 = arr.splice(1,2);    //TOGLIE 2 VALORI DALLA CELLA 1 IN POI DEL arr    
const arr4 = arr.splice(1,2, -1, -2, -3);
console.log(arr3);
console.log(arr4);

//FUNZIONI
console.log("FUNZIONI\n")
function FUNZIONE1 () {
    //FUNZIONE SENZA PARAMETRI
    let a = 20;
    return a;
}

function Stampa(FUN) {
    console.log(FUN);
}

Stampa(FUNZIONE1);

let a = 2, b = 8;
const multiply = function(a=2, b=3) {
    return a * b;
}

console.log(multiply());


//OBJECT NAVIGATION

document // = DOM
document.documentElement   // radice del documento, contiene HEAD e BODY

//STAMPA DEL TAG HEAD DEL DOC RADICE
console.log(document.head ) //contengono il tag head nella pagina HTML
console.log(document.body)  //tag body del file html



console.log(document.childNodes)   //LISTA DEI NODI FIGLI DEL DOCUMENTO ARRAY
document.firstChild   //PRIMO FIGLIO, ATTRIBUTO
console.log(document.lastChild)    //ULTIMO DOCUMENTO
document.hasChildNodes()    //VALORE BOOL TRUE FALSE SE HA >= 1 FIGLIO

console.log(document.body.childNodes)

console.log(document.body.textContent)  //STAMPA IL TESTO CONTENENTE NEL TAG BODY
document.body.textContent = "HELLO"
console.log(document.body.textContent)  //STAMPA IL TESTO CONTENENTE NEL TAG BODY


document.body.cloneNode(false)   //CLONA SOLO IL NODO SCELTO

//document.appendChild(nuovotag)
console.log(document.childNodes)

console.log(document.body.childNodes[0].nodeType === Node.TEXT_NODE) //stampa true / false se l'oggetto selezionato ha o meno un nodo di testp

console.log(document.body.childNodes[0])    //stampa il primo figlio del body

console.log(document.body.nodeType)         //TIPO 1 = ELEMENTO

//è possibile implementare gli elementi con le funzionalità simili a quelle dei nodi

// Node. compare una lista in cui i parametro che terminano con NODE, indicano le tipologie di nodo


let cerca="IDscelto"
document.getElementById (cerca)    //id è una stringa che inidica appunto l'id che si vuole cercare, che però ovviamente deve essere attribuito
//si cercano gli id dei tag del file . html

const p = document.getElementById (cerca);

//p.parentElement.removeChild(p);       rimuove il figlio p, che sarà quello trovato dalla funzione precedente
//p.remove()    non è sempre supportato a livello di browser

classe = "classeScelta"
document.getElementsByClassName (classe);   //la classe non è univoca, id è univoco

tag = "tagScelto"
document.getElementsByTagName (tag);        //cerca form, span, h1.. ecc


document.querySelector(".elementoscelto")       //cerca i tag che hanno la classe specificato

let stringa="tag scelto";
const nuovoTag = document.createElement(stringa);           //crea un nuovo tag
document.body.appendChild(nuovoTag);            //aggiunge il nuovotag al genitore, in questo caso bodyù

document.body.classList.contains("Contiene la classe scelta? TRUE O FALSE");
document.body.classList.add("Nuova classe da aggiungere");
document.body.classList.remove("Classe da rimuovere");
document.body.classList.toggle("Aggiungere se non c'a, oppure rimuovere se c'e gia la classe specificata");
document.body.classList.replace("Vecchia Classe", "Nuova classe")   //se la vecchia era presente la sostituisce con la nuova specificata

//classList è un attributo che si comporta come un array, che in base all'indice indica le lista di tutte le classi

document.body.innerText = "testo che comparirà nel body";       //funzione simile a textcontent


//creazione di un nuovo html che nel primo caso avrà campo solo nel figlio del elemento scelto
//nel secondo caso invece di tutto l'elemento più i suoi figli
document.body.innerHTML = "";       //il nostro elemento (body)  sara vuoto

//document.body.outerHTML


//MANIPOLAZIONE ELEMENTI

document.body.before("<p>CIAO</p>");
document.body.after("<span>CIAOOOOO</span>");
document.body.replaceWith("<h1>CIAOOO</h1>");

document.body.append("Nuovo Figlio alla FINE");
document.body.prepend("Nuovo Figlio all' INIZIO");


//CREAZIONE ELEMENTI
const Li1 = document.createElement("li");
Li1.className = "primo elemento";




const form = document.getElementById("add_todo_form");

const textInput = document.getElementById("todo_text").value; //ritorna il valore presente

console.log("Valore inserito : ",textInput.value);

const todoList = document.querySelector(".todo-list");

//todoList.innerHTML = "";  //lista comincia vuota

//INSERIMENTO TODO DENTRO LA LISTA TRAMITE INPUT
/*
//createElement

const Li1 = document.createElement("Li"); //creaaazione nuovo tag Li
Li1.className("todo-list-item done");     //assegnazione al nuovo elemento Li della classe specificata
todoList.appendChild(Li1);

//CREAZIONE DEGLI ELEMENTI DENTRO LA LISTA
const checkbox1 = document.createElement("input");
checkbox1.type = "checkbox";
checkbox1.className = "todo-list-item done";
checkbox1.checked = true;     //aggiunge attributo checked booleano
checkbox1.disabled = true;
Li1.appendChild(checkbox1);
console.log("Input checkbox 1 creato\n")

const span1 = document.createElement("span");
span1.className = "todo-list-item-description";
span1.textContent = "Learn Programming";
Li1.appendChild(span1);
console.log("SPAN 1 creato\n")


todoList.innerHTML = "";
*/

//CLOONE NODE
const itemTemplate = todoList.children[1];

const Li1 = itemTemplate.cloneNode(true);
Li1.classList.add("done");
todoList.appendChild(Li1);

const check1 = Li1.querySelector("input");
check1.checked = true;
check1.disabled = true;

const span1=Li1.querySelector("span");
span1.textContent = "Learn Programming"