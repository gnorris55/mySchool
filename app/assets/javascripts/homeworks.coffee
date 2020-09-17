# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
hide = -> 
    button = $('.unsubmit').unbind('click')
    button.click -> 
        $(this).next(".home-fillin").hide()
        $("#homework-button").parent().show()
        $("#homework-button").show()
        return

done = -> 
    button = $('.finished').unbind('click')
    button.click -> 
        $(this).closest("article").hide()
        return

view_notes = -> 
    button = $('.get-notes').unbind('click')
    button.click -> 
        if $(this).html() == "view notes"
            $(this).next('.note-section').show()
            $(this).html("hide notes")
            console.log("show")
            return
        else
            $(this).next('.note-section').hide()
            $(this).html("view notes")
            console.log("hide")
            return

view_subject = ->
    button = $('.subject-button').unbind('click')
    button.click -> 
        if $(this).attr('class') == "subject-button closed"
            $(this).parent().next('.subject').show()
            $(this).addClass("opened").removeClass("closed")
        else 
            $(this).parent().next('.subject').hide()
            $(this).addClass("closed").removeClass("opened")



$(document).ready hide
$(document).on 'turbolinks:load', hide

$(document).ready done
$(document).on 'turbolinks:load', done

$(document).ready view_notes
$(document).on 'turbolinks:load', view_notes

$(document).ready view_subject
$(document).on 'turbolinks:load', view_subject