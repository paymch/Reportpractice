unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TAutorization = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Autorization: TAutorization;

implementation

uses Unit3, Unit4, Unit1, Unit6;

{$R *.dfm}

procedure TAutorization.Button1Click(Sender: TObject);
begin
   if DM.tblpolzovatel.Fields.Fields[6].AsString <> Edit1.Text then begin
    ShowMessage('Данной учетной записи нет!');
    Edit1.Text:='';
    Edit2.Text:='';
  end;
  if DM.tblpolzovatel.Fields.Fields[7].AsString <> Edit2.Text then begin
    ShowMessage('Неправильный пароль!');
    Edit2.Text:='';
  end;
  if (DM.tblpolzovatel.Fields.Fields[6].AsString = Edit1.Text) and (DM.tblpolzovatel.Fields.Fields[7].AsString = Edit2.Text) then begin
    if DM.tblpolzovatel.Fields.Fields[8].AsBoolean = True then admin.ShowModal;
    if DM.tblpolzovatel.Fields.Fields[8].AsBoolean = False then User.ShowModal;
    Edit1.Text:='';
    Edit2.Text:='';
  end;
end;

procedure TAutorization.Edit1Change(Sender: TObject);
begin
   if Edit1.Text <> '' then begin
    DM.tblpolzovatel.Filtered:=False;
    DM.tblpolzovatel.Filter:='login ='''+Edit1.Text+'''';
    DM.tblpolzovatel.Filtered:=True;
  end
  else
    DM.tblpolzovatel.Filtered:=False;
end;

end.
