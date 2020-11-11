#bin/bash

# NOTE.To add a comment within the bash script, use the "#" follow up with words you want to write, Comments would not interfere with the script.
# NOTE. BEST TO DUPLICATE THE FILE FOR TESTING. VIDEOS AND LINKS ON HOW TO USE BASH ARE SHOWN BELLOW
#
#------------------------------------------------------------------------------------------------------------------------------------------------------


# 1. Open the terminal 
# 2. type "ls" in the terminal to look at the content within your current directory
# 3. MacOsxVersionTracker.sh will probably not show up within the terminal because its not within the current directory.
# 4. To navigate to directory, use the change directory command "cd"
# 5. To navigate  the directory of the sh file, navigate to the flash drive which would be "cd /Volume/<NAME OF THE FLASH DRIVE>" NOTE, the terminal is case sensitive
# 5a. If you want to drag the sh file from the GUI file explorer to the desktop, then do so. To access the content of the Desktop folder type "cd /Users/admin/Desktop"
# 6. remember ls command will let you see if you in the directory.
# 7. To run the script which is within the directory type "./MacOSxVersionTracker.sh" 
# 8. Confuse about navigating and running script, watch this video. https://www.youtube.com/watch?v=k1J69q8D9vM

#------------------------------------------------------------------------------------------------------------------------------------------------------------


#if there is any new apps that needs to be identified, append the current script with content down the bellow. 
# Voice Memos    Name the app using comments 
# VoiceMemos="defaults read /Applications/News.app/Contents/Info.plist CFBundleShortVersionString"   assign variable to use defaults read to read the property list, then follow up with the tag after typing the directory
# Voice_Memos=$(eval $VoiceMemos) the eval will ignore the white space of the input and output the contents of VoiceMemos. Assign variable, $ sign to reference the variable.
# This will be standard format to append future application in the new script  
# Video use of the Eval Command https://www.youtube.com/watch?v=AjqBRGwLmLc  


# Adobe Air
Adobe_Air="defaults read /Library/Frameworks/Adobe\ AIR.framework/Versions/1.0/Adobe\ AIR\ Application\ Installer.app/Contents/Info.plist CFBundleShortVersionString"
AdobeAir=$(eval $Adobe_Air)

# Adobe Flash Flash Player
Adobe_Flash_Player="defaults read /Applications/Utilities/Adobe\ Flash\ Player\ Install\ Manager.app/Contents/Info.plist CFBundleShortVersionString"
AdobeFlash=$(eval $Adobe_Flash_Player)

# Java SDK
#Java_SDK="defaults read /Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Info.plist CFBundleShortVersionString"
Java_SDK="ls /Library/Java/JavaVirtualMachines/ | tail -n 1"
JavaSDK=$(eval $Java_SDK)
# Note had to ls the variable because could find a proper way to get the version number without interfering the structure of the output


# Adobe Acrobat Reader DC
Adobe_Acrobat_Reader_DC="defaults read /Applications/Adobe\ Acrobat\ Reader\ DC.app/Contents/Info.plist CFBundleShortVersionString"
AdobeAcrobatReaderDC=$(eval $Adobe_Acrobat_Reader_DC)

# Google Chrome
Google_Chrome="defaults read /Applications/Google\ Chrome.app/Contents/Info.plist CFBundleShortVersionString"
GoogleChrome=$(eval $Google_Chrome)

#QuickTime Player
QuickTime_Player="defaults read /Applications/QuickTime\ Player.app/Contents/Info.plist CFBundleShortVersionString"
QuickTimePlayer=$(eval $QuickTime_Player)

# RealPlayer
Real_Player="defaults read /Applications/RealPlayer.app/Contents/Info.plist CFBundleShortVersionString"
RealPlayer=$(eval $RealPlayer)

# RealPlayer Convertor
RealPlayer_Convertor="defaults read /Applications/RealPlayer\ Converter.app/Contents/Info.plist CFBundleShortVersionString"
RealPlayerConvertor=$(eval $RealPlayer_Convertor)

# Audacity
Audac="defaults read /Applications/Audacity.app/Contents/Info.plist CFBundleShortVersionString"
Audacity=$(eval $Audac)

#Firefox
Fire_Fox="defaults read /Applications/Firefox.app/Contents/Info.plist CFBundleShortVersionString"
Firefox=$(eval $Fire_Fox)

