window.onload = ()=>{
    a = document.querySelectorAll("h1,h2,h3,h4,a")    
    for (let index = 0; index < a.length; index++) {
        a[index].style.fontWeight = "bold"
        a[index].style.color = "blue"
    }
  }