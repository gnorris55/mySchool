# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
check = ->
    button = $('.check-button').unbind('click')
    button.click -> 
        if $(this).attr("class") == "check-button check-mark"
            $(this).css("background-color", "#ffcb74")
            $(this).addClass("check-mark-finished").removeClass("check-mark")
        else 
            $(this).css("background-color", "#f4f6ff")
            $(this).addClass("check-mark").removeClass("check-mark-finished")

$(document).ready check
$(document).on 'turbolinks:load', check
$(document).on 'click', check