#KeyNote
Key_Note="defaults read /Applications/Keynote.app/Contents/Info.plist CFBundleShortVersionString"
KeyNote=$(eval $Key_Note)

#Pages
Page="defaults read /Applications/Pages.app/Contents/Info.plist CFBundleShortVersionString"
Pages=$(eval $Page)

#Numbers
Number="defaults read /Applications/Pages.app/Contents/Info.plist CFBundleShortVersionString"
Numbers=$(eval $Number)

#iMovie
iMovi="defaults read /Applications/iMovie.app/Contents/Info.plist CFBundleShortVersionString"
iMovie=$(eval $iMovi)

# Photos
Photo="defaults read /Applications/Photos.app/Contents/Info.plist CFBundleShortVersionString"
Photos=$(eval $Photo)

#GarageBand
Garage_Band="defaults read /Applications/GarageBand.app/Contents/Info.plist CFBundleShortVersionString"
GarageBand=$(eval $Garage_Band)

#Microsoft Word 
Microsoft_Word="defaults read /Applications/Microsoft\ Word.app/Contents/Info.plist CFBundleShortVersionString"
MicrosoftWord=$(eval $Microsoft_Word)

#Microsoft Excel
Microsoft_Excel="defaults read /Applications/Microsoft\ Excel.app/Contents/Info.plist CFBundleShortVersionString"
MicrosoftExcel=$(eval $Microsoft_Excel)

#Microsoft PowerPoint
Microsoft_PowerPoint="defaults read /Applications/Microsoft\ PowerPoint.app/Contents/Info.plist CFBundleShortVersionString"
MicrosoftPowerPoint=$(eval $Microsoft_PowerPoint)

# Microsoft Outlook
Microsoft_Outlook="defaults read /Applications/Microsoft\ Outlook.app/Contents/Info.plist CFBundleShortVersionString"
MicrosoftOutlook=$(eval $Microsoft_Outlook)

# Microsoft OneNote
Microsoft_OneNote="defaults read /Applications/Microsoft\ OneNote.app/Contents/Info.plist CFBundleShortVersionString"
MicrosoftOneNote=$(eval $Microsoft_OneNote)

#Microsoft Skype For Business
Skype_For_Business="defaults read /Applications/Skype\ for\ Business.app/Contents/Info.plist CFBundleShortVersionString"
SkypeForBusiness=$(eval $Skype_For_Business)

#NBC Learn Offline Player
NBC_Learn_Offline_Player="defaults read /Applications/NBC\ Learn\ Offline.app/Contents/Info.plist CFBundleShortVersionString"
NBCLearnOfflinePlayer=$(eval $NBC_Learn_Offline_Player)

# Shockwave Player
Shockwave_Player="defaults read /Library/Application\ Support/Adobe/Shockwave\ 12/DirectorShockwave.bundle/Contents/Info.plist CFBundleShortVersionString"
Shockwave_Players=$(eval $Shockwave_Player)


#iTunes
iTune="defaults read /Applications/iTunes.app/Contents/Info.plist CFBundleShortVersionString"
iTunes=$(eval $iTune)

#CrowdStrike Falcon
CrowdStrike_Falcon="sysctl cs | tail -n 1 | cut -b -9"
CrowdStrikeFalcon=$(eval $CrowdStrike_Falcon)


#Symantec Endpoint Protection
Symantec_Endpoint_Protection="defaults read /Applications/Symantec\ Solutions/Symantec\ Endpoint\ Protection.app/Contents//Info.plist CFBundleShortVersionString"
SymantecEndpointProtection=$(eval $Symantec_Endpoint_Protection)


#iBooks or Books
Ibook1="defaults read /Applications/iBooks.app/Contents/Info.plist CFBundleShortVersionString"
Ibook2="defaults read /Applications/Books.app/Contents/Info.plist CFBundleShortVersionString"
Iboo1=$(eval $Ibook1)
Iboo2=$(eval $Ibook2)


#Maps
Map="defaults read /Applications/Maps.app/Contents/Info.plist CFBundleShortVersionString"
Maps=$(eval $Map)

#Calendar
Calenda="defaults read /Applications/Calendar.app/Contents/Info.plist CFBundleShortVersionString"
Calander=$(eval $Calenda)


#Safari
Safar="defaults read /Applications/Safari.app/Contents/Info.plist CFBundleShortVersionString"
Safari=$(eval $Safar)

#Siri
Sir="defaults read /Applications/Siri.app/Contents/Info.plist CFBundleShortVersionString"
Siri=$(eval $Sir)


