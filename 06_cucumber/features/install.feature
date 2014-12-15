Feature: Installing APW

  Scenario: Check we can install APW 2.1.2.105

    Given there is a running VM called "win7"

    When I install "SealAPW-Setup-2.1.2.105-x64.msi", it should succeed
    Then the version of the file "sealapw.exe" should be "2.1.2.105"
