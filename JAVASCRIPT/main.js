
carousel = document.querySelector("carousel")

slickDots1 = document.querySelectorAll()

    
const topCarousel = document.querySelector("#pageHL #carousel .slick-track")
const newsCarousel = document.querySelector("#news-and-events #carousel .slick-track")
//all'interno dei 2 div viene gestita la presentazione del carosello
const topCarouselChildren = topCarousel.children
const newsCarouselChildren = newsCarousel.children
//il primo e l'ultimo figlio non vengono presentati



let slideCounter = 0
mainSlide = setInterval(()=>{
    let currentSlide = 0
    let prevSlide = 0
    if (slideCounter == 0) {
        currentSlide = topCarouselChildren[1]    //da 1 a 10 compresi
        prevSlide = topCarouselChildren[10]    //da 1 a 10 compresi
    } else {
        currentSlide = topCarouselChildren[slideCounter  + 1]    //da 1 a 10 compresi
        prevSlide = topCarouselChildren[slideCounter ]    //da 1 a 10 compresi
    }
    //nasconde prevSlide
    prevSlide.setAttribute("aria-hidden", "true")
    prevSlide.setAttribute("tabIndex", "-1")
    //mostra currentSlide
    currentSlide.setAttribute("aria-hidden", "false")
    currentSlide.setAttribute("tabIndex", "320")
    currentSlide.classList.add("slick-current")
    currentSlide.classList.add("slick-active")

    //incremento contatore per le prossime slide
    slideCounter++
    if (slideCounter >= 10){
        slideCounter = 0
    }
}, 2000)

    
const topCarousel = document.querySelector("#pageHL #carousel .slick-track")
const newsCarousel = document.querySelector("#news-and-events #carousel .slick-track")
//all'interno dei 2 div viene gestita la presentazione del carosello
const topCarouselChildren = topCarousel.children
const newsCarouselChildren = newsCarousel.children
//il primo e l'ultimo figlio non vengono presentati
newsEventsSlide = setInterval(()=>{
    let currentSlide = newsCarousel[1]    //da 1 a 15 compresi
    //nasconde prevSlide
    hideAllSlides()
    //mostra currentSlide
    currentSlide.setAttribute("aria-hidden", "false")
    currentSlide.setAttribute("tabIndex", "420")
    currentSlide.classList.add("slick-current")
    currentSlide.classList.add("slick-active")

    //incremento contatore per le prossime slide
    slideCounter++
    if (slideCounter >= 15){
        slideCounter = 0
    }
}, 7000)   //ogni 7000ms viene eseguito il codice
//clearInterval(newsEventsSlide)  per fermare tutto


dots = document.querySelectorAll("#pageHL .slick-dots li")
FirstCarouselSlides = document.querySelectorAll(`#pageHL .slick-track .slick-slide:not(.slick-cloned)`)
//nasconde tutte le slide
function hideAllSlides(){
    for (let index = 0; index < FirstCarouselSlides.length; index++) {
        let slide = a[index];
        slide.classList.remove("slick-current")
        slide.classList.remove("slick-active")
        slide.setAttribute("aria-hidden", "true")
        slide.setAttribute("tabIndex", "-1")
    }
}
function showArticle(index){
    //nascondi precedenti
    hideAllSlides()
    //mostra selezionata
    dots[index].blur()   //toglie il focus dal pulsante corrente
    FirstCarouselSlides[index].focus()
}
//eventListener di focus per le slide
for (let index = 0; index < dots.length; index++) {
    let slide = FirstCarouselSlides[index];
    slide.addEventListener("focus", ()=>{
        //mostra la slide corrente
        slide.setAttribute("aria-hidden", "false")
        slide.setAttribute("tabIndex", "320")   //420 se secondo carosello
        slide.classList.add("slick-current")
        slide.classList.add("slick-active")
    } )
}
//eventListener per i pulsanti
for (let index = 0; index < dots.length; index++) {
    let button = dots[index];
    button.addEventListener("focus", showArticle(index))
}


let searchBar = document.querySelectorAll("fieldset")[0].children[7]
let searchButton = document.querySelectorAll("fieldset")[0].children[8]
let navToggle = document.querySelectorAll("a.nav-link")[0]
let active = true   //flag che indica se mostrare o nascondere
function toggleNav(){
    active = !active   //cambia a ogni invocazione
    if(active == false){
        searchBar.setAttribute("tabIndex", "-1")
        searchButton.setAttribute("tabIndex", "-1")
    } 
    else {
        searchBar.setAttribute("tabIndex", "26")
        searchButton.setAttribute("tabIndex", "27")
    }
    //...
    //codice restante gestito dal sito
    //...
}
navToggle.addEventListener("focus", toggleNav)


//TOGGLE MEGAMENU
iconaHamburger = document.querySelectorAll(".nav-link[href]")[1]
menuDipartimento = document.querySelectorAll("#header__megamenu__container li.submenu")[0]
megaMenu = document.querySelector("#header__megamenu__container")
let toggle = false   //Segnala se aprire o chiudere menu
function toggleMenu(flag){
    if (flag == true){  megaMenu.classList.add("opened")  } 
    else {  megaMenu.classList.remove("opened")  }
}
iconaHamburger.addEventListener("focus", ()=>{
    toggle = !toggle
    toggleMenu(toggle)
    if (toggle == true) {
        //sposta il focus sul menuDipartimento
        menuDipartimento.focus()
        //rimuove il focus da se stesso
        iconaHamburger.blur()
    }
})



