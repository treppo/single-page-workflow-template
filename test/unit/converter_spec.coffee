`import Converter from '../../src/converter'`

describe 'Converter', ->

  beforeEach ->
    @it = new Converter

  returnsErrorWhenNotValidInput = ->

  it 'converts cm to in', ->
    expect @it.cmToIn '3'
      .toEqual 1.1811

    expect @it.cmToIn '1'
      .toEqual 0.3937

  it 'returns an error for negative cm', ->
    expect @it.cmToIn '-3'
      .toEqual NaN

  it 'returns false if input it not cm', ->
    expect @it.cmToIn 'invalid'
      .toEqual NaN

  it 'converts in to cm', ->
    expect @it.inToCm '1'
      .toEqual 2.54000508001016

    expect @it.inToCm '2'
      .toEqual 5.08001016002032

  it 'returns an error for negative inch', ->
    expect @it.inToCm '-3'
      .toEqual NaN

  it 'returns false if input it not inch', ->
    expect @it.inToCm 'invalid'
      .toEqual NaN

  it 'converts fahrenheit to celsius', ->
    expect @it.fahrenheitToCelsius '212'
      .toEqual 100

    expect @it.fahrenheitToCelsius '50'
      .toEqual 10

  it 'returns an error for too low fahrenheit', ->
    expect @it.fahrenheitToCelsius '-459.5'
      .toEqual NaN

  it 'returns false if input it not fahrenheit', ->
    expect @it.fahrenheitToCelsius 'invalid'
      .toEqual NaN

  it 'converts celsius to fahrenheit', ->
    expect @it.celsiusToFahrenheit '100'
      .toEqual 212

    expect @it.celsiusToFahrenheit '10'
      .toEqual 50

  it 'returns an error for too low celsius', ->
    expect @it.celsiusToFahrenheit '-273'
      .toEqual NaN

  it 'returns false if input it not celsius', ->
    expect @it.celsiusToFahrenheit 'invalid'
      .toEqual NaN
