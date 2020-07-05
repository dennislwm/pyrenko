# pyrenko

This is a class for calculating and visualizing a renko chart.

## Author

Credit to the [author](https://github.com/lamres/renko_trend_following_strategy_catalyst) for source code of pyrenko.

The only contribution from [dennislwm](https://github.com/dennislwm/pyrenko) is made a package and upload it to PyPi.

## Installation

     $ pip install pyrenko

## Example

     >>> import pyrenko

## Getting Data

     >>> import yfinance
     >>> data = yfinance.download('SPY', start="2019-01-01", end="2019-12-31")

Note: Variable **data** is of type DataFrame that consists of columns ['Open', 'High', 'Low', 'Close'].

### Get optimal brick size based

     >>> optimal_brick = pyrenko.renko().set_brick_size(auto = True, HLC_history = data[["High", "Low", "Close"]])

### Build Renko  

     >>> objRenko = pyrenko.renko()
     >>> print('Set brick size: ', objRenko.set_brick_size(auto = False, brick_size = optimal_brick))
     >>> objRenko.build_history(prices = data.Close)

### Renko data

     >>> print('Renko length:' , len(objRenko.get_renko_prices()))
     >>> print('Renko bar directions: ', objRenko.get_renko_directions())
     >>> print('Renko bar evaluation: ', objRenko.evaluate())

### Plot chart

     >>> objRenko.plot_renko()
