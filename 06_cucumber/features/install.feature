Feature: Installing APW

  @norollback
  Scenario: Check we can install APW 2.1.2.105

    Given there is a running VM called "win7"

    When I install "SealAPW-Setup-2.1.2.105-x64.msi", it should succeed
    Then the version of the file "sealapw.exe" should be "2.1.2.105"
    And the version of the file "send2pls.exe" should be "2.1.2.105"
