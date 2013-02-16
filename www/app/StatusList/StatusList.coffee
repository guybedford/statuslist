define ['zest', 'hbs!./StatusTemplate', 'jquery', 'less!./StatusList'], ($z, statusTemplate, $) ->
  render: (o) ->
    statusTemplate(
      items: o.model.items
    )

  pipe: true

  attach: (el, o) ->
    $('tr', el).click (e) ->
      o.model.remove($(@).data 'id')
