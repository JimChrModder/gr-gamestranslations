RED='\033[0;31m'
NC='\033[0m'
ORANGE='\033[0;33m'
CurrentVersion="1.0"


wget -q --spider http://duckduckgo.com

if [ $? -eq 0 ]; then	

MAINPOINT(){
	echo -e "${NC} Please Select your option:"
GameList="TWRII TWA Software_Inc Foundation check_notifier_update gr-gamestranslations.eu"
echo -e "${NC}"

select selected_option in $GameList; do
echo -e "${ORANGE} You selected $selected_option"
echo

if [[ "$selected_option" = "TWRII" ]]; then
echo -e "${RED}"
curl -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TWRII_version.md
echo

echo -e "${NC}Do you want to download it?(Y/N)"
read
if [[ "$REPLY" = "Y" || "$REPLY" = "y" ]]; then
	xdg-open http://www.gr-gamestranslations.eu/index.php/category/twrii/ &>/dev/null
else
MAINPOINT
fi
echo -e "${NC}"

elif [[ "$selected_option" = "TWA" ]]; then
echo -e "${RED}"
curl -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TWA_version.md
echo -e "${NC}Do you want to download it?(Y/N)"
read
if [[ "$REPLY" = "Y" || "$REPLY" = "y" ]]; then
	xdg-open http://www.gr-gamestranslations.eu/index.php/category/twa/ &>/dev/null
else
MAINPOINT
fi
echo -e "${NC}"

elif [[ "$selected_option" = "Software_Inc" ]]; then
echo -e "${RED}"
curl -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/SoftwareInc_version.md
echo -e "${NC}Do you want to download it?(Y/N)"
read
if [[ "$REPLY" = "Y" || "$REPLY" = "y" ]]; then
	xdg-open http://www.gr-gamestranslations.eu/index.php/category/s-i/ &>/dev/null
else
MAINPOINT
fi
echo -e "${NC}"

elif [[ "$selected_option" = "Foundation" ]]; then
echo -e "${RED}"
curl -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/Foundation_version.md
echo -e "${NC}Do you want to download it?(Y/N)"
read
if [[ "$REPLY" = "Y" || "$REPLY" = "y" ]]; then
	xdg-open http://www.gr-gamestranslations.eu/index.php/category/fdt/ &>/dev/null
else
MAINPOINT
fi
echo -e "${NC}"

elif [[ "$selected_option" = "gr-gamestranslations.eu" ]]; then
xdg-open http://www.gr-gamestranslations.eu/ &>/dev/null
echo -e "${NC}"

elif [[ "$selected_option" = "check_notifier_update" ]]; then
echo -e "Current Version: $CurrentVersion"
echo -e "${RED}"
curl -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/ggt_online_version.md
echo -e "${NC}"

else
echo -e "${ORANGE} This option is invalid. Please try again. ${NC}"

fi
done
}
MAINPOINT	

else	

echo -e "${ORANGE}There is no internet connection. Please check your internet settings"
echo -e	"${NC}"								

fi