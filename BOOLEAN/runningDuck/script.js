//SCRIPT DI RUNNING DUCK GAME

let road = document.querySelectorAll("#grid > div")

//POSIZIONE DYNO
const dynoPosition = 1;
const dyno = road[dynoPosition];
dyno.classList.add("dyno");


function shiftBush(){
    //sposta verso SX il BUSH
    
    return
}

function addBush(){
    let current = road.length - 1
    road[current].classList.add("bush")


    const interval = setInterval(()=>{
        road[current].classList.remove("bush")
        current--;
        if (current < 0) {
            clearInterval(interval)
            addBush()
            return
        } 
        if (current === dynoPosition && !road[current].classList.contains("dyno-jumped")) {
            //CRASH
            clearInterval(interval)
            road[current].classList.add("bush")
            road[current].classList.remove("dyno")
            return
        }
            
        road[current].classList.add("bush")
        
    }, 1000)
    return
}


//POSIZIONE BUSH
let bushPos = road.length - 1;
road[bushPos].classList.add("bush")
const shiftTime = 1000;
const shifting = setInterval(addBush, 2000)



function checkHIT(){
    //controlla se il Dyno ha beccato il bush
}






function dynoJump(){
    //spostare in alto di --div-size il div class="dyno"
    dyno.classList.add("dyno-jumped")
    //aspetta un DELAY prima di rimuovere la classe
    const timeDelay = 300;
    const jumpDelay = setTimeout(()=>{
        dyno.classList.remove("dyno-jumped")
    }, timeDelay)

}








//listener del click dello spazio su tutta la pagina
document.addEventListener("keydown", (e)=>{
    if(e.code != "Space" || e.repeat){
        //è stato premuto un tasto diverso da SPACE
        //oppure se il tasto è stato premuto per un tempo prolungato
        //impostando la proprietà repeat = true, 
        //default = false quando il tasto non è in fase di keydown
        return
    }
    //CODICE DA ESEGUIRE ALLA PRESSIONE DEL TASTO SPACE
    dynoJump()
})