//viene usata per gestire le route delle pagine derivanti da Architettura.ejs
var express = require("express");
var fs = require("fs");
var path = require("path");
const { setTimeout } = require("timers");
var app = express()
var router = express.Router();
app.set('view-engine', "ejs");
app.set("views", path.join("views/Architettura"));

app.use("/img", express.static("public/images"))
app.use("/css", express.static("public/styles"))
app.use("/js", express.static("public/scripts"))
//per visualizzare correttamente il file PDF
app.use("/pdf", express.static("views"))

router.get('/CodDig', function (req, res) {
    
    res.render("arch/Codifica_Digitale.ejs")
})

router.post("/CodDig", (req, res, e)=> {
    //req.body = { Number: "", StartBase: "", toBase: "", Result: ""}
    dati = req.body
    
    res.render("arch/Codifica_Digitale.ejs", {data: dati})
    
})


router.get('/pdf', function (req, res) {
    res.render("arch/pdfviewer.ejs")
    
})
router.get('/Struct', function (req, res) {
    res.render("arch/StrutturaCalc.ejs")
    
})

router.get("/Storia", (req, res)=> {
    res.render("arch/Storia.ejs")
})

router.get("/Memoria", (req, res)=> {
    res.render("arch/Memoria.ejs")
})

router.get("/CPU", (req, res)=> {
    res.render("arch/CPU.ejs")
})

router.get("/Memoria/RAM", (req, res)=> {
    res.render("arch/Memoria/RAM.ejs")
})

router.get("/Memoria/MemVIRT", (req, res)=> {
    res.render("arch/Memoria/MemVIRT.ejs")
})

router.get("/Memoria/Cache", (req, res)=> {
    res.render("arch/Memoria/Cache.ejs")
})












module.exports = router;