RED='\033[0;31m'
NC='\033[0m'
ORANGE='\033[0;33m'
CurrentVersion="2.2"


wget -q --spider http://duckduckgo.com

if [ $? -eq 0 ]; then	

MAINPOINT(){
	echo -e "${NC} Please Select your option:"
GameList="TWRII TWA Software_Inc Foundation CodeCombat Factorio RimWorld while_True_Learn Yorg_io 0_A_D check_notifier_update gr-gamestranslations.eu"
echo -e "${NC}"

select selected_option in $GameList; do
echo -e "${ORANGE} You selected $selected_option"
echo

if [[ "$selected_option" = "TWRII" ]]; then
echo -e "${RED}"
GameCode="TWRII"; curl -s -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TranslationVersions.md | while IFS="=" read MyVAR MyVer; do if [ $MyVAR = "$GameCode" ] ; then echo $MyVer; fi ; done
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
GameCode="TWA"
curl -s -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TranslationVersions.md | while IFS='=' read MyVAR MyVer; do if [ $MyVAR = $GameCode ] ; then echo $MyVer; fi ; done
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
GameCode="SI"; curl -s -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TranslationVersions.md | while IFS='=' read MyVAR MyVer; do if [ $MyVAR = $GameCode ] ; then echo $MyVer; fi ; done
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
GameCode="Fndt"; curl -s -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TranslationVersions.md | while IFS='=' read MyVAR MyVer; do if [ $MyVAR = $GameCode ] ; then echo $MyVer; fi ; done
echo -e "${NC}Do you want to download it?(Y/N)"
read
if [[ "$REPLY" = "Y" || "$REPLY" = "y" ]]; then
	xdg-open http://www.gr-gamestranslations.eu/index.php/category/fdt/ &>/dev/null
else
MAINPOINT
fi
echo -e "${NC}"

elif [[ "$selected_option" = "CodeCombat" ]]; then
echo -e "${RED}"
GameCode="CodeC"; curl -s -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TranslationVersions.md | while IFS='=' read MyVAR MyVer; do if [ $MyVAR = $GameCode ] ; then echo $MyVer; fi ; done
echo -e "${NC}Do you want to download it?(Y/N)"
read
if [[ "$REPLY" = "Y" || "$REPLY" = "y" ]]; then
	xdg-open http://www.gr-gamestranslations.eu/index.php/category/cc/ &>/dev/null
else
MAINPOINT
fi
echo -e "${NC}"

elif [[ "$selected_option" = "Factorio" ]]; then
echo -e "${RED}"
GameCode="Fctr"; curl -s -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TranslationVersions.md | while IFS='=' read MyVAR MyVer; do if [ $MyVAR = $GameCode ] ; then echo $MyVer; fi ; done
echo -e "${NC}Do you want to download it?(Y/N)"
read
if [[ "$REPLY" = "Y" || "$REPLY" = "y" ]]; then
	xdg-open http://www.gr-gamestranslations.eu/index.php/category/fctr/ &>/dev/null
else
MAINPOINT
fi
echo -e "${NC}"

elif [[ "$selected_option" = "RimWorld" ]]; then
echo -e "${RED}"
GameCode="RW"; curl -s -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TranslationVersions.md | while IFS='=' read MyVAR MyVer; do if [ $MyVAR = $GameCode ] ; then echo $MyVer; fi ; done
echo -e "${NC}Do you want to download it?(Y/N)"
read
if [[ "$REPLY" = "Y" || "$REPLY" = "y" ]]; then
	xdg-open http://www.gr-gamestranslations.eu/index.php/category/rw/ &>/dev/null
else
MAINPOINT
fi
echo -e "${NC}"

elif [[ "$selected_option" = "while_True_Learn" ]]; then
echo -e "${RED}"
GameCode="wTl"; curl -s -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TranslationVersions.md | while IFS='=' read MyVAR MyVer; do if [ $MyVAR = $GameCode ] ; then echo $MyVer; fi ; done
echo -e "${NC}Do you want to download it?(Y/N)"
read
if [[ "$REPLY" = "Y" || "$REPLY" = "y" ]]; then
	xdg-open http://www.gr-gamestranslations.eu/index.php/category/wtl/ &>/dev/null
else
MAINPOINT
fi
echo -e "${NC}"

elif [[ "$selected_option" = "Yorg_io" ]]; then
echo -e "${RED}"
GameCode="Yorg"; curl -s -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TranslationVersions.md | while IFS='=' read MyVAR MyVer; do if [ $MyVAR = $GameCode ] ; then echo $MyVer; fi ; done
echo -e "${NC}Do you want to download it?(Y/N)"
read
if [[ "$REPLY" = "Y" || "$REPLY" = "y" ]]; then
	xdg-open http://www.gr-gamestranslations.eu/index.php/category/yorg/ &>/dev/null
else
MAINPOINT
fi
echo -e "${NC}"

elif [[ "$selected_option" = "0_A_D" ]]; then
echo -e "${RED}"
GameCode="0AD"; curl -s -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TranslationVersions.md | while IFS='=' read MyVAR MyVer; do if [ $MyVAR = $GameCode ] ; then echo $MyVer; fi ; done
echo -e "${NC}Do you want to download it?(Y/N)"
read
if [[ "$REPLY" = "Y" || "$REPLY" = "y" ]]; then
	xdg-open http://www.gr-gamestranslations.eu/index.php/category/0ad/ &>/dev/null
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
GameCode="GGTV"; curl -s -L https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TranslationVersions.md | while IFS='=' read MyVAR MyVer; do if [ $MyVAR = $GameCode ] ; then echo $MyVer; fi ; done
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
