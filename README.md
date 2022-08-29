# AirtagToTraccar

I've taken the code from icepick3000/AirtagAlex and SchorschKloni/AirtagAlex and 
- put it together in the correct order
- clarified a bit the format of the curl url to upload data to traccar
- added the serial number of the Airtag to the data sent to traccar
- added a "sleep 1" after every call to traccar not to overload the server if you have many Airtags

NB: your AirTag name will be your device ID so you'll have to choose if you want something readable, like "Backpack", or something a bit more randomic and less readable

NB2: Apple has changed how airtags report battery: https://www.macrumors.com/2022/07/21/apple-removes-airtag-battery-level-icon-find-my/
and I think the script is not suited to manage this change, I did not have time to look into it.

### Requirements:

- You'll need to have a mac with at least BigSur (MacOsX 11) installed
- The mac will need to be always-running
- You'll need to open the app "Find My" at least once (will check if it needs to be always opened&running or not

___

# Original instructions from: https://github.com/icepick3000/AirtagAlex

## AirtagAlex
Get all metadata from the Airtags (lat, lon, geocoding information, precision range, battery status).
This script is a very basic script to write the data to a CSV for processing in Excel or Numbers. I am sure many rewrites will be done by other folks but anyone with some programming experience will have a good starting point with this script. 

Click below to see the youtube video and a step by step guide;

[![Click here for the youtube video](https://img.youtube.com/vi/9VQ-_ztG9aM/0.jpg)](https://www.youtube.com/watch?v=9VQ-_ztG9aM)



Steps to get this script to work (for Noobs);

Create a folder on your desktop called <i>Airtags</i> (case sensitive)<BR>
Install brew (<A HREF="wwww.brew.sh" TARGET=new>www.brew.sh</A>)<BR>
  Install the jq utility (<i>brew install jq</I>)<BR>
  Change the directory to the newly created Airtags folder by typing <i>cd ~/Desktop/Airtags</I><BR>
  Clone this repo by typing <i>git clone https://github.com/icepick3000/AirtagAlex.git</I><BR>
  Go into the repo directory by typing <i>cd ~/Desktop/Airtags/AirtagAlex</I><BR>
  Make the shell file executable by typing <I>chmod 700 AirtagAlex.sh</I><BR>
  
  You can start the script by typing;
  
  <B><I>./AirtagAlex.sh</I></B>
  
  The output will look something like this;<BR>
  <I>Create a copy of the Items.data file to prevent changes while the script is running<BR>
Check if Airtags.csv exists<BR>
Check how many Airtags to process<BR>
Number of Airtags to process:       4<BR>
Processing airtag number 0<BR>
Write the data to the Airtags.csv file<BR>
Processing airtag number 1<BR>
Write the data to the Airtags.csv file<BR>
Processing airtag number 2<BR>
Write the data to the Airtags.csv file<BR>
Processing airtag number 3<BR>
Write the data to the Airtags.csv file<BR>
Sleep for 1 minute (60 seconds)</I><BR>
  
  The results in CSV format can be found on your desktop in the Airtags folder!
    
 To see all my Airtag adventures check out my channel at https://www.youtube.com/c/AirtagAlex
    
 If this script was of use to you a referal in your video or project would be highly appreiciated. 

    
# Original instructions from: https://github.com/SchorschKloni/AirtagAlex/

## AirtagAlex
for knowledge how it works
[![Click here for the youtube video](https://img.youtube.com/vi/9VQ-_ztG9aM/0.jpg)](https://www.youtube.com/watch?v=9VQ-_ztG9aM)

And read everything @ Airtag Alex
Thanks a lot to him for his Work
