unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, jpeg, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask;

type
  TReg = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Timer1: TTimer;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Reg: TReg;
  EndTime:Longint;

implementation

uses Unit3, Unit2, Unit4, Unit1, Unit5, Unit14;

{$R *.dfm}

procedure TReg.Button1Click(Sender: TObject);
begin
Timer1.Enabled:=True;
if DM.tblpolzovatel.Modified = True then DM.tblpolzovatel.Post;
EndTime:=2;
label7.Visible:=true;

end;

procedure TReg.Timer1Timer(Sender: TObject);
begin
Dec(EndTime);
If EndTIme = 0 then Reg.Close;
end;

procedure TReg.BitBtn1Click(Sender: TObject);
begin
if DM.tblpolzovatel.Fields.Fields[8].AsBoolean =True then
  begin
  Reg.label4.Visible:=False;
  DBLookupComboBox1.Visible:=False;
  reg.BitBtn2.Visible:=False;
  reg.Caption:='–≈√»—“–¿÷»ﬂ ”◊»“≈Àﬂ';
  end;
if DM.tblpolzovatel.Fields.Fields[8].AsBoolean =False then
  begin
  Reg.label4.Visible:=true;
  DBLookupComboBox1.Visible:=true;
  reg.BitBtn2.Visible:=true;
  reg.Caption:='–≈√»—“–¿÷»ﬂ —“”ƒ≈Õ“¿';
  end;
panel1.Visible:=False;
end;

procedure TReg.BitBtn2Click(Sender: TObject);
begin
Group.ShowModal;

end;

procedure TReg.BitBtn3Click(Sender: TObject);
begin
DM.tblpolzovatel.Fields.Fields[5].AsString:=DBLookupComboBox1.Text;
Timer1.Enabled:=True;
if DM.tblpolzovatel.Modified = True then DM.tblpolzovatel.Post;
EndTime:=2;
Label7.Visible:=True;
end;

procedure TReg.BitBtn4Click(Sender: TObject);
begin
Reg.Close;
end;

end.
