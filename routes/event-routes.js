const db = require("../models");

module.exports = function(app) {
  // Find all events and return them to the user with res.json
  app.get("/api/events", (req, res) => {
    db.Event.findAll({}).then(dbEvent => {
      res.json(dbEvent);
    });
  });

  app.get("/api/events/:id", (req, res) => {
    // Find one event with the id in req.params.id and return them to the user with res.json
    db.Event.findOne({
      where: {
        id: req.params.id
      }
    }).then(dbEvent => {
      res.json(dbEvent);
    });
  });

  app.post("/api/events", (req, res) => {
    // Create an event with the data available to us in req.body
    console.log(req.body);
    db.Event.create({
      name: req.body.name,
      date: req.body.date,
      city: req.body.city,
      state: req.body.state,
      zip: req.body.zip
    }).then(dbEvent => {
      res.redirect("/users");
      res.json(dbEvent);
    });
  });

  app.delete("/api/events/:id", (req, res) => {
    // Delete the event with the id available to us in req.params.id
    db.Event.destroy({
      where: {
        id: req.params.id
      }
    }).then(dbEvent => {
      res.json(dbEvent);
    });
  });
};
