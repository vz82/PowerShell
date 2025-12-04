#A one-liner searching for rulesets where the RemoteAddress equals "Any"
Get-NetFirewallAddressFilter | Where-Object –FilterScript { $_.RemoteAddress –eq "Any" }
