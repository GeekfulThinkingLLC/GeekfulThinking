$(document).ready ->
  scroll_start = 0
  startchange = $('#startchange')
  offset = startchange.offset()
  $(document).scroll ->
    scroll_start = $(this).scrollTop()
    if scroll_start > offset.top
      $('#navbar-scroll').css 'background-color', 'rgba(255,255,255,.9)'
    else
      $('#navbar-scroll').css 'background-color', 'transparent'
    return
  return