#bin/bash


MacOsUserTracker () {

id -P {admin}; 
id -P {user}; 
id -P {teacer}; 
id -P {other};

}

MacOSxVersionTracker () {

inputname=()
inputversion=()
goodname=()
goodversion=()
badname=()
badversion=()



# Adobe Acrobat Reader DC
Adobe_Acrobat_Reader_DC="defaults read /Applications/Adobe\ Acrobat\ Reader\ DC.app/Contents/Info.plist CFBundleShortVersionString"
AdobeAcrobatReaderDC=$(eval $Adobe_Acrobat_Reader_DC)
inputname[0]="Adobe_Acrobat_Reader_DC"
inputversion[0]="$AdobeAcrobatReaderDC"

# Google Chrome
Google_Chrome="defaults read /Applications/Google\ Chrome.app/Contents/Info.plist CFBundleShortVersionString"
GoogleChrome=$(eval $Google_Chrome)
inputname+=("Google_Chrome")
inputversion+=("$GoogleChrome")


#QuickTime Player
QuickTime_Player="defaults read /Applications/QuickTime\ Player.app/Contents/Info.plist CFBundleShortVersionString"
QuickTimePlayer=$(eval $QuickTime_Player)

inputname+=("QuickTime_Player")
inputversion+=($QuickTimePlayer)


# RealPlayer
Real_Player="defaults read /Applications/RealPlayer.app/Contents/Info.plist CFBundleShortVersionString"
RealPlayer=$(eval $RealPlayer)

inputname+=("RealPlayer")
inputversion+=("$RealPlayer")


# RealPlayer Convertor
RealPlayer_Convertor="defaults read /Applications/RealPlayer\ Converter.app/Contents/Info.plist CFBundleShortVersionString"
RealPlayerConvertor=$(eval $RealPlayer_Convertor)
inputname+=("Real_Player_Convertor")
inputversion+=("$RealPlayerConvertor")

# Audacity
Audac="defaults read /Applications/Audacity.app/Contents/Info.plist CFBundleShortVersionString"
Audacity=$(eval $Audac)

inputname+=("Audacity")
inputversion+=("$Aduacity")



#Firefox
Fire_Fox="defaults read /Applications/Firefox.app/Contents/Info.plist CFBundleShortVersionString"
Firefox=$(eval $Fire_Fox)
inputname+=("Fire_Fox")
inputversion+=("$Firefox")


#KeyNote
Key_Note="defaults read /Applications/Keynote.app/Contents/Info.plist CFBundleShortVersionString"
KeyNote=$(eval $Key_Note)
inputname+=("KeyNote")
inputversion+=("$KeyNote")

#Pages
Page="defaults read /Applications/Pages.app/Contents/Info.plist CFBundleShortVersionString"
Pages=$(eval $Page)

inputname+=("Pages")
inputversion+=("$Pages")

#Numbers
Number="defaults read /Applications/Numbers.app/Contents/Info.plist CFBundleShortVersionString"
Numbers=$(eval $Number)

inputname+=("Numbers")
inputversion+=("$Numbers")


#iMovie
iMovi="defaults read /Applications/iMovie.app/Contents/Info.plist CFBundleShortVersionString"
iMovie=$(eval $iMovi)
inputname+=("iMovie")
inputversion+=("$iMovie")


# Photos
Photo="defaults read /Applications/Photos.app/Contents/Info.plist CFBundleShortVersionString"
Photos=$(eval $Photo)
inputname+=("Photos")
inputversion+=("$Photos")


#GarageBand
Garage_Band="defaults read /Applications/GarageBand.app/Contents/Info.plist CFBundleShortVersionString"
GarageBand=$(eval $Garage_Band)

inputname+=("GarageBand")
inputversion+=("$GarageBand")


#Microsoft Word 
Microsoft_Word="defaults read /Applications/Microsoft\ Word.app/Contents/Info.plist CFBundleShortVersionString"
MicrosoftWord="$(eval $Microsoft_Word)"

inputname+=("Microsoft_Word")
inputversion+=("$MicrosoftWord")


#Microsoft Excel
Microsoft_Excel="defaults read /Applications/Microsoft\ Excel.app/Contents/Info.plist CFBundleShortVersionString"
MicrosoftExcel="$(eval $Microsoft_Excel)"

inputname+=("Microsoft_Excel")
inputversion+=("$MicrosoftExcel")



#Microsoft PowerPoint
Microsoft_PowerPoint="defaults read /Applications/Microsoft\ PowerPoint.app/Contents/Info.plist CFBundleShortVersionString"
MicrosoftPowerPoint=$(eval $Microsoft_PowerPoint)

inputname+=("Microsoft_PowerPoint")
inputversion+=("$MicrosoftPowerPoint")



# Microsoft Outlook
Microsoft_Outlook="defaults read /Applications/Microsoft\ Outlook.app/Contents/Info.plist CFBundleShortVersionString"
MicrosoftOutlook="$(eval $Microsoft_Outlook)"

inputname+=("Microsoft_Outlook")
inputversion+=("$MicrosoftOutlook")


# Microsoft OneNote
Microsoft_OneNote="defaults read /Applications/Microsoft\ OneNote.app/Contents/Info.plist CFBundleShortVersionString"
MicrosoftOneNote="$(eval $Microsoft_OneNote)"

inputname+=("Microsoft_OneNote")
inputversion+=("$MicrosoftOneNote")


#Microsoft Skype For Business
Skype_For_Business="defaults read /Applications/Skype\ for\ Business.app/Contents/Info.plist CFBundleShortVersionString"
SkypeForBusiness="$(eval $Skype_For_Business)"

inputname+=("Microsoft_Skype_For_Business")
inputversion+=("$SkypeForBusiness")



#NBC Learn Offline Player
NBC_Learn_Offline_Player="defaults read /Applications/NBC\ Learn\ Offline.app/Contents/Info.plist CFBundleShortVersionString"
NBCLearnOfflinePlayer=$(eval $NBC_Learn_Offline_Player)

inputname+=("NBC_Learn_Offline_Player")
inputversion+=("$NBCLearnOfflinePlayer")


# Shockwave Player
Shockwave_Player="defaults read /Library/Application\ Support/Adobe/Shockwave\ 12/DirectorShockwave.bundle/Contents/Info.plist CFBundleShortVersionString"
Shockwave_Players="$(eval $Shockwave_Player)"

inputname+=("Shockwave_Player")
inputversion+=("$Shockwave_Players")


#iTunes
iTune="defaults read /Applications/iTunes.app/Contents/Info.plist CFBundleShortVersionString"
iTunes=$(eval $iTune)

inputname+=("iTunes")
inputversion+=("$iTunes")

#CrowdStrike Falcon
CrowdStrike_Falcon="sysctl cs | tail -n 1 | cut -b -9"
CrowdStrikeFalcon=$(eval $CrowdStrike_Falcon)

inputname+=("CrowdStrike_Falcon")
inputversion+=("$CrowdStrikeFalcon")


#Symantec Endpoint Protection
Symantec_Endpoint_Protection="defaults read /Applications/Symantec\ Solutions/Symantec\ Endpoint\ Protection.app/Contents//Info.plist CFBundleShortVersionString"
SymantecEndpointProtection=$(eval $Symantec_Endpoint_Protection)

inputname+=("Symantec_Endpoint_Protection")
inputversion+=("$SymantecEndpointProtection")


#iBooks or Books
Ibook1="defaults read /Applications/iBooks.app/Contents/Info.plist CFBundleShortVersionString"
Ibook2="defaults read /Applications/Books.app/Contents/Info.plist CFBundleShortVersionString"
Iboo1=$(eval $Ibook1)
Iboo2=$(eval $Ibook2)

inputname+=("IBooks")
inputversion+=("$Iboo1")
inputname+=("IBooks_Which_Now_Is_Called_Books")
inputversion+=("$Iboo2")


#Maps
Map="defaults read /Applications/Maps.app/Contents/Info.plist CFBundleShortVersionString"
Maps=$(eval $Map)

inputname+=("Maps")
inputversion+=("$Maps")


#Calendar
Calenda="defaults read /Applications/Calendar.app/Contents/Info.plist CFBundleShortVersionString"
Calander=$(eval $Calenda)

inputname+=("Calender")
inputversion+=("$Calander")


#Safari
Safar="defaults read /Applications/Safari.app/Contents/Info.plist CFBundleShortVersionString"
Safari=$(eval $Safar)

inputname+=("Safari")
inputversion+=("$Safari")


#Siri
Sir="defaults read /Applications/Siri.app/Contents/Info.plist CFBundleShortVersionString"
Siri=$(eval $Sir)
inputname+=("Siri")
inputversion+=("$Siri")


#Home
Hom="defaults read /Applications/Home.app/Contents/Info.plist CFBundleShortVersionString"
Home=$(eval $Hom)

inputname+=("Home")
inputversion+=("$Home")


#Voice Memoms	
Voice_Memos="defaults read /Applications/VoiceMemos.app/Contents/Info.plist CFBundleShortVersionString"
VoiceMemos=$(eval $Voice_Memos)
inputname+=("Voice_Memos")
inputversion+=("$VoiceMemos")


#News 
New="defaults read /Applications/News.app/Contents/Info.plist CFBundleShortVersionString"
News=$(eval $New)

inputname+=("News")
inputversion+=("$News")


#Stocks
Stock="defaults read /Applications/Stocks.app/Contents/Info.plist CFBundleShortVersionString"
Stocks=$(eval $Stock)

inputname+=("Stocks")
inputversion+=("$Stocks")


#testing javac
Javat=$(java -version 2>&1 | awk -F '"' 'NR==1 {print $2}')

inputname+=("Javac")
inputversion+=("$Javat")


count=0
lenforname=${#inputname[*]} 
lenforversion=${#inputversion[*]}
let numbername=$lenforname
let numberversion=$lenforversion

countgood=0
i=0
printf %s%s "$numbername $numberversion"


if [ $numbername == $numberversion ]
then
{
	printf "List match"
	for (( i; i<${lenforname}; ++i ))
	do	
		if [[ -z ${inputversion[i]##"exit"} ]]
		then
			printf "\n✘ [%d] %-30s                  %25s" "${i}" "${inputname[i]}"   "${inputversion[i]}" >> NotFoundVersion.txt
			printf "\n✘ [%d] %-30s                  %25s" "${i}" "${inputname[i]}"   "${inputversion[i]}"
		else

			printf "\n✔ [%d] %-30s                 %25s" "${i}" "${inputname[i]}"  "${inputversion[i]}" >> FoundVersion.txt
			printf "\n✔ [%d] %-30s                 %25s" "${i}" "${inputname[i]}"  "${inputversion[i]}" 
			
		fi

done


}
else
{
	printf "Number of the name of the version does not match with the number of the version/n"
	for (( i=0; i<${lenforname}; ++i ))
	do
	
		printf "[%d]%s--->[%d]%s\n\n\n" ${i} ${inputname[i]} ${i} ${inputversion[i]}
	done	
}
fi

}

MacOsAcessApplication () {

osascript -e 'display dialog "Application and system prefences should open orderly base on the MacOSx checklist,Close the application for the next one to open" with title " OSx Application"'
open -W x-apple.systempreferences:com.apple.preference
open -W /System/Library/CoreServices/Finder.app/Contents/Applications/AirDrop.app/
open -W /Applications/Facetime.app
#osascript -e 'display dialog "Look at the dock at the bottom, do you see the App Store, no? next application will appear in 5 sec" with title " OSx Application"'
Sleep 2
osascript -e 'display dialog "System Preference will open, click on Desktop & User and check if admin is able to acces it. ←" with title " OSx Application"'
open -W x-apple.systempreferences:com.apple.preference
osascript -e 'display dialog "System Preference will open click User and Groups and go to login item ↙.  " with title " Osx Application"'
open -W x-apple.systempreferences:com.apple.preference
open -Wb  com.apple.systempreferences /System/Library/PreferencePanes/iCloudPref.prefPane
open -W x-apple.systempreferences:com.apple.preferences.sharing?Services_ScreenSharing
osascript -e 'display dialog "Press Not Now and Skip When Message Appear" with title " OSx Application"'
open -W /Applications/Messages.app
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/Accounts.prefPane/
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/PrintAndFax.prefPane
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/Security.prefPane/
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/EnergySaver.prefPane/
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/Notifications.prefPane/
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/Dock.prefPane
osascript -e 'display dialog "Press General to see the Handoff option. ⟵  " with title " OSx Application"'
open -W x-apple.systempreferences:com.apple.preference
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/InternetAccounts.prefPane/
open -W /Applications/Contacts.app
open -W /Applications/Reminders.app
open -W /Applications/Notes.app
open -W /Applications/Messages.app
osascript -e 'display dialog "Click IBooks-->Prefences on the menu bar" with title " OSx Application"'
open  /Applications/Books.app
osascript -e 'display dialog "The Remaining of the check list like opening siri and going to google should be done manually  " with title " OSx Application"'

}


osxsystemsetting () {

osascript -e 'display dialog "Look At Menu Bar, Top Right First Column Will Have Information Needed For Your Checklist ↗  " with title "Instruction"'
Sleep 3
printf "Web Clients Will Open In 3 Seconds"
open /Applications/Safari.app/
open /Applications/Google\ Chrome.app/
open /Applications/Firefox.app/


}


SystemSettinOsx () {

open -W /System/Library/PreferencePanes/Bluetooth.prefPane/
open -W /System/Library/PreferencePanes/Localization.prefPane
open -W /System/Library/PreferencePanes/ParentalControls.prefPane
open -W /System/Library/PreferencePanes/Spotlight.prefPane
osascript -e 'display dialog "Click Computer Settings when Remote Management appear to see the image version info" with title " OSx Application"'
open -W x-apple.systempreferences:com.apple.preferences.sharing?Remote_Management
printf "Click Computer Managment"
open -W /Applications/App\ Store.app/
open -W /System/Library/PreferencePanes/PrintAndScan.prefPane/


}

printf "Welcome to the MacOSx Test Image for the Soultion Design Engineering Team.\nThe purpose of the script is to reduce the operation time of testing MacOsx imaging \n\n\\n\n"

choice=0

while [ $choice -ne "6" ]

do

printf "Press 1, Check For Following Users Appear, Table B\n\n"
printf "Press 2, Verify Application, Table D\n\n"
printf "Press 3  Test Following Features, Table E\n\n"
printf "Press 4  Testing System Across All Accounts, Table F\n\n" 
printf "Press 5  Testing System Preferences, Table G\n\n"
printf "Press 6 to quit\n\n"


Printf "Number = "
read DISTR
case $DISTR in

     1)
          printf "\nList users within the Image\n"
	  choice=1
          MacOsUserTracker

          ;;
     2)
          printf "\nList application version within the image.\n"
          choice=2
	  MacOSxVersionTracker
          ;;
     3)
          Printf "\nPhase 3: Checking features for the NYC DOE\n"
          choice=3
          MacOsAcessApplication
          ;; 
     4)
          printf "\nPhase 4: Checking system setting across all accounts\n"
          choice=4
          osxsystemsetting
          ;;
     5)
          printf "\nPhase 5 Checking Setting in System Preferences\n"
          choice=5
	 	  SystemSettinOsx
          ;;

     6)   printf "\nWill Close in 3 Sec\n"
	  osascript -e 'display dialog "The Script Will Close In 3 Sec" with title "Closing"'
	  sleep 3
	  choice=6
          exit
          ;;

esac

done
