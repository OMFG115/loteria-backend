module.exports = app => {
    const cards = require("../controllers/card.controller.js");
  
    var router = require("express").Router();
  
    router.post("/", cards.create);
    router.get("/", cards.findAll);
    router.get("/multiple/", cards.findOne);

    app.use('/api/cards', router);
  };