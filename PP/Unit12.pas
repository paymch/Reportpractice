unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Mask, DBCtrls, jpeg, Buttons;

type
  TTest = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    rb4: TRadioButton;
    Button3: TButton;
    Button4: TButton;
    tmr1: TTimer;
    DBText1: TDBText;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button3Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Test: TTest;
  k,i,p1:integer;

  Endtime:LongInt;

implementation

uses
  Unit3, Unit1, Unit2, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11,
  Unit13;

{$R *.dfm}

procedure TTest.Button3Click(Sender: TObject);
var i,m:integer;
begin
rb1.Visible:=True;
rb2.Visible:=True;
rb3.Visible:=True;
rb4.Visible:=True;
label1.Visible:=False;

if k < DM.qry_tema.RecordCount then begin
    inc(k);
    DM.tblvopros.First;
    end;
    GroupBox1.Caption:='Вопрос № ' + IntToStr(k) + ' из ' + IntToStr(DM.qry_tema.RecordCount);
    Button3.Enabled:=False;
    Button4.Enabled:=True;
    Button2.Enabled:=True;

    Panel1.Visible:=False;
    Tmr1.Enabled:=True;
DM.tbloteveti.First;
rb1.Caption:=DM.tbloteveti.FieldByName('Ответ').AsString;
DM.tbloteveti.Next;
rb2.Caption:=DM.tbloteveti.FieldByName('Ответ').AsString;
DM.tbloteveti.Next;
rb3.Caption:=DM.tbloteveti.FieldByName('Ответ').AsString;
DM.tbloteveti.Next;
rb4.Caption:=DM.tbloteveti.FieldByName('Ответ').AsString;
k:=1;
end;

procedure TTest.tmr1Timer(Sender: TObject);
var
  M, S:byte;
begin
Dec(EndTime);
S:=EndTime mod 60;
M:=(EndTime div 60) mod 60;
Test.Caption:='Время до окончания тестирования: ' + IntToStr(M) + ':' + IntToStr(S);
if EndTime = 0 then
begin
Tmr1.Enabled:=False;
Button4.Click;
end;
end;

procedure TTest.Button2Click(Sender: TObject);
begin
if k < DM.qry_tema.RecordCount then begin
    inc(k);
    DM.tblvopros.Next;
    end;
    GroupBox1.Caption:='Вопрос № ' + IntToStr(k) + ' из ' + IntToStr(DM.qry_tema.RecordCount);
Button2.Enabled:=True;
Button4.Enabled:=True;
Button1.Enabled:=True;
if DM.tblvopros.RecNo <> 1 then
    Button1.Enabled:=True;
