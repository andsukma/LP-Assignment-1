# Robot Framework Automation
Hi i am Sukma and welcome to my project. This repository demonstrates the automation of API testing using Robot Framework. The purpose of these tests is to automate the API testing of a (https://reqres.in/api).


## Table of Contents
- [Installation](#installation)
- [Test Execution](#test-execution)
- [Reporting](#reporting)

## Installation

1. Clone this repository:

    ```bash
    git clone https://github.com/andsukma/LP-Assignment-1.git
    ```
2. Navigate to the project directory:
    ```bash
    cd LP-Assignment-1
    ```
3. Install 
    ```bash
    pip3 install -r requirements.txt
    ```
## Test Execution
To run tests, use the following command:
```bash
robot tests/
```
You can also run individual test files or test cases using:
```bash
robot tests/create-user.robot
```
## Reporting
Once the tests are executed, Robot Framework will generate the following reports in the root directory:
* output.xml: Raw output file for the test run.
* report.html: Test summary report.
* log.html: Detailed test logs with steps and execution results.
You can open report.html in your browser to view a high-level summary of the test results, or use log.html for detailed information.
