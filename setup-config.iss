; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Repetier-Host"
#define MyAppVersion "0.82"
#define MyAppPublisher "repetier"
#define MyAppURL "https://github.com/repetier/Repetier-Host"
#define MyAppExeName "RepetierHost.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1143F758-929B-4EEB-8784-46CCB622F037}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=Repetier-Host-licence.txt
OutputDir=.
OutputBaseFilename=setupRepetierHost_0_82
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "basque"; MessagesFile: "compiler:Languages\Basque.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Dirs]
Name: "{localappdata}\RepetierHost"

[Files]
Source: "src\RepetierHost\bin\Release\RepetierHost.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\RepetierHost\bin\Release\OpenTK.Compatibility.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\RepetierHost\bin\Release\OpenTK.Compatibility.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\RepetierHost\bin\Release\OpenTK.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\RepetierHost\bin\Release\OpenTK.GLControl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\RepetierHost\bin\Release\OpenTK.GLControl.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\RepetierHost\bin\Release\OpenTK.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\data\*"; DestDir: "{app}/data"; Flags: ignoreversion recursesubdirs
Source: "win\32bit\Slic3r\*"; DestDir: "{app}/Slic3r"; Flags: ignoreversion recursesubdirs; Check: not Is64BitInstallMode
Source: "win\64bit\Slic3r\*"; DestDir: "{app}/Slic3r"; Flags: ignoreversion recursesubdirs; Check: Is64BitInstallMode
Source: "win\pypy\*"; DestDir: "{app}/pypy"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "win\python\*"; DestDir: "{app}/python"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "win\Skeinforge\*"; DestDir: "{app}/Skeinforge"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "src\empty.txt"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKCU; Subkey:"Software\Repetier"; ValueType:string; ValueName:"installPath";ValueData: "{app}"
Root: HKCU; Subkey:"Software\repetier"; ValueType:string; ValueName:"workdir";ValueData: "{localappdata}\RepetierHost";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetier"; ValueType:string; ValueName:"SkeinforgePython";ValueData: "{app}\python\pythonw.exe"; Check:setPython
Root: HKCU; Subkey:"Software\repetier"; ValueType:string; ValueName:"SkeinforgePypy";ValueData: "{app}\pypy\pypy.exe";Flags:createvalueifdoesntexist;
Root: HKCU; Subkey:"Software\repetier"; ValueType:string; ValueName:"SkeinforgePath";ValueData: "{app}\Skeinforge\skeinforge_application\skeinforge.py";Check:setSkeinforge;
Root: HKCU; Subkey:"Software\repetier"; ValueType:string; ValueName:"SkeinforgeCraftPath";ValueData: "{app}\Skeinforge\skeinforge_application\skeinforge_utilities\skeinforge_craft.py"; Check:setSkeinforgeCraft;
Root: HKCU; Subkey:"Software\repetier\window"; ValueType:string; ValueName:"skeinforgeProfileDir";ValueData: "{%USERPROFILE}\.skeinforge\profiles";  Flags:createvalueifdoesntexist;

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; Flags: nowait postinstall skipifsilent

[CustomMessages]
dotnetmissing=Repetier-Host needs Microsoft .Net 3.5 which is not yet installed. Do you like to download it now?
 
[Code]
function InitializeSetup(): Boolean;
var
  ErrorCode: Integer;
  isInstalled: Cardinal;
  netFrameWorkInstalled : Boolean;
begin
  result := true;
  
  // Check for the .Net 3.5 framework
  isInstalled := 0;
  netFrameworkInstalled := RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5', 'Install', isInstalled);
  if ((netFrameworkInstalled)  and (isInstalled <> 1)) then 
  begin
    if (MsgBox(ExpandConstant('{cm:dotnetmissing}'), mbConfirmation, MB_YESNO) = idYes) then
    begin
      ShellExec('open',
      'http://www.microsoft.com/en-us/download/details.aspx?id=22',
      //'http://www.microsoft.com/downloads/details.aspx?FamilyID=333325fd-ae52-4e35-b531-508d977d32a6&DisplayLang=en',
      '','',SW_SHOWNORMAL,ewNoWait,ErrorCode);
    end;
    result := false;
  end;  
end;
function BoolToStr(Val : Boolean): String;
begin
if val = True then
  result := 'True'// or 'Yes' or '1'
else
  result := 'False';// or 'No' or '0'
end;
function setPython(): Boolean;
var
  V: string;
begin
  Result := TRUE;
  if RegQueryStringValue(HKCU, 'Software\repetier', 'SkeinforgePython', V) then
    if(V<>'') then
      Result := FALSE;
 // MsgBox('python = '+BoolToStr(Result),mbConfirmation,MB_YESNO);
end;
function setSkeinforge(): Boolean;
var
  V: string;
begin
  Result := TRUE;
  if RegQueryStringValue(HKCU, 'Software\repetier', 'SkeinforgePath', V) then
    Result := V='';
end;
function setSkeinforgeCraft(): Boolean;
var
  V: string;
begin
  Result := TRUE;
  if RegQueryStringValue(HKCU, 'Software\repetier', 'SkeinforgeCraftPath', V) then
    Result := V='';
end;

