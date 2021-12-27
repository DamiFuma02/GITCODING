const flash = require("express-flash");


 
const express = require("express");
var path = require("path");
const app = express();
const server = require("http").createServer(app)
PORT = process.env.PORT || 5000
ip = "localhost"   //192.168.1.63 = HOME          192.168.213.197 = ROUTER SAMSUNG
server.listen(PORT, ip, 1, function listener() {
    console.log(`SERVER IN ASCOLTO -> ${ip} : ${PORT}`)
});



app.use(express.json())
app.use(express.static("public")) //cartella contenente i fili statici
app.use(express.urlencoded({ extended: false }));


const indexRouter = require("./routes/indexrouter")
const archRouter = require("./routes/archrouter")
app.use("/", indexRouter); //DEFINISCE COME RISPONDERE A: IP/route
app.use("/archElab", archRouter); //DEFINISCE COME RISPONDERE A: IP/account/route

//vengono impostate le directory per il percorso indicato "/img, /css, /js"
app.use("/img", express.static("public/images"))
app.use("/css", express.static("public/styles"))
app.use("/js", express.static("public/scripts"))
//per visualizzare correttamente il file PDF
app.use("/pdf", express.static("views"))
