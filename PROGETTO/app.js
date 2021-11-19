const express = require('express');
const app = express();
const server = require("http").createServer(app);
server.listen(5500, "localhost", () => {
    console.log("server in ascolto")
})

app.get('/', (req, res) => {
    res.render('index.ejs')
})

app.get('/architettura', (req, res) => {
    res.render('architettura.ejs')
})