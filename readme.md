# Google Domains Dynamic DNS Script

This has been adapted from the article found [here](http://www.farrellf.com/projects/software/2016-05-03_Setting_Up_a_Raspberry_Pi_Web_Server/).

# Instructions

Locate your username and password from the DNS tab on the [Google Domains Site](domains.google.com). Edit the script so that USERNAME, PASSWORD, and YOURDOMAIN are correct for your settings. Note: For every domain you wish to resolve to this machine, such as subdomain.yourdomain.com or meta.domains.domains.yourdomain.com, add another instance of the first line in the script with the information from your google domain account.

Make the script executable by running the command `chmod +x dns_update.sh`

Set the script to run periodically using the `crontab` utility. Check out the aforementioned article for more details, but you should essentially run the following command which reregisters the settings every hour: `crontab -e` with the input `0 * * * * ~/dns_update_script.sh`
