class @XHR
  constructor: (el) ->
    @element(el)
    @request = new XMLHttpRequest()
    @request.addEventListener('load', @completed)


  element: (el) ->
    @element = ->
      el

  completed: (e) =>
    if e.target.responseText.length > 1
      eval(e.target.responseText)(@element())

  send: (src, method = 'GET', data) =>
    @request.open(method, src)
    @request.setRequestHeader('X-Requested-With', "XMLHttpRequest")

    @request.send(data)

