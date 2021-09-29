unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm_Main = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Memo1: TMemo;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Main: TForm_Main;

implementation

{$R *.dfm}

procedure TForm_Main.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (ActiveControl is TCustomMemo) then
  begin
    if (key = VK_RETURN) and (ssCtrl in Shift) then
    begin
      SelectNext(ActiveControl, True, True);
      Key := 0;
    end;
  end else
  if (Key = VK_RETURN) and not(ssShift in Shift) then
  begin
	  SelectNext(ActiveControl, True, True);
    Key := 0;
  end else
  if (Key = VK_RETURN) and (ssShift in Shift) then
  begin
	  SelectNext(ActiveControl, False, True);
    Key := 0;
  end;
end;

end.
