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
it will show `API_KEY is not set in the environment. Please enter your API_KEY:` then you need to enter the calendarific API key.






