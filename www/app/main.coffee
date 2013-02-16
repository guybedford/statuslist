define ['zest', 'cs!app/StatusModel', 'cs!app/StatusList/StatusList'], ($z, StatusModel, StatusList) ->

  render = ->
    $z.render StatusList,
      model: StatusModel
    , document.body

  StatusModel.load ->
    render()

    StatusModel.add.on ->
      $z.dispose(document.body.childNodes)
      render()

    StatusModel.change.on ->
      $z.dispose(document.body.childNodes)
      render()