#Home
Hom="defaults read /Applications/Home.app/Contents/Info.plist CFBundleShortVersionString"
Home=$(eval $Hom)

#Voice Memoms	
Voice_Memos="defaults read /Applications/VoiceMemos.app/Contents/Info.plist CFBundleShortVersionString"
VoiceMemos=$(eval $Voice_Memos)

#News 
New="defaults read /Applications/News.app/Contents/Info.plist CFBundleShortVersionString"
News=$(eval $New)

#Stocks
Stock="defaults read /Applications/Stocks.app/Contents/Info.plist CFBundleShortVersionString"
Stocks=$(eval $Stock)

#testing javac
Javac="/usr/bin/javac -version"
Javat=$(eval $Javac)


#-----------------------------------------------------------------------------------------------------------------------------------------------------

# This is where you append the variable which will output the variable of the version number, ANY NEW APPLICATION ADD IT AT THE END OF THE VARIABLE CLASSIFICATION
# VIDEO ADDING CONTENT TO A TXT FILE. https://www.youtube.com/watch?v=jtVgV8gCwu4

format="%-40s","%s\n". 
# This formats the structure of the content https://linuxconfig.org/bash-printf-syntax-basics-with-examples


printf "$format" \ "Adobe Air" $AdobeAir \ "Adobe Flash Player" $AdobeFlash \ "Java SDK" $JavaSDK \ "Adobe Acrobat Reader DC" $AdobeAcrobatReaderDC \ "Google Chrome" $GoogleChrome \ "Quick Time Player" $QuickTimePlayer \ "Audacity" $Audacity \ "Firefox" $Firefox \ "iWork Suite" " " \ "KeyNote" $KeyNote \ "Pages" $Pages \ "Numbers" $Numbers \ "iLife Suite" " " \ "iMovie" $iMovie \ "Pages" $Pages \ "GarageBand" $GarageBand \ "Microsoft Office Suite"  " " \ "Word" $MicrosoftWord \ "Excel" $MicrosoftExcel \ "PowerPoint" $MicrosoftPowerPoint \ "Outlook" $MicrosoftOutlook \ "Microsoft OneNote" $MicrosoftOneNote \ "Microsoft Skype For Business" $SkypeForBusiness \ "NBC Learn Offline Players" $NBCLearnOfflinePlayer \ "Shockwave Player" $Shockwave_Players \ "iTunes" $iTunes \ "Symantec Endpoint Protection" $SymantecEndpointProtection \ "Books" $Iboo2 \ "Maps" $Maps \ "Calender" $Calander \ "Safari" $Safari \ "Siri" $Siri \ "Home" $Home \ "VoiceMemos" $VoiceMemos  \ "News" $News \ "Stocks" $Stocks \ "CrowdStrike" $CrowdStrikeFalcon 
printf "$format" \ "Adobe Air" $AdobeAir \ "Adobe Flash Player" $AdobeFlash \ "Java SDK" $JavaSDK \ "Adobe Acrobat Reader DC" $AdobeAcrobatReaderDC \ "Google Chrome" $GoogleChrome \ "Quick Time Player" $QuickTimePlayer \ "Audacity" $Audacity \ "Firefox" $Firefox \ "iWork Suite" " " \ "KeyNote" $KeyNote \ "Pages" $Pages \ "Numbers" $Numbers \ "iLife Suite" " " \ "iMovie" $iMovie \ "Pages" $Pages \ "GarageBand" $GarageBand \ "Microsoft Office Suite"  " " \ "Word" $MicrosoftWord \ "Excel" $MicrosoftExcel \ "PowerPoint" $MicrosoftPowerPoint \ "Outlook" $MicrosoftOutlook \ "Microsoft OneNote" $MicrosoftOneNote \ "Microsoft Skype For Business" $SkypeForBusiness \ "NBC Learn Offline Players" $NBCLearnOfflinePlayer \ "Shockwave Player" $Shockwave_Players \ "iTunes" $iTunes \ "Symantec Endpoint Protection" $SymantecEndpointProtection \ "Books" $Iboo2 \ "Maps" $Maps \ "Calender" $Calander \ "Safari" $Safari \ "Siri" $Siri \ "Home" $Home \ "VoiceMemos" $VoiceMemos  \ "News" $News \ "Stocks" $Stocks \ "CrowdStrike" $CrowdStrikeFalcon > OSxAppVersionsTracker.txt








