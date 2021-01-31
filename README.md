# Google Domains Dynamic DNS Host Registration

Copyright (c) 2021 John Paul Krieg

## Instructions
### Set up the script
1. Visit [Google Domains](Domains.Google.Com) and select your domain from the list.
2. Navigate to the DNS Tab and find the "Synthetic records" card.
3. In the dropdown, select "Dynamic DNS" and enter a subdomain, such as `WWW`
4. Expand the card for the subdomain you just created and click "View Credentials"; take note of two strings:
    a. Username:
    b. Password:
5. Make these substitutions to the URL found in `google_domains_dns_update.sh`:
    a. Replace `username` with the username from step 4
    b. Replace `password` with the password from step 4
    c. Replace `subdomain` with the subdomain created in step 3 (i.e., `WWW`)
    d. Replace `yourdomain` with your domain name (i.e., jpkrieg)
6. Update the output filename (`DNS_RESPONSE_WWW.log`) for each URL to end in the proper subdomain (`WWW` by default)
7. Repeat steps 3-6 for all subdomains you'd like supported, each time copying line 1 and making the necessary substitutions
8. Make the script executable: run `chmod +x google_domains_dns_update.sh`
### Automate the script using crontab
1. Execute `crontab -e`
2. Add this line: `0 * * * * ~/google_domains_dns_update.sh`. This translates to: on the 0th minute of every hour, of every day, of every month, for all days of the week, run the script to keep the DNS resolution up to date
## Logs
1. `DNS_RESPONSE_***.log` contains the most recent response from google for your subdomain `***`. You can interpret their responses using the table here [Google Domains Dynamic DNS](https://support.google.com/domains/answer/6147083?hl=en&ref_topic=9018335#zippy=%2Cusing-the-api-to-update-your-dynamic-dns-record).
2. `DNS_UPDATES.log` contains a timestamp for every time crontab runs your script.
