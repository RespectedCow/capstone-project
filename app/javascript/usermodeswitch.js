document.addEventListener('turbolinks:load', function() {

    // Variables
    var buyerbutton = document.getElementById("buyerbutton")
    var performerbutton = document.getElementById("perfomerbutton")
  
    buyerbutton.addEventListener("click", function() {
      document.getElementById("buyerframe").style.display = "block"
      document.getElementById("performerframe").style.display = "none";
      document.getElementById("tabindictor").innerHTML = "Buyer tab";

      buyerbutton.classList.add("div-clicked")
      performerbutton.classList.remove("div-clicked")
    });

    performerbutton.addEventListener("click", function() {
      document.getElementById("buyerframe").style.display = "none"
      document.getElementById("performerframe").style.display = "block";
      document.getElementById("tabindictor").innerHTML = "Performer tab";

      performerbutton.classList.add("div-clicked")
      buyerbutton.classList.remove("div-clicked")
    });
})