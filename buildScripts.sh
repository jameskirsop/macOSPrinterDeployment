### Printer Variables ###
# Variable current_version is useful for deploying printer alterations over time. The version should always match the Custom Software version in Addigy.
# Incrementation examples: 1.1.0 = Printer location description changed, 2.0.0 = Printer has been replaced with a newer model. 
current_version="0.9.0"

# The printer name displayed to users, once printer has been deployed this should not change, as changing the name will result in duplicate printers.
display_name="Daraco CH FujiXerox"

# Physical location of the printer.
location="Castle Hill, Level 1"

# Protocol used to connect to the printer (dnssd, lpd, ipp, ipps, http, socket).
protocol="ipps"

# Network address of the printer can be an IP address, hostname or DNS-SD address.
# DNS-SD address example: "HP%20LaserJet%20400%20colorMFP%20M475dn%20(626EDC)._ipp._tcp.local./?uuid=434e4438-4637-3934-3737-a45d36626edc"
address="172.31.1.249"

# Use the 'Everywhere' model - soon to be the only supported model in CUPS. We assume that the IPP path is /ipp/print below.
use_ipp_everywhere=true

### If use_ipp_everywhere is true, then the below options are not needed
# Path to printer driver (PPD).
driver_ppd="/Library/Printers/PPDs/Contents/Resources/HP Color LaserJet Pro M252.gz"

# Specific options for the printer.
# To find available options, manually add the printer to a Mac and run: lpoptions -p "$insert_cups_printer_name_here" -l
# To list installed CUPS printer queue names run: lpstat -p | /usr/bin/awk '{print $2}'
option_1="PageSize=A4"
option_2="Duplex=None"
option_3=""
