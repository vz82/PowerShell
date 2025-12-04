#A one-liner searching for rulesets where the RemoteAddress DOES NOT equal "Any"
Get-NetFirewallAddressFilter | Where-Object –FilterScript { $_.RemoteAddress –ne "Any" }