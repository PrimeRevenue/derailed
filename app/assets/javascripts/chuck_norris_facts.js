// stuff 

$( document ).ready(function() {
  $("#grid-data-api").bootgrid({
      ajaxSettings: {
          method: "GET",
          cache: false
      },
      url: "/chuck_norris_facts"
  });
  console.log("let's karate chop!");
});
