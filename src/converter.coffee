class Converter
  cmToIn: (cm) =>
    return NaN if @isInvalid parseFloat cm
    return NaN if cm < 0
    cm * 0.3937

  inToCm: (inch) =>
    return NaN if @isInvalid parseFloat inch
    return NaN if inch < 0
    inch / 0.3937

  celsiusToFahrenheit: (c) =>
    return NaN if @isInvalid parseFloat c
    return NaN if c <= -273
    c * 1.8 + 32

  fahrenheitToCelsius: (f) =>
    return NaN if @isInvalid parseFloat f
    return NaN if f <= -459.4
    (f - 32) / 1.8

  isInvalid: (input) ->
    typeof input isnt 'number' or isNaN input

`export default Converter`
