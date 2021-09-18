let backbutton = document.getElementsByClassName("gobacktolastpage")

// When user click
var clickEvent = function() {
    history.back()
}

// Make it work
for (var i = 0; i < backbutton.length; i++) {
    elements[i].addEventListener('click', clickEvent, false);
}