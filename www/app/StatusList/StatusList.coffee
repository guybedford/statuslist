define ['zest', 'hbs!./StatusTemplate', 'less!./StatusList'], ($z, statusTemplate) ->
  render: (o) ->
    statusTemplate(
      items: o.model.items
    )

