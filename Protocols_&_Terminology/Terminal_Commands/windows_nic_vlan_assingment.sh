# Instead of relying on the GUI, we can use PowerShell. First, let us get the names of all the available physical network adapters using the Get-NetAdapter Cmdlet:

Get-NetAdapter | Format-Table -AutoSize

# Previously, we used Device Manager to assign Ethernet 2 to VLAN 10; to retrieve the VLAN ID of the interface, we can use the Get-NetAdapaterAdvancedProperty Cmdlet with the -DisplayName flag along with vlan id:

Get-NetAdapterAdvancedProperty -DisplayName "vlan id"

# We can also set the VLAN ID of a physical network address using the Set-NetAdapter Cmdlet along with the VlanID flag; this powerful Cmdlet can also be used to customize other properties of interfaces such as MAC addresses:

Set-NetAdapter -Name "Ethernet 2" -VlanID 10
