define ['zoe'], (zoe) ->
  
  load: (callback) ->
    @items = [
      title: 'First item'
      status: 'Ok'
      color: 'red'
    ,
      title: 'Second item'
      status: 'Not ok'
      color: 'blue'
    ,
      title: 'Another item'
      status: 'all good'
      color: 'green'
    ]
    callback()


  # triggers with dataChange(itemIndex, 'status', 'newValue')
  change: zoe.fn([(index, property, value) ->
    @items[index][property] = value
  ])

  add: zoe.fn([(obj) ->
    @items.push obj
  ])




