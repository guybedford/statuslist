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
  change: (index, property, value) ->
    @items[index][property] = value
    @update()

  add: (obj) ->
    @items.push obj
    @update()

  update: zoe.fn()

  remove: (title) ->
    for item, index in @items
      if item.title == title
        @items.splice index, 1
        break

    @update()