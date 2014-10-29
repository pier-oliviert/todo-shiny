class Todo
  loaded: =>
    @on 'todos:destroy', document, @remove

  remove: (e) =>
    el = @element().querySelector("[data-oid='#{e.id}']")
    if el?
      el.remove()

Shiny.Models.add Todo, 'Todo.List'
