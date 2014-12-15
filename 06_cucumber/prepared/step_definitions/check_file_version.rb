Then(/^the version of the file "([^"]*)" should be "([^"]*)"$/) do |file,version|

  path = "C:/Program Files/SEAL Systems/SEAL Add Printer Wizard"

  steps %{
    Then running the shell command `powershell -Command "(Get-Command '#{path}/#{file}').FileVersionInfo.ProductVersion"` should succeed
    And the stdout of that shell command should be "#{version}"
  }
end
