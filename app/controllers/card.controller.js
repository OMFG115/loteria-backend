const Card = require("../models/card.model.js");

exports.create = (req, res) => {
    if (!req.body) {
        res.status(400).send({
                message: "Campos incompletos"
        });
    }

    const card = req.body;

    Card.create(card, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Algo paso"
            });
        else res.send(data);
    });
};

exports.findAll = (req, res) => {
    const title = req.query.title;
  
    Card.getAll(title, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                err.message || "Algo paso."
            });
        else res.send(data);
    });
};

exports.findOne = (req, res) => {
    Card.findById(req.body, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `No se encontraron cartas con los ids ${req.body}.`
                });
            } else {
                res.status(500).send({
                    message: "Algo paso"
                });
            }
        } else res.send(data);
    });
  };