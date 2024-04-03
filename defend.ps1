S C:\Users\vagrant> function TestInternetAccess {
>>     try {
>>         $webpage = Invoke-WebRequest -Uri "https://www.google.com" -UseBasicParsing                                  >>         if ($webpage.StatusCode -eq 200) {                                                                           >>             Write-Host "Internet access test successful. Webpage obtained successfully." -ForegroundColor Green      >>         } else {                                                                                                     >>             Write-Host "Internet access test failed. Unable to obtain webpage. HTTP status code: $($webpage.StatusCode)" -ForegroundColor Red
>>         }
>>     } catch {
>>         Write-Host "Internet access test failed. Error occurred: $_" -ForegroundColor Red
>>     }
>> }
>>
>> # Test the function
>> TestInternetAccess
>>
Internet access test successful. Webpage obtained successfully.
PS C:\Users\vagrant> Invoke-ScriptAnalyzer

cmdlet Invoke-ScriptAnalyzer at command pipeline position 1
Supply values for the following parameters:
Path: defend.ps
Invoke-ScriptAnalyzer : Cannot find path 'C:\Users\vagrant\defend.ps' because it does not exist.
At line:1 char:1
+ Invoke-ScriptAnalyzer
+ ~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Users\vagrant\defend.ps:String) [Invoke-ScriptAnalyzer], ItemNotFoun
   dException
    + FullyQualifiedErrorId : PathNotFound,Microsoft.Windows.PowerShell.ScriptAnalyzer.Commands.InvokeScriptAnalyzerCo
   mmand

PS C:\Users\vagrant> Invoke-ScriptAnalyzer

cmdlet Invoke-ScriptAnalyzer at command pipeline position 1
Supply values for the following parameters:
Path: defend.ps1
Invoke-ScriptAnalyzer : Cannot find path 'C:\Users\vagrant\defend.ps1' because it does not exist.
At line:1 char:1
+ Invoke-ScriptAnalyzer
+ ~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Users\vagrant\defend.ps1:String) [Invoke-ScriptAnalyzer], ItemNotFou
   ndException
    + FullyQualifiedErrorId : PathNotFound,Microsoft.Windows.PowerShell.ScriptAnalyzer.Commands.InvokeScriptAnalyzerCo
   mmand

PS C:\Users\vagrant>
PS C:\Users\vagrant>
>> # Check if any command is provided
>> if ($args.Count -eq 0) {
>>     Write-Output "No command specified."
>> } else {
>>     $command = $args[0]
>>
>>     # Check the first argument and call the corresponding function
>>     switch ($command) {
>>         "testInternetAccess" {
>>             Test-InternetAccess" {
>>             break
>>         }
>>         "enableRestrictInternet" {
>>             Enable-RestrictInternetnd.ps1 [testInternetAccess | enableRestrictInternet]"
>>             # After enabling restriction, test internet access again
>>             Test-InternetAccess
>>             break
>>         }                                           s | enableRestrictInternet]"
>>         default {
>>             Write-Output "Unknown command: $command"nternet]
>>         }vagrant>
>>     }
>> }
No command specified.
PS C:\Users\vagrant> [System.Net.HttpWebRequest]::DefaultWebProxy = New-Object System.Net.WebProxy($null)
>>     Write-Output "Internet access re-enabled."
Internet access re-enabled.
PS C:\Users\vagrant> if ($args.Count -eq 0) {
>>     Write-Output "No command specified."
>> } else {
>>     $command = $args[0]
>>
>>     # Check the first argument and call the corresponding function
>>     switch ($command) {
>>         "testInternetAccess" {
>>             Test-InternetAccess
>>             break
>>         }
>>         "enableRestrictInternet" {
>>             Enable-RestrictInternet
>>             # After enabling restriction, test internet access again
>>             Test-InternetAccess
>>             break
>>         }
>>         "resetRestrictInternet" {
>>             Reset-RestrictInternet
>>             break
>>         }
>>         default {
>>             Write-Output "Unknown command: $command"
>>         }
>>     }
>> }
No command specified.
PS C:\Users\vagrant>