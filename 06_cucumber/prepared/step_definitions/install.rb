Then(/^(?:installing|I install)(?:| the MSI) "([^"]*)"(?:|, it) should (succeed|fail)$/) do |msi,condition|
  steps %{
    Then running the shell command `powershell -Command "(New-Object Net.WebClient).DownloadFile('http://sealweb/master/sealapw_2.1.2/install/sealapw/#{msi}', 'C:/Users/vagrant/Downloads/#{msi}')"` should #{condition}
  	Then running the shell command `msiexec /i "C:\\Users\\vagrant\\Downloads\\#{msi}" /quiet /norestart SEALAPW_SERVER_URL=http://localhost:3000` should #{condition}
  }
end
