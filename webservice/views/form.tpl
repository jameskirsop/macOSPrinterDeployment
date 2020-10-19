<h3>Variables</h3>
% if error:
    <strong class="error">{{ error }}</strong>
% end
<p>Fill out the following variables, and click <strong>Go!</strong> to generate your scripts to paste in to the Addigy Custom Software dialog.</p>
<form method="POST" action="">
    <!-- <input type="text" name="cipher-password" id=""> -->
    <div class="form_element">
        <label for="current_version">Current Version</label>
        <input type="text" name="current_version" id="" placeholder="1.0.0">
        <small>Variable current_version is useful for deploying printer alterations over time. The version should always match the Custom Software version in Addigy.<br />
        Incrementation examples: 1.1.0 = Printer location description changed, 2.0.0 = Printer has been replaced with a newer model.</small>
    </div>
    
    <div class="form_element">
        <label for="display_name">Display Name</label>
        <input type="text" name="display_name" id="display_name" placeholder="CH Accounts FujiXerox">
        <small>The printer name displayed to users, once printer has been deployed this should not change, as changing the name will result in duplicate printers.</small>
    </div>
    
    
    <div class="form_element">
            <label for="location">Location</label>
            <input type="text" name="location" id="location" placeholder="Tower Building, London, Level 10">
            <small>Physical location of the printer.</small>
    </div>

    <div class="form_element">
        <label for="protocol">Protocol</label>
        <select name="protocol" id="protocol">
            <option value="dnssd">dnssd</option>
            <option value="lpd">lpd</option>
            <option value="ipp">ipp</option>
            <option value="ipps" selected>ipps</option>
            <option value="http">http</option>
            <option value="socket">socket</option>
        </select>
        <small>Protocol used to connect to the printer</small>
    </div>

    <div class="form_element">
        <label for="">Network address</label>
        <input type="text"  name="address" placeholder="172.31.1.240">
        <small>Network address of the printer can be an IP address, hostname or DNS-SD address.<br />
            DNS-SD address example: <code>HP%20LaserJet%20400%20colorMFP%20M475dn%20(626EDC)._ipp._tcp.local./?uuid=434e4438-4637-3934-3737-a45d36626edc</code></small>
    </div>

    Use IPP Everywhere<br />
    <div class="form_element">
        <div class="inline-radio">
            <input type="radio" name="use_ipp_everywhere" id="use_ipp_everywhere" value=true checked>
            <label for="">Yes</label>
        </div>
        <div class="inline-radio">
            <input type="radio" name="use_ipp_everywhere" id="use_ipp_everywhere" value=false>
            <label for="">No</label>
        </div><br />
        <small>Use the 'Everywhere' model - soon to be the only supported model in CUPS. We assume that the IPP path is /ipp/print below.</small>
    </div>
    
    <p><strong>If Use IPP Everywhere is true, then the below options are not needed and you can skip to the Go button!</strong></p>
    <div class="form_element">
        <label for="">PPD Location</label>
        <input type="text" name="driver_ppd" id="driver_ppd" placeholder="/Library/Printers/PPDs/Contents/Resources/HP Color LaserJet Pro M252.gz">
        <small>Path to printer driver (PPD)</small>
    </div>

    <div class="form_element">
        <label for="">Specific options for the printer</label>
        <input type="text" name="option_1" placeholder="Opt1:PageSize=A4">
        <input type="text" name="option_2" placeholder="Opt2:Duplex=None">
        <input type="text" name="option_3" placeholder="Opt3">
        <small>
            To find available options, manually add the printer to a Mac and run: <code>lpoptions -p "$insert_cups_printer_name_here" -l</code><br />
            To list installed CUPS printer queue names run: <code>lpstat -p | /usr/bin/awk '{print $2}'</code>
        </small>
    </div>

    <button type="submit">Go!</button>
</form>