const db = require("../models");

module.exports = function (app) {
  // Get route for retrieving videos
  app.get("/api/video/:id", function(req, res) {
    db.Video.findAll({
      where: {
        languageId: req.params.id
      },
      include: [db.Language]
    }).then(function(dbVideo) {
      const hbsObject = {
        video: dbVideo
      };
      res.render("resources",hbsObject);
    });
  });
  // Get route for retrieving courses
  app.get("/api/course/:id", function(req, res) {
    db.Course.findAll({
      where: {
        languageId: req.params.id
      },
      include: [db.Language]
    }).then(function(dbCourse) {
      res.json(dbCourse);
    });
  });
  // Get route for retrieving books
  app.get("/api/book/:id", function(req, res) {
    db.Book.findAll({
      where: {
        languageId: req.params.id
      },
      include: [db.Language]
    }).then(function(dbBook) {
      res.json(dbBook);
    });
  });
};
