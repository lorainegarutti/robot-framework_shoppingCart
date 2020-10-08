# About the project
Test suites using the Android app from Casas Bahia e-commerce.
Apk is available on Playstore.

Maria Clara Appium tutorials helped me to set up. Available at: https://github.com/clarabez/appium

## Running tests
#### Terminal 1:
Running only functional tests:
> robot -d results/ tests/functional/

For a log with more complexity:
> robot -d results/ -L trace tests/functional/

Running only smoke-tests (pipelines):
> robot -d results/ -L trace -i smoke-test tests/functional/

#### Terminal 2:
> appium --address 127.0.0.1

## Robot folder struture
resource / results / tests

#### resource
Contains 'variables' and 'keywords' project definitions.

#### results
- error screenshots, 
- video automation execution,
- test logs .html, 
- test report .html

#### tests
Contains 'test cases' project definitions.
