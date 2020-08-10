let languageId;

$("#languagesSrc").click(function (event) {
  let languageName = $(event.target).val();//Get the button's value

  switch(languageName) {
    case "javascript":
      languageId = 1;
      break;
    case "node":
      languageId = 2;
      break;
    case "react":
      languageId = 3;
      break;
    default:
      languageId = 4;
  }

  getVideos();
  getBooks();
  getCourses();
});

function getVideos () {
  $.get("/api/video/" + languageId)
    .then(response => {
      console.log(response);
      window.location.replace("/resources");
    });
}

function getBooks () {
  $.get("/api/book/" + languageId)
    .then(response => {
      console.log(response);
    });
}

function getCourses () {
  $.get("/api/course/" + languageId)
    .then(response => {
      console.log(response);
    });
}