if DM.tblvopros.RecNo = DM.qry_tema.RecordCount then Button2.Enabled:=False else Button2.Enabled:=True;
Rb1.Caption:=DM.tbloteveti.FieldByName('Ответ').AsString;
DM.tbloteveti.Next;
Rb2.Caption:=DM.tbloteveti.FieldByName('Ответ').AsString;
DM.tbloteveti.Next;
Rb3.Caption:=DM.tbloteveti.FieldByName('Ответ').AsString;
DM.tbloteveti.Next;
Rb4.Caption:=DM.tbloteveti.FieldByName('Ответ').AsString;
DM.tbloteveti.Next;
DM.qry_Verno.First;
if (rb1.checked=true)and(rb1.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb2.checked=true)and(rb2.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb3.checked=true)and(rb3.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb4.checked=true)and(rb4.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
DM.qry_Verno.Next;
if (rb1.checked=true)and(rb1.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb2.checked=true)and(rb2.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb3.checked=true)and(rb3.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb4.checked=true)and(rb4.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
DM.qry_Verno.Next;
Rb1.Checked:= False;
Rb2.Checked:= False;
Rb3.Checked:= False;
Rb4.Checked:= False;




end;

procedure TTest.Button4Click(Sender: TObject);
var
o2,o3,d:integer;
o:Extended;
begin
Button3.Enabled:=False;
Button4.Enabled:=True;
Button2.Enabled:=False;
Button1.Enabled:=False;
Tmr1.Enabled:=False;
EndTime:=900;
Panel1.Visible:=True;
DM.tblvopros.First;
k:=0;
GroupBox1.Caption:='Вопрос № ' + IntToStr(k) + ' из ' + IntToStr(DM.qry_tema.RecordCount);
DM.qry_Verno.First;
if (rb1.checked=true)and(rb1.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb2.checked=true)and(rb2.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb3.checked=true)and(rb3.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb4.checked=true)and(rb4.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
DM.qry_Verno.Next;
if (rb1.checked=true)and(rb1.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb2.checked=true)and(rb2.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb3.checked=true)and(rb3.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb4.checked=true)and(rb4.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
DM.qry_Verno.Next;
//оценка
d:=DM.qry_tema.RecordCount;
o:=(p1/d)*100;
o3:=trunc(o);
if o3 < 60 then o2:=2;
if (o3 >= 60) and (o3 <= 70) then o2:=3;
if (o3 >70) and (o3 <= 80) then o2:=4;
if (o3 >= 81) and (o3 <= 100) then o2:=5;
Rezult.Label5.Caption:=IntToStr(o3);
Rezult.Label6.Caption:=IntToStr(o2);
//
DM.tblrezultat.Insert;
DM.tblrezultat.Fields.Fields[1].AsInteger:=DM.tblpolzovatel.Fields.Fields[0].AsInteger;//Студент
DM.tblrezultat.Fields.Fields[5].AsInteger:=DM.qry_tema.Fields.Fields[0].AsInteger;//Тема
DM.tblrezultat.Fields.Fields[7].AsInteger:=DM.tblgruppa.Fields.Fields[0].AsInteger;//Группа
DM.tblrezultat.Fields.Fields[9].AsDateTime:=Date;//Дата
DM.tblrezultat.Fields.Fields[8].AsInteger:=o2;//Оценка
if DM.tblrezultat.Modified then DM.tblrezultat.Post;
//
DM.tblrezultat.Filtered:=False;
DM.tblrezultat.Filter:='ID_пользователя ='''+IntToStr(DM.tblpolzovatel.Fields.Fields[0].AsInteger)+'''';
DM.tblrezultat.Filtered:=True;
Rezult.ShowModal;
end;

procedure TTest.Button5Click(Sender: TObject);
begin
DM.qry_Verno.First;
if (rb1.checked=true)and(rb1.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb2.checked=true)and(rb2.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb3.checked=true)and(rb3.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb4.checked=true)and(rb4.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
DM.qry_Verno.Next;
if (rb1.checked=true)and(rb1.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb2.checked=true)and(rb2.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb3.checked=true)and(rb3.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
if (rb4.checked=true)and(rb4.caption=DM.qry_Verno.FieldByName('Ответы.Ответ').AsString)then inc(p1);
DM.qry_Verno.Next;

end;

procedure TTest.Button1Click(Sender: TObject);
begin
rb4.Caption:=DM.tbloteveti.FieldByName('Ответ').AsString;
DM.tbloteveti.Prior;
if k <> 1 then begin
    k:=k-1;
    DM.tblvopros.Prior;
    end;
    GroupBox1.Caption:='Вопрос № ' + IntToStr(k) + ' из ' + IntToStr(DM.qry_tema.RecordCount);
    if DM.tblvopros.RecNo <> 1 then
    Button1.Enabled:=True else Button1.Enabled:=False;
    if DM.tblvopros.RecNo <> DM.qry_tema.RecordCount then Button2.Enabled:=True;
DM.tbloteveti.First;
Rb1.Caption:=DM.tbloteveti.FieldByName('Ответ').AsString;
DM.tbloteveti.Next;
Rb2.Caption:=DM.tbloteveti.FieldByName('Ответ').AsString;
DM.tbloteveti.Next;
Rb3.Caption:=DM.tbloteveti.FieldByName('Ответ').AsString;
DM.tbloteveti.Next;
Rb4.Caption:=DM.tbloteveti.FieldByName('Ответ').AsString;
Rb1.Checked:= False;
Rb2.Checked:= False;
Rb3.Checked:= False;
Rb4.Checked:= False;
if (Rb1.Checked=True)or(Rb2.Checked=True)or(Rb3.Checked=True) or(Rb4.Checked=True)then dec(p1);
end;

procedure TTest.FormCreate(Sender: TObject);
begin
EndTime:=900;
end;

procedure TTest.BitBtn1Click(Sender: TObject);
begin
Test.Close;
end;

end.
