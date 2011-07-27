; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{E63D17F8-D9DA-479D-B9B5-0D101A03703B}
AppName=Sankore 3.1
AppVerName=Sankore 3.1
AppPublisher=Sankore

AppPublisherURL=http://www.getuniboard.com
AppSupportURL=http://support.getuniboard.com
AppUpdatesURL=http://www.getuniboard.com

DefaultDirName={pf}\Sankore 3.1
DefaultGroupName=Sankore 3.1

OutputDir=.\install\win32\
OutputBaseFilename=Sankore 3.1 setup
SetupIconFile=.\resources\win\uniboard.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"
Name: "gr"; MessagesFile: "compiler:Languages\German.isl"
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "sp"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[InstallDelete]

Type: files ; Name: "{app}\Sankore 3.1.pdb"
Type: filesandordirs ; Name: "{app}\library"
Type: filesandordirs ; Name: "{app}\Microsoft.VC90.CRT"
Type: filesandordirs ; Name: "{app}\plugins"
Type: filesandordirs ; Name: "{app}\i18n"
Type: files ; Name: "{app}\*.dll"

[Files]
Source: "..\Sankore-ThirdParty\microsoft\vcredist_x86.exe"; DestDir:"{tmp}"
Source: ".\build\win32\release\product\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\runtime\windows\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;

;Source: ".\resources\win\plugins\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs
;Qt base dll
Source: "..Qt-sankore3.1\lib\QtScript4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..Qt-sankore3.1\lib\QtGui4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..Qt-sankore3.1\lib\QtXml4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..Qt-sankore3.1\lib\QtCore4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..Qt-sankore3.1\lib\QtWebKit4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..Qt-sankore3.1\lib\phonon.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..Qt-sankore3.1\lib\QtNetwork4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..Qt-sankore3.1\lib\QtSvg4.dll"; DestDir: "{app}"; Flags: ignoreversion

;Qt plugins
Source: "..\Qt-sankore3.1\plugins\imageformats\qjpeg4.dll"; DestDir: "{app}\plugins\imageformats"; Flags: ignoreversion
Source: "..\Qt-sankore3.1\plugins\imageformats\qsvg4.dll"; DestDir: "{app}\plugins\imageformats"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Sankore 3.1"; Filename: "{app}\Sankore 3.1.exe"
Name: "{group}\{cm:UninstallProgram,Sankore 3.1}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Sankore 3.1"; Filename: "{app}\Sankore 3.1.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Sankore 3.1"; Filename: "{app}\Sankore 3.1.exe"; Tasks: quicklaunchicon
Name: "{group}\Printing Preferences"; Filename: "{app}\properties.exe"; WorkingDir: {app}

[Registry]
Root: HKCR; Subkey: ".ubz"; ValueType: string; ValueName: ""; ValueData: "SankoreFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "SankoreFile"; ValueType: string; ValueName: ""; ValueData: "Sankore 3.1 document"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SankoreFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Sankore 3.1.exe,1"
Root: HKCR; Subkey: "SankoreFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Sankore 3.1.exe"" ""%1"""

Root: HKLM; Subkey: "SOFTWARE\Sankore 3.1"; ValueType: string; ValueName: "Client application"; ValueData: "{app}\Sankore 3.1.exe"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\Sankore 3.1"; ValueType: dword; ValueName: "Transfer mode"; ValueData: "0"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\Sankore 3.1"; ValueType: dword; ValueName: "EMF: Hide page"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\Sankore 3.1\Defaults"; ValueType: dword; ValueName: "PDF: Enabled"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorNotX64

Root: HKLM64; Subkey: "SOFTWARE\Sankore 3.1"; ValueType: string; ValueName: "Client application"; ValueData: "{app}\Sankore 3.1.exe"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\Sankore 3.1"; ValueType: dword; ValueName: "Transfer mode"; ValueData: "0"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\Sankore 3.1"; ValueType: dword; ValueName: "EMF: Hide page"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\Sankore 3.1\Defaults"; ValueType: dword; ValueName: "PDF: Enabled"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorX64

[Run]
Filename: "{tmp}\vcredist_x86.exe";WorkingDir:"{tmp}"
Filename: "{app}\Sankore 3.1.exe"; Description: "{cm:LaunchProgram,Sankore 3.1}"; Flags: nowait postinstall

[UninstallDelete]
; cleanup and delete whole installation directory
Name: {app}; Type: filesandordirs

[Code]
function isProcessorX64: Boolean;
begin
  Result := (ProcessorArchitecture = paX64);
end;

function isProcessorNotX64: Boolean;
begin
	Result := not isProcessorX64;
end;