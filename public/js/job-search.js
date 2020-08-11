var searchBtn = $('#search-btn');
var jobContainer = $('#container');
var jobs = ['Front End Developer', 'Back End Developer' ];

/* looping through the different job options*/
jobs.forEach( element => {
    var jobOptions = $("<option>");
    jobOptions.text(element);
    $('#job-options').append(jobOptions);
});

/* when the search button is clicked it will pull job listings from indeed*/
$(searchBtn).click(function() {
    event.preventDefault();
    jobContainer.empty();
        var city = $('#city').val();
            console.log(city);
        var jobType = $('#job-options').val();
            console.log(jobType);
        $.ajax({
            url: 'https://cors-anywhere.herokuapp.com/https://indreed.herokuapp.com/api/jobs?q=' + jobType + '&l=' + city + '&max=5&country=us&sort=date',
            type: 'GET',
            dataType: 'json',
            success: function(response){
                console.log(response);
        /*building the boxes to append API results to*/
        response.forEach( element => { 
            console.log(element)
        var divE1 = $("<div>");
        var pE1 = $("<p>");
        var pE2 = $("<p>");
        var pE3 = $("<p>");
        var pE4 = $("<p>");
        var aE1 = $("<a>");
        var brE1 = $("<br>");
        jobContainer.append(divE1);
        /*adding style classes to each element*/
        divE1.addClass("my-5 cursor-pointer");
        pE1.addClass("my-auto font-bold text-gray-700 group-hover:text-orange");
        pE2.addClass("text-sm font-hairline text-left ml-2 text-gray-700 group-hover:text-orange");
        pE3.addClass("text-sm font-hairline text-left ml-2 text-gray-700 group-hover:text-orange");
        pE4.addClass("text-sm font-hairline text-left ml-2 text-gray-700 group-hover:text-orange");
        
        /*appending divs to each other to form the structure*/
        $(divE1).append(pE1);
        $(divE1).append(pE2);
        $(divE1).append(pE3);
        $(divE1).append(pE4);
        $(pE4).append(brE1);
        $(divE1).append(aE1);
        /*adding content to the containers*/
        $(pE1).text(element.company);
        $(pE2).text(element.title);
        $(pE3).text(element.location);
        /*building indeed button link*/
        $(aE1).attr("target", "_blank");
        $(aE1).attr("href", element.url);
        $(aE1).addClass("bg-white hover:bg-gray-100 text-gray-800 font-semibold py-2 px-4 border border-gray-400 rounded shadow");
        $(aE1).text("Take me there");


            });
        }
    });
});




