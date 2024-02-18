{*******************************************************************************

  ABF String XORer. Main form unit.

  Copyright (c) 2000, 2001 ABF software, Inc.
  All Rights Reserved.

  e-mail: info@ABFsoftware.com
  web:    http://www.ABFsoftware.com

*******************************************************************************}
unit abfStringXORerMain;

{$I abf.inc}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons;

type
  TfrmMain = class(TForm)
    edSrc: TEdit;
    lbSrc: TLabel;
    lbDst: TLabel;
    edDst: TEdit;
    lbMask: TLabel;
    edMask: TEdit;
    udMask: TUpDown;
    btnDo: TBitBtn;
    btnSwap: TBitBtn;
    procedure btnDoClick(Sender: TObject);
    procedure btnSwapClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

{******************************************************************************}
implementation
{******************************************************************************}
{$R *.dfm}


//------------------------------------------------------------------------------

function _X(const S: string; B: Byte): string;
var
  i: Integer;
begin
  Result := S;
  for i := 1 to Length(Result) do
    Result[i] := Char(Byte(Result[i]) xor B);
end;

//------------------------------------------------------------------------------

procedure TfrmMain.btnDoClick(Sender: TObject);
begin
  edDst.Text := _X(edSrc.Text, udMask.Position);
end;

//------------------------------------------------------------------------------

procedure TfrmMain.btnSwapClick(Sender: TObject);
var
  S: string;
begin
  S := edDst.Text;
  edDst.Text := edSrc.Text;
  edSrc.Text := S;
end;

//------------------------------------------------------------------------------

end{unit abfStringXORerMain}.
