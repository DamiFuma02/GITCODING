//per legger i parametri passati nell'URL
var parameters = location.search.substring(1);
let names = ""
let values = ""
if (parameters != "") {
    //controlla che i parametri non siano vuoti
    names = parameters.substring(0, parameters.indexOf("="))
    values = parameters.substring((parameters.indexOf("=") + 1), parameters.length)
    
    console.log(names)
    console.log(values)
    document.getElementById(values).style.display = "block"

}