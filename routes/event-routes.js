var db = require("../models");

module.exports = function(app) {
  // Find all events and return them to the user with res.json
  app.get("/api/events", function(req, res) {
    db.Event.findAll({}).then(function(dbEvent) {
        console.log(dbEvent);
        res.json(dbEvent);
    });
  });

  app.get("/api/events/:id", function(req, res) {
    // Find one event with the id in req.params.id and return them to the user with res.json
    db.Event.findOne({
      where: {
        id: req.params.id
      }
    }).then(function(dbEvent) {
      console.log(dbEvent);
      res.json(dbEvent);
    });
  });

  app.post("/api/events", function(req, res) {
    // Create an event with the data available to us in req.body
    console.log(req.body);
    db.Event.create(req.body).then(function(dbEvent) {
      res.json(dbEvent);
    });
  });

  app.delete("/api/events/:id", function(req, res) {
    // Delete the event with the id available to us in req.params.id
    db.Event.destroy({
      where: {
        id: req.params.id
      }
    }).then(function(dbEvent) {
      res.json(dbEvent);
    });
  });

};
