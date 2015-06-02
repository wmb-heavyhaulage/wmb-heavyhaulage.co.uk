---
---

#
# lightbox.coffee
#
# Copyright © 2015 Ross Penman. All rights reserved.
#

# displays a lightbox
# @param index; the index of the photo to display
lightbox = (options = {}) ->
  pswp = document.getElementById "pswp"
  items = for anchor in document.querySelectorAll ".gallery > li > a"
    img = anchor.children[0]
    src: anchor.href
    w: img.getAttribute("data-full-width")
    h: img.getAttribute("data-full-height")
  gallery = new PhotoSwipe pswp, PhotoSwipeUI_Default, items, options
  gallery.init()


###
{% comment %}
  Use Liquid to read the photoswipe HTML, because it's huge and would clutter up
  this source file.
{% endcomment %}
{% capture pswp %}{% include photoswipe.html %}{% endcapture %}
###
pswpMarkup = {{ pswp | jsonify }};

document.getElementById("pswp-container").innerHTML = pswpMarkup

# listen for clicks to display the lightbox
document.addEventListener "click", (e) ->

  # find list of possible preview nodes
  selector = ".gallery img"
  matches = Array::slice.call document.querySelectorAll(selector)
  index = matches.indexOf(e.target)

  # decide whether to respond to this event
  # based on the clicked element matching the appropriate selector
  return if index is -1

  # stop additional effects,
  # like a link being followed
  e.preventDefault()

  # display the lightbox
  lightbox
    index: index

    getThumbBoundsFn: (index) ->

      # find element to get bounds of
      container = matches[index]

      # get vertical scroll offset
      # try three different values for cross-browser compatibility
      pageYOffset = window.pageYOffset ?
        document.documentElement.scrollTop ? document.body.scrollTop

      # get the bounding rect for the element
      # has not yet been adjusted for scroll position
      rect = container.getBoundingClientRect(container)

      # adjust rect for scroll position
      x: rect.left, y: rect.top + pageYOffset, w: rect.width
