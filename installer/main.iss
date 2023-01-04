;  Nova, a program to control Govee light strips from the command line
;  Copyright (C) 2023 Jasmine
;
;  This program is free software: you can redistribute it and/or modify
;  it under the terms of the GNU General Public License as published by
;  the Free Software Foundation, either version 3 of the License, or
;  (at your option) any later version.
;
;  This program is distributed in the hope that it will be useful,
;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;  GNU General Public License for more details.
;
;  You should have received a copy of the GNU General Public License
;  along with this program.  If not, see <https://www.gnu.org/licenses/>.

; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Nova"
#define MyAppVersion "1.6.0"
#define MyAppPublisher "Jasmine"
#define MyAppExeName "Nova.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2001A884-F41B-4957-9BE6-68DF0BB45D37}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=LICENSE.txt
InfoAfterFile=readme.txt
PrivilegesRequired=lowest
OutputDir=../bin
OutputBaseFilename=Nova-Installer
UsePreviousAppDir=no
Compression=lzma
SolidCompression=yes
WizardStyle=modern
ChangesEnvironment=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "/../bin/nova.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\msys64\mingw64\bin\libwinpthread-1.dll"; DestDir: "{app}"
Source: "C:\msys64\mingw64\bin\libssl-1_1-x64.dll"; DestDir: "{app}"
Source: "C:\msys64\mingw64\bin\libcrypto-1_1-x64.dll"; DestDir: "{app}"
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Registry]
Root: HKCU; Subkey: "Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{app}"

;[Code]
;function notInPath(Param: String): Boolean;
;begin
;  if RegValueExists(HKEY_CURRENT_USER, 'Path', '{app}') then
;    result := false
;  else
;    result := true
;end;
