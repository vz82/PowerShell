#A one-liner searching through the ruleset by name
#Name                          : CoreNet-IGMP-Out
#DisplayName                   : Kernnetzwerk - Internetgruppenverwaltungs-Protokoll (IGMP ausgehend)
#Description                   : IGMP-Nachrichten werden von Knoten gesendet und empfangen, um Multicastgruppen zu erstellen sowie Mitglieder hinzuzufügen und zu entfernen.
#DisplayGroup                  : Kernnetzwerk
#Group                         : @FirewallAPI.dll,-25000
#Enabled                       : True
#Profile                       : Any
#Platform                      : {}
#Direction                     : Outbound
#Action                        : Allow
#EdgeTraversalPolicy           : Block
#LooseSourceMapping            : False
#LocalOnlyMapping              : False
#Owner                         : 
#PrimaryStatus                 : OK
#Status                        : Die Regel wurde erfolgreich vom Speicher aus analysiert. (65536)
#EnforcementStatus             : NotApplicable
#PolicyStoreSource             : PersistentStore
#PolicyStoreSourceType         : Local
#RemoteDynamicKeywordAddresses : {}
#PolicyAppId                   :
Get-NetFirewallrule -Name "CoreNet-IGMP-Out"