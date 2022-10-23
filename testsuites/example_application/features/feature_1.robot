*** Settings ***
Documentation     = General Description =
...               test suite example documentation
Suite Setup       Prepare Testsuite
Suite Teardown    Cleanup Testsuite
Test Setup        Prepare Testcase
Test Teardown     Cleanup Testcase
Resource          ../../../resources/keywords/import_keywords.robot
Force Tags        example_tag

*** Test Cases ***
Scanario: example scenario
    Given log  arange
    When log  act
    Then log  assert

*** Keywords ***
Prepare Testsuite
    Log  suite setup

Cleanup Testsuite
    Log  suite cleanup

Prepare Testcase
    Log  test setup

Cleanup Testcase
    Log  test teardown