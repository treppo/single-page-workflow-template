`import Converter from './converter'`
`import View from './view'`

converter = new Converter
view = new View

view.onCmToInClick converter.cmToIn
view.onInToCmClick converter.inToCm
view.onFahrenheitToCelsiusClick converter.fahrenheitToCelsius
view.onCelsiusToFahrenheitClick converter.celsiusToFahrenheit
