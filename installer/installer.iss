[Setup]
AppId={{COM.COMMITAI.APP}}
AppName=Commit AI
AppVersion=1.0
AppPublisher=Commit AI
AppPublisherURL=https://gitcommit.online
WizardStyle=modern
DefaultDirName={autopf}\Commit AI
DefaultGroupName=Commit AI
OutputDir=Output
OutputBaseFilename=commit_ai_setup
SetupIconFile=icon.ico
UninstallDisplayIcon={app}\commit_ai.exe
Compression=lzma2
SolidCompression=yes
MinVersion=10.0.17763

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Files]
; Ruta corregida al ejecutable
Source: "..\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
Source: "icon.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Commit AI"; Filename: "{app}\commit_ai.exe"; IconFilename: "{app}\icon.ico"
Name: "{commondesktop}\Commit AI"; Filename: "{app}\commit_ai.exe"; IconFilename: "{app}\icon.ico"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Run]
Filename: "{app}\commit_ai.exe"; Description: "Ejecutar Commit AI"; Flags: postinstall nowait

[UninstallDelete]
Type: filesandordirs; Name: "{app}"