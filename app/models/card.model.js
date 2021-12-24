const sql = require("./db.js");
const Card = function(card) {
  this.id = card.id;
  this.name = card.name;
  this.image = card.image;
};

Card.create = (card, result) => {
  let query = `INSERT INTO cards (name, image) VALUES ?`;
  sql.query(query, card, (err, res) => {
    if (err) {
      console.log("Error: ", err);
      result(err, null);
      return;
    }

    console.log("Carta creada: ", {  carta });
    result(null, { carta });
  });
};

Card.findById = (ids, result) => {
  let query = `SELECT * FROM cards WHERE id IN (${ids})`;
  sql.query(query, (err, res) => {
    if (err) {
      console.log("Error: ", err);
      result(err, null);
      return;
    }

    if (res.length) {
      console.log("Card: ", res);
      result(null, res);
      return;
    }

    result({ kind: "Cartas no encontradas" }, null);
  });
};

Card.getAll = (title, result) => {
  let query = "SELECT * FROM cards";

  sql.query(query, (err, res) => {
    if (err) {
      console.log("Error: ", err);
      result(null, err);
      return;
    }

    console.log("Cartas: ", res);
    result(null, res);
  });
};

module.exports = Card;