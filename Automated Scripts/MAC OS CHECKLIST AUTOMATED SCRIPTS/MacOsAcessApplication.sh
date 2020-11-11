#bin/bash
osascript -e 'display dialog "As you see the application, complete the checklist and close the application for the next application of the checklist to appear" with title "OSx Application"'
open -W x-apple.systempreferences:com.apple.preference
open -W /System/Library/CoreServices/Finder.app/Contents/Applications/AirDrop.app/
open -W /Applications/Facetime.app
#osascript -e 'display dialog "Look at the dock at the bottom, do you see the App Store, no? next application will appear in 5 sec" with title "OSx Application"'
Sleep 5
osascript -e 'display dialog "System Preference will open click on Modify Desktop and check" with title "OSx Application"'
open -W x-apple.systempreferences:com.apple.preference
osascript -e 'display dialog "System Preference will open click User and Groups and go to login item " with title "OSx Application"'
open -W x-apple.systempreferences:com.apple.preference
open -Wb  com.apple.systempreferences /System/Library/PreferencePanes/iCloudPref.prefPane
open -W x-apple.systempreferences:com.apple.preferences.sharing?Services_ScreenSharing
osascript -e 'display dialog "Press Not Now and Skip" with title "OSx Application"'
open -W /Applications/Messages.app
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/Accounts.prefPane/
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/PrintAndFax.prefPane
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/Security.prefPane/
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/EnergySaver.prefPane/
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/Notifications.prefPane/
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/Dock.prefPane
osascript -e 'display dialog "Press General to see the Handoff option" with title "OSx Application"'
open -W x-apple.systempreferences:com.apple.preference
open -Wb com.apple.systempreferences /System/Library/PreferencePanes/InternetAccounts.prefPane/
open -W /Applications/Contacts.app/
open -W /Applications/Reminders.app
open -W /Applications/Notes.app/
open -W /Applications/Messages.app/
open  /Applications/iBooks.app/
osascript -e 'Click Siri and Google Chrome and the Table E is completed" with title "OSx Application"'
exit

	
