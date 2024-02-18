{*******************************************************************************

  ABF String XORer.

  Copyright (c) 2000, 2001 ABF software, Inc.
  All Rights Reserved.

  e-mail: info@ABFsoftware.com
  web:    http://www.ABFsoftware.com

*******************************************************************************}
program abfStringXORer;

uses
  Forms,
  abfStringXORerMain in 'abfStringXORerMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ABF String XORer';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
