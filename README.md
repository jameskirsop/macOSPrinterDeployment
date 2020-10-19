# macOSPrinterDeployment
 Scripts to simplify the deployment of printers via Addigy

This project takes the [work done by Michael Page](https://techion.com.au/blog/2019/6/11/advanced-printer-deployment-with-addigy-mdm) and extends it to support IPP Everywhere deployment - which is the path forward for printing with CUPS. Michael provides background for why printer deployment via MDM is in adequate. These updated scripts bridge the gap to modern IPP printer deployment for Addigy users.

The files in `/scripts` can either be used as standalone scripts and manually edited, or you can deploy the micro webservice to present users with a simple GUI to generate scripts. See my [other macOS related project](https://github.com/jameskirsop/macOSLocalAdminPasswordManagement) for an example on how to deploy the python (bottle) based webservice.