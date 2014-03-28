class Converter
  cmToIn: (cm) ->
    return false if cm < 0
    cm * 0.3937

  inToCm: (inch) ->
    return false if inch < 0
    inch / 0.3937

  celsiusToFahrenheit: (c) ->
    return false if c <= -273
    c * 1.8 + 32

  fahrenheitToCelsius: (f) ->
    return false if f <= -459.4
    (f - 32) / 1.8

`export default Converter`
