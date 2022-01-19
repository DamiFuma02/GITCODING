const cards = [
    "snow",
    "joypad",
    "butterfly",
    "magnet",
    "waves",
    "phone"
];

const deck = [...cards, ...cards]   //UNISCE IN UN SOLO VETTORE 
console.log(deck)


let flippedCards = [] ;   //all'interno inserire la carta girata 


function checkWIN() {
    let flipped = document.querySelectorAll(".flipped")
    //tutti gli elementi girati
    if (flipped.length == deck.length) {
        //VITTORIA
        let gamearea = document.querySelector(".game-area")
        let WINMSG = document.createElement("div")
        WINMSG.classList.add("WINMSG")
        WINMSG.innerText = "VITTORIA!!"
        
        gamearea.appendChild(WINMSG) 
    }
    return
}


function checkMATCH() {
    let card1 = flippedCards[0]
    let card2 = flippedCards[1]
    let name1 =  card1.getAttribute("data-nomeCarta")
    let name2 =  card2.getAttribute("data-nomeCarta")

    if(name1 == name2){
        //MATCH
        checkWIN()
        
    } else {
        //TIMEOUT di 1 secondo prima di rigirarle

        setTimeout(()=>{
            //RIGIRA LE CARTE 
            card1.classList.remove(name1, "flipped")
            card2.classList.remove(name2, "flipped")
            
        }, 1000);
        
    }

    return

}





function flipCard(e) {
    //GIRA LA CARTA CLICCATA puntata da index
    console.log(e)
    let card = e.target
    console.log(card)   //CARTA CLICCATA

    //FINISCE LA FUNZIONE PERCHé LA CARTA è GIA STATA GIRATA
    if (card.classList.contains("flipped")) return     


    //aggiunge una classe = nomeCarta   
    const nomeCarta = card.getAttribute("data-nomeCarta")
    card.classList.add(nomeCarta, "flipped")   //flipped è una classe aggiuntiva che indica che la carta è stata girata


    flippedCards.push(card)
    if (flippedCards.length == 2) {
        //sono state girate 2 carte
        checkMATCH()    //CONTROLLA SE c'è un MATCH delle 2 carte
        flippedCards = [];
    }
}



let sortedDeck = deck.sort(
    ()=> {
        let n = Math.random() //numero casuale da [0,1[  POSITIVO
        return 0.5 - n;   //per generare un valore randomico positivo o negativo
    }
)
console.log(sortedDeck)




for (let index = 0; index < deck.length; index++) {
    const card = document.createElement("div");
    card.classList.add("card");
    const grid = document.querySelector("#grid")
    grid.appendChild(card)
    const cardName = sortedDeck[index]   //Assegna a cardName il nome della carte
    //PER SETTARE A OGNI CARTA L'ATTRIBUTO data-nomeCarta CHE LE INDICHERà il NOME
    card.setAttribute("data-nomeCarta", cardName)

    card.addEventListener("click",()=>{
        flipCard(event)
    })
    
}




