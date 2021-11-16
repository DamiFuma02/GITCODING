if (process.env.NODE_ENV !== "production") {
    require("dotenv").config();
}
const path = require("path")
const flash = require("express-flash");



const express = require("express");
const app = express();
const server = require("http").createServer(app)
PORT = process.env.PORT || 80
ip = "localhost"
server.listen(PORT, ip, 1, function listener() {
        console.log(`SERVER IN ASCOLTO -> ${ip} : ${PORT}`)
    })
    /*
    server.listen(PORT, ip,
        () => {
            console.log(`SERVER IN ASCOLTO -> (${ip}:${PORT})`)
        });*


    /*
    server.on("request", (req, res) => {
        res.send("CIAO")
    })*/


const mongoose = require("mongoose")
const session = require("express-session");
const MongoDBSession = require("connect-mongodb-session")(session)
    //CONNESSIONE A MONGODB TRAMITE MONGOOSE
mongoPath = process.env.DATABASE_URL || ""
if (mongoPath != "") {
    mongoose.connect(mongoPath, {
        useNewUrlParser: true,
        useUnifiedTopology: true
    })
    const db = mongoose.connection
    db.on("error", error => console.error(error))
    db.once("open", () => {
        console.log("Connesso al database")
    })
}


//definisce dove vengono salvate le informazioni relative
//alla sessione in corso, derivante dal login
const DBSession = new MongoDBSession({
    uri: mongoPath,
    collection: "session"
})

app.use(express.json())
app.use(express.static("public")) //cartella contenente i fili statici
app.use(express.urlencoded({ extended: false }));
app.use(flash());
const secret = process.env.SESSION_SECRET || "TESTODIFFICILE"
app.use(session({
    secret: secret,
    resave: false, //NON SALVA LE INFO DELLA SESSIONE IN CASO IN CUI NULLA è CAMBIATO
    saveUninitialized: false, //NON SALVA I VALORI VUOTI NELLE SESSIONI
    store: DBSession //le info sulla sessione andranno salvate nella collection "session"
}));


const indexRouter = require("./routes/index")
const accountRouter = require("./routes/account")
app.use("/", indexRouter); //DEFINISCE COME RISPONDERE A: IP/route
app.use("/account", accountRouter); //DEFINISCE COME RISPONDERE A: IP/account/route
//vengono impostate le directory per il percorso indicato "/img, /css, /js"
app.use("/img", express.static("public/immagini"))
app.use("/css", express.static("public/styles"))
app.use("/js", express.static("public/scripts"))


//queste 2 funzioni servono per gestire l'indirizzamento corretto verso i file ejs
//i quali andranno visualizzati dal client
app.set('view-engine', "ejs");
app.set("views", path.join(__dirname, "views"));