# TKRSpecificTest

You can run a specific test case by xcodebuild!

## Installation

You need to import 4 files.

- TKRTestSuite.h
- TKRTestSuite.m
- XCTestSuite+Only.h
- XCTestSuite+Only.m

## Usage

### Specific test class

```
$ xcodebuild test -scheme Tests -destination "name=iPhone Retina (4-inch 64-bit),OS=7.0" GCC_PREPROCESSOR_DEFINITIONS='DEBUG=1 TEST_ONLY=\"TestCaseSample1\"'
```

### Specific test case

```
$ xcodebuild test -scheme Tests -destination "name=iPhone Retina (4-inch 64-bit),OS=7.0" GCC_PREPROCESSOR_DEFINITIONS='DEBUG=1 TEST_ONLY=\"TestCaseSample1/testExample1\"'
```

### All tests

```
$ xcodebuild test -scheme Tests -destination "name=iPhone Retina (4-inch 64-bit),OS=7.0"
```
