# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
hide_form = -> 
    button = $('.unsubmit').unbind('click')
    button.click -> 
        $(".actual-form").html("")
        $("#homework-button button").show()
        $(this).hide()
        return

$(document).ready hide_form
$(document).on 'turbolinks:load', hide_form

