mkdir -p ../data
# load API_KEY from key.text
# key.text should only contain your key, and be in the same directory as this script. 
API_KEY=$(cat key.txt)

# ACS DP05 - NYC 
acs_dp05_md='https://api.census.gov/data/2022/acs/acs5/profile/groups/DP05.json'
wget -O ../data/acs2022_dp05_md.json "${acs_dp05_md}?key"

acs_dp05_template='https://api.census.gov/data/2022/acs/acs5/profile?get=group(DP05)&for=tract:*&in=state:36&in=county:005,047,061,081,085'
wget -O ../data/acs2022_dp05.json "${acs_dp05_template}&key"

# Internet Access 
acs_s2801_md='https://api.census.gov/data/2022/acs/acs5/subject/groups/S2801.json'
wget -O ../data/acs2022_s2801_md.json "${acs_s2801_md}?key"

acs_s2801_template='https://api.census.gov/data/2022/acs/acs5/subject?get=group(S2801)&for=tract:*&in=state:36&in=county:005,047,061,081,085'
wget -O ../data/acs2022_s2801.json "${acs_s2801_template}&key"

# Median Household Income
acs_s1901_md='https://api.census.gov/data/2022/acs/acs5/subject/groups/S1901.json'
wget -O ../data/acs2022_s1901_md.json "${acs_s1901_md}?key"

acs_s1901_template='https://api.census.gov/data/2022/acs/acs5/subject?get=group(S1901)&for=tract:*&in=state:36&in=county:005,047,061,081,085'
wget -O ../data/acs2022_s1901.json "${acs_s1901_template}&key"

# Educational Attainment 
acs_s1501_md='https://api.census.gov/data/2022/acs/acs5/subject/groups/S1501.json'
wget -O ../data/acs2022_s1501_md.json "${acs_s1501_md}?key"

acs_s1501_template='https://api.census.gov/data/2022/acs/acs5/subject?get=group(S1501)&for=tract:*&in=state:36&in=county:005,047,061,081,085'
wget -O ../data/acs2022_s1501.json "${acs_s1501_template}&key"

# Limited English Speaking Households 
acs_s1602_md='https://api.census.gov/data/2022/acs/acs5/subject/groups/S1602.json'
wget -O ../data/acs2022_s1602_md.json "${acs_s1602_md}?key"

acs_s1602_template='https://api.census.gov/data/2022/acs/acs5/subject?get=group(S1602)&for=tract:*&in=state:36&in=county:005,047,061,081,085'
wget -O ../data/acs2022_s1602.json "${acs_s1602_template}&key"