const path = require("path");
const db = require("../models");

// Requiring path to so we can use relative routes to our HTML files

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
    // If the user already has an account send them to the login page
    if (req.user) {
      res.redirect("/");
    }
    res.render(path.join(__dirname, "../views/login.handlebars"));
  });

  app.get("/signup", (req, res) => {
    // If the user already has an account send them to the login page
    if (req.user) {
      res.redirect("/login");
    }
    res.render(path.join(__dirname, "../views/signup.handlebars"));
  });

  // Here we've add our isAuthenticated middleware to this route.
  // If a user who is not logged in tries to access this route they will be redirected to the signup page
  app.get("/users", isAuthenticated, (req, res) => {
    res.render("dashboard", {name: req.user.email});
  });

  app.get("/events", (req, res) => {
    res.render("events", {name: req.user.email});
  });

  app.get("/resources/:id", isAuthenticated, (req, res) => {
    const resources = { videos: [], books: [], courses: [] }
    //Find all videos
    db.video.findAll({
      where: {
        languageId: req.params.id
      },
      include: [db.language]
    }).then(function(response) {
      let videos = {
        data : response.map(data => {
          return {
            video_name: data.video_name,
            video_channel: data.video_channel,
            video_link: data.video_link
          }
        })
      }
      resources.videos = videos.data
      db.course.findAll({
        where: {
          languageId: req.params.id
        },
        include: [db.language]
      }).then(function(response) {
        let courses = {
          data: response.map(data => {
            return {
              course_name: data.course_name,
              course_path: data.course_path,
              company_name: data.company_name,
              course_link: data.course_link
            }
          })
        }
        resources.courses = courses.data
        db.book.findAll({
          where: {
            languageId: req.params.id
          },
          include: [db.language]
        }).then(function(response) {
          let books = {
            data: response.map(data => {
              return {
                book_name: data.book_name,
                store_url: data.store_url,
                book_img: data.book_img
              }
            })
          }
          resources.books = books.data
          res.render("resources",{data:resources});
        });
      })
    });
  });
};
