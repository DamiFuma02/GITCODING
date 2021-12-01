//SI OCCUPA DELLA FORMATTAZIONE DEL DOCUMENTO EJS GENERICO

let navButton = document.getElementsByTagName("button")[0];
console.log(navButton);
    let hideNav = document.getElementById("hideNav");
    let indexNav = document.getElementById("index");
    hideNav.addEventListener("click", ()=> {
        indexNav.style.display = "none"
        navButton.style.display = "block"
    })
    navButton.addEventListener("click", () => {
        //toglie la visibilità del bottone
        navButton.style.display = "none"
        //visualizza l'indice
        indexNav.style.display = "flex"
    })
    
    let textContents = document.getElementsByClassName("textContent")
    function showContent(index){
        console.log(index)
        textContents[index].style.display = "inline-block"
    }
    let HideALL = document.getElementById("hideAll")
    HideALL.addEventListener("click", ()=> {
        //nasconde la NAVBAR
        indexNav.style.display = "none"
        //visualizza il navButton
        navButton.style.display = "block"
        //nasconde tutto il contenuto della pagina
        for (let index = 0; index < textContents.length; index++) {
            textContents[index].style.display = "none"
        }
        
    })
    
    let dropindexes = document.getElementsByClassName("indexdrop")
    let buttons = document.getElementsByClassName("fas fa-angle-down")
    
    function dropindex (index, flag) {
        if (flag) dropindexes[index].style.display = "flex"
        else dropindexes[index].style.display = "none"
        console.log(index)
    }