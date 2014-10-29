class Form
  loaded: =>
    @on 'todos:create', @add
    @input = @element().querySelector('#todo_title')

  add: (e) =>
    ol = @element().parentElement.querySelector('ol')
    ol.insertBefore(e.html, ol.children[0])
    @input.value = ''


Shiny.Models.add Form, 'Todo.Form'
