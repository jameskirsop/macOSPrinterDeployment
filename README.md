# macOSPrinterDeployment
 Scripts to simplify the deployment of printers via Addigy

This project takes the [work done by Michael Page](https://techion.com.au/blog/2019/6/11/advanced-printer-deployment-with-addigy-mdm) and extends it to support IPP Everywhere deployment - which is the path forward for printing with CUPS. Michael provides background for why printer deployment via MDM is in adequate. These updated scripts bridge the gap to modern IPP printer deployment for Addigy users.

The files in `/scripts` can either be used as standalone scripts and manually edited, or you can deploy the micro webservice to present users with a simple GUI to generate content to copy and paste. See my [other macOS related project](https://github.com/jameskirsop/macOSLocalAdminPasswordManagement) for an example on how to deploy the python (bottle) based webservice.

The scripts are deployed as Custom Software in the Addigy catalog. If you wish to have a nice icon to show your customers in Self-Service, install the printer on a test macOS device manually via AirPrint and the icon for the printer will get placed in `/Library/Printers/<PrinterManufacturer>/Icons` and you can export it to a PNG using Preview for upload into Addigy. Unfortuately, there's not a way of having a nice icon appear in the Printers & Scanners Preference Pane when deploying a printer via `lpadmin`.