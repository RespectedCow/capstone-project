// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import "../trix-editor-overrides"
require("usermodeswitch.js")
require("backbutton.js")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
require("trix")
require("@rails/actiontext")
import {DataTable} from "simple-datatables"

document.addEventListener('turbolinks:load', function() {
    const myTable = document.querySelector("#gigsList");
    const dataTable = new DataTable(myTable, {
        hiddenHeader: true,
        header: false,
        labels: {
            placeholder: "Search for a term",
            perPage: "{select} gigs per page",
            noRows: "No gigs found."
        },
        searching: false,
        
    });
})