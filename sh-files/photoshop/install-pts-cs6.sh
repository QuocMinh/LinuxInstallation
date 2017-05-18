rm -rf .wine;
WINEARCH=win32 WINEPREFIX=~/.wine winecfg;
wget http://kegel.com/wine/winetricks;
cp -rv '/media/cqm/SOFTWARE/Programs_WINDOWS/Photoshop/winetricks' /home/cqm/.cache/;
sh winetricks -q atmlib gdiplus ie6 vcrun2005sp1 vcrun2008 fontsmooth-rgb corefonts msxml3 msxml6 vcrun2010;
cp -v /media/cqm/SOFTWARE/Programs_WINDOWS/Photoshop/*.dll ~/.wine/drive_c/windows/system32/;
winetricks fontsmooth-rgb;
wine '/media/cqm/SOFTWARE/Programs_WINDOWS/Photoshop/Photoshop CS6 x64 - Full crack/Set-up.exe';
