$(document).ready(function() {


  $.get('http://localhost:4567/api/json', function(data) {
    $('#whatevs').text(data);
  });

});
