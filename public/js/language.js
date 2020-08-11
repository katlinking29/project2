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
  window.location.replace("/resources/" + languageId);
});
