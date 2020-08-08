// Requiring path to so we can use relative routes to our HTML files
const path = require("path");

// Requiring our custom middleware for checking if a user is logged in
const isAuthenticated = require("../config/middleware/isAuthenticated");

module.exports = function(app) {
  app.get("/", (req, res) => {
    // directs the user to the login page
    if (req.user) {
      res.redirect("/login");
    }
    res.render(path.join(__dirname, "../views/login.handlebars"));
  });

  app.get("/login", (req, res) => {
    // If the user already has an account send them to the members page
    if (req.user) {
      res.redirect("/");
    }
    res.render(path.join(__dirname, "../views/login.handlebars"));
  });

  app.get("/signup", (req, res) => {
    // If the user already has an account send them to the members page
    if (req.user) {
      res.redirect("/login");
    }
    res.render(path.join(__dirname, "../views/signup.handlebars"));
  });

  // Here we've add our isAuthenticated middleware to this route.
  // If a user who is not logged in tries to access this route they will be redirected to the signup page
  app.get("/users", isAuthenticated, (req, res) => {
    res.render(path.join(__dirname, "../views/dashboard.handlebars"));
  });

  app.get("/events", (req, res) => {
    res.render(path.join(__dirname, "../views/events.handlebars"));
  });

  app.get("/resources", (req, res) => {
    res.render(path.join(__dirname, "../views/resources.handlebars"));
  });
};
