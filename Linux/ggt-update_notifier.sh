RED='\033[0;31m'
NC='\033[0m'
ORANGE='\033[0;33m'
CurrentVersion="2.2"


wget -q --spider http://duckduckgo.com

if [ $? -eq 0 ]; then	

MAINPOINT(){
	echo -e "${NC} Please Select your option:"
	echo
	echo -e "##############################  MENU  ##################################"
Options="Show_Translations_Versions check_notifier_update gr-gamestranslations.eu"
select selected_option in $Options; do
echo -e "########################################################################"
echo -e "${ORANGE} You selected $selected_option"
echo
if [[ "$selected_option" = "Show_Translations_Versions" ]]; then
curl -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TranslationVersionsWin.md
	echo -e "11) BACK "
	echo -e "${NC}"
	echo -e "Do you want to download a translation? (Y/N)"
	read


##########################################################################################################---

	if [[ "$REPLY" = "Y" || "$REPLY" = "y" ]]; then
		SELECTGAME(){
		printf "Please choose what translation you want:"; read
		if [[ "$REPLY" = "1" ]]; then
			xdg-open http://www.gr-gamestranslations.eu/index.php/category/twrii/ &>/dev/null
		elif [[ "$REPLY" = "2" ]]; then
			xdg-open http://www.gr-gamestranslations.eu/index.php/category/s-i/ &>/dev/null
		elif [[ "$REPLY" = "3" ]]; then
			xdg-open http://www.gr-gamestranslations.eu/index.php/category/twa/ &>/dev/null
		elif [[ "$REPLY" = "4" ]]; then
			xdg-open http://www.gr-gamestranslations.eu/index.php/category/fdt/ &>/dev/null
		elif [[ "$REPLY" = "5" ]]; then
			xdg-open http://www.gr-gamestranslations.eu/index.php/category/cc/ &>/dev/null
		elif [[ "$REPLY" = "6" ]]; then
			xdg-open http://www.gr-gamestranslations.eu/index.php/category/fctr/ &>/dev/null
		elif [[ "$REPLY" = "7" ]]; then
			xdg-open http://www.gr-gamestranslations.eu/index.php/category/rw/ &>/dev/null
		elif [[ "$REPLY" = "8" ]]; then
			xdg-open http://www.gr-gamestranslations.eu/index.php/category/wtl/ &>/dev/null
		elif [[ "$REPLY" = "9" ]]; then
			xdg-open http://www.gr-gamestranslations.eu/index.php/category/yorg/ &>/dev/null
		elif [[ "$REPLY" = "10" ]]; then
			xdg-open http://www.gr-gamestranslations.eu/index.php/category/0ad/ &>/dev/null
		elif [[ "$REPLY" = "11" ]]; then
			clear
			MAINPOINT
		else
			echo -e "${RED}Invalid option! Please try again.${NC}"
			SELECTGAME
		fi
	}
	SELECTGAME
	fi

##########################################################################################################___









##########################################################################################################---

elif [[ "$selected_option" = "check_notifier_update" ]]; then
echo -e "Current Version: $CurrentVersion"
echo -e "${RED}"
curl -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/ggt_online_version.md
echo -e "${NC}"
MAINPOINT
##########################################################################################################___


##########################################################################################################---

elif [[ "$selected_option" = "gr-gamestranslations.eu" ]]; then
xdg-open http://www.gr-gamestranslations.eu/ &>/dev/null
MAINPOINT
##########################################################################################################___

##########################################################################################################---
else
echo -e "${ORANGE} This option is invalid. Please try again. ${NC}"
MAINPOINT
fi
##########################################################################################################___

done
}
MAINPOINT	


else	

echo -e "${ORANGE}There is no internet connection. Please check your internet settings"
echo -e	"${NC}"								

fi 
