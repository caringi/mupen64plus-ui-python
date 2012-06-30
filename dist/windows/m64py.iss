[Setup]
AppName=M64Py
AppVerName=M64Py 0.1.0
VersionInfoVersion=0.1.0
AppPublisher=
AppPublisherURL=http://m64py.sourceforge.net/
AppSupportURL=
AppUpdatesURL=
DefaultDirName={pf}\M64Py
DefaultGroupName=M64Py
AllowNoIcons=yes
OutputDir=.
Uninstallable=yes
WindowVisible=no
AppCopyright=Author: Milan Nikolic <gen2brain@gmail.com>
OutputBaseFilename=m64py-0.1.0-setup
UninstallDisplayIcon={app}\m64py.exe
LicenseFile=m64py\COPYING
DisableStartupPrompt=yes
ChangesAssociations=yes

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
Source: "m64py\*.ttf"; DestDir: "{app}";
Source: "m64py\*.ini"; DestDir: "{app}";
Source: "m64py\*.txt"; DestDir: "{app}";
Source: "m64py\*.pyd"; DestDir: "{app}";
Source: "m64py\*.exe"; DestDir: "{app}";
Source: "m64py\*.dll"; DestDir: "{app}";
Source: "m64py\AUTHORS"; DestDir: "{app}";
Source: "m64py\COPYING"; DestDir: "{app}";
Source: "m64py\README"; DestDir: "{app}";
Source: "m64py\ChangeLog"; DestDir: "{app}";
Source: "m64py\*.v64"; DestDir: "{app}\test";
Source: "m64py\qt4_plugins\codecs\*.dll"; DestDir: "{app}\qt4_plugins\codecs";
Source: "m64py\qt4_plugins\iconengines\*.dll"; DestDir: "{app}\qt4_plugins\iconengines";
Source: "m64py\qt4_plugins\imageformats\*.dll"; DestDir: "{app}\qt4_plugins\imageformats";
Source: "m64py\doc\*"; DestDir: "{app}\doc";

[Icons]
Name: {group}\M64Py; Filename: {app}\m64py.exe; Tasks: desktopicon;
Name: {group}\{cm:ProgramOnTheWeb,m64py}; Filename: http://m64py.sourceforge.net/;
Name: {group}\{cm:UninstallProgram,m64py}; Filename: {app}\unins000.exe;
Name: {userdesktop}\M64Py; Filename: {app}\m64py.exe; Tasks: desktopicon;

[Registry]
Root: HKCR; Subkey: ".v64"; ValueType: string; ValueData: "Mupen64Plus.Document"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "Mupen64Plus.Document"; ValueType: string; ValueData: "Nintendo64 ROM"; Flags: uninsdeletekey
Root: HKCR; SubKey: Mupen64Plus.Document\DefaultIcon; ValueType: string; ValueData: {app}\m64py.ico;
Root: HKCR; SubKey: Mupen64Plus.Document\shell\open\command; ValueType: string; ValueData: """{app}\m64py.exe"" ""%1""";
Root: HKCR; SubKey: ".z64"; ValueType: string; ValueData: "Mupen64Plus.Document"; Flags: uninsdeletevalue;
Root: HKCR; SubKey: Mupen64Plus.Document; ValueType: string; ValueData: "Nintendo64 ROM"; Flags: uninsdeletekey;
Root: HKCR; SubKey: Mupen64Plus.Document\DefaultIcon; ValueType: string; ValueData: {app}\m64py.ico;
Root: HKCR; SubKey: Mupen64Plus.Document\shell\open\command; ValueType: string; ValueData: """{app}\m64py.exe"" ""%1""";

[Run]
Filename: {app}\m64py.exe; Description: {cm:LaunchProgram,m64py}; Flags: nowait postinstall skipifsilent;

[Dirs]
Tasks: desktopicon; Name: C:\m64py\dist\windows\m64py;