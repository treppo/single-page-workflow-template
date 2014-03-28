class View
  eventHandlerGen = (elId) ->
    (cb) ->
      button = document.getElementById elId
      button.addEventListener 'click', @inputToOutput cb

  onCmToInClick: eventHandlerGen 'cm-to-in'

  onInToCmClick: eventHandlerGen 'in-to-cm'

  onFahrenheitToCelsiusClick: eventHandlerGen 'fahrenheit-to-celsius'

  onCelsiusToFahrenheitClick: eventHandlerGen 'celsius-to-fahrenheit'

  inputToOutput: (f) -> =>
    result = f @inputValue()
    console.log result

    @hideError()

    if isNaN result
      @showError()

    @output result

  inputValue: ->
    document.getElementById 'input-value'
      .value

  output: (value) ->
    document.getElementById 'output'
      .value = value

  showError: ->
    document.getElementById 'input-value'
      .classList.add 'error'

    document.getElementById 'input-error-message'
      .classList.add 'error'

    document.getElementById 'input-error-message'
      .classList.remove 'hide'

  hideError: ->
    document.getElementById 'input-value'
      .classList.remove 'error'

    document.getElementById 'input-error-message'
      .classList.remove 'error'

    document.getElementById 'input-error-message'
      .classList.add 'hide'

`export default View`
