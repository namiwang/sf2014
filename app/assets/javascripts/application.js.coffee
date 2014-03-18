# = require jquery
# = require jquery_ujs
# = require jquery.easing.1.3
# = require jquery.backstretch
# = require bootstrap
# = require turbolinks
# = require image_path
# = require_self

$( ->
  $(document).on( 'click', '.sidenav a', ->
    switch ( href = $(@).attr('href') )
      when '#apply'
        return
      else
        $('html, body').animate({
          scrollTop: $(href).offset().top
        }, 500, 'easeInOutQuart')

    return false
  )  

  $('#bg').backstretch(image_path 'bg.jpg')
)
