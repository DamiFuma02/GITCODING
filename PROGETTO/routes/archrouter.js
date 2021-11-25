//viene usata per gestire le route delle pagine derivanti da Architettura.ejs
var express = require("express");
var fs = require("fs");
var path = require("path");
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


router.get('/pdf', function (req, res) {
    res.render("arch/pdfviewer.ejs")
    
})












module.exports = router;