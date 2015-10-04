class @FullHeight
  constructor: ->
    ua = navigator.userAgent.toLowerCase()
    @isAndroid = ua.indexOf('android') > -1
    height = @getHeight()
    @setHeights(height)
    @bind()
    @

  setHeights: (max_height) ->
    $('.full-height').height(max_height)
    $('.half-height').height(max_height/2)
    @

  getHeight: ->
    $(window).height()

  bind: ->
    $(window).resize =>
      @setHeights(@getHeight())
      return
$ ->
  new FullHeight()