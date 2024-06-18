# Intro
This repo is used to save countries' national holiday maintained in [Calendarific](https://calendarific.com/]).

## Update holiday manually
if you want to update vietnam's national holiday in 2024: 
```
cd ops
chmod +x get_holidays.sh
cd ..
./ops/get_holidays.sh vn 2024
```
It will show `API_KEY is not set in the environment. Please enter your API_KEY:` then you need to enter the calendarific API key.
Then it will automatically fetch the vietnam's national holiday in 2024 and save the response to `vn/2024.json`

## Update holiday automatically using github actions
Here we have a github workflow `annually-get-holidays.yml` to automatically update national holiday in this repo.
If we need to support other countries' holiday, eg. us, please:
1. Update us holiday manually for current year
2. add us in the cron job: update script `get_next_year_holidays.sh`, add `ops/get_holidays.sh us $NEXT_YEAR` at the end of the file.





