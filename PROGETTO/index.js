const flash = require("express-flash");



const express = require("express");
var path = require("path");
const app = express();
const server = require("http").createServer(app)
PORT = process.env.PORT || 5000
ip = "192.168.1.63"
server.listen(PORT, ip, 1, function listener() {
    console.log(`SERVER IN ASCOLTO -> ${ip} : ${PORT}`)
});



app.use(express.json())
app.use(express.static("public")) //cartella contenente i fili statici
app.use(express.urlencoded({ extended: false }));


const indexRouter = require("./routes/indexrouter")
const archRouter = require("./routes/archrouter")
app.use("/", indexRouter); //DEFINISCE COME RISPONDERE A: IP/route
app.use("/account", archRouter); //DEFINISCE COME RISPONDERE A: IP/account/route
//vengono impostate le directory per il percorso indicato "/img, /css, /js"
app.use("/img", express.static("public/images"))
app.use("/css", express.static("public/styles"))
app.use("/js", express.static("public/scripts"))

//queste 2 funzioni servono per gestire l'indirizzamento corretto verso i file ejs
//i quali andranno visualizzati dal client
app.set('view-engine', "ejs");
app.set("views", path.join(__dirname, "views"));