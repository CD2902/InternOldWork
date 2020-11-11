#bin/bash




printf "Welcome to the MacOSx Test Image for the Soultion Design Engineering Team.\nThe purpose of the script is to reduce the operation time MacOsx testing \n\n\\n\n"

choice=0

while [ $choice -ne "6" ]

do

printf "Press 1, Check For Following Users Appear, Table A\n\n"
printf "Press 2, Verify application version or identical to the checklist, Table D\n\n"
printf "Press 3  Test accessibility access, Table E\n\n"
printf "Press 4 to check system setting across all accounts, Table F\n\n" 
printf "Press 5 to check specify system prefrences Table G\n\n"
printf "Press 6 to quit\n\n"


Printf "Number = "
read DISTR
case $DISTR in

     1)
          printf "List users within the Image\n"
	  choice=1
          ./MacOsUserTracker.sh
          ;;
     2)
          printf "List application version within the image.\n"
          choice=2
	  ./MacOSxVersionTracker.sh	
          ;;
     3)
          Printf "Phase 3: Checking features for the NYC DOE\n"
          choice=3
          ./MacOsAcessApplication.sh
          ;; 
     4)
          printf "Phase 4: Checking system setting across all accounts\n"
          choice=4
	  ./osxsystemsetting.sh
          ;;
     5)
          printf "Phase 5 Checking Setting in System Preferences\n"
          choice=5
	  ./SystemSettinOsx.sh
          ;;
     6)   printf "Goodbye"
	  choice=6
          exit
          ;;

esac

done
