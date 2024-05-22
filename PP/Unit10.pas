unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, jpeg, ExtCtrls, StdCtrls, Buttons, ComCtrls,
  DBCtrls;

type
  TCalendar = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    MonthCalendar1: TMonthCalendar;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn10: TBitBtn;
    procedure MonthCalendar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Calendar: TCalendar;

implementation

uses Unit3, Unit16, Unit11;



{$R *.dfm}

procedure TCalendar.MonthCalendar1Click(Sender: TObject);
begin
DM.tblKontrol.Filtered:=False;
DM.tblKontrol.Filter:='Дата ='''+ DateToStr(MonthCalendar1.Date) + '''';
DM.tblKontrol.Filtered:=True;
end;

procedure TCalendar.BitBtn1Click(Sender: TObject);
begin
DM.tblKontrol.Filtered:=False;
end;

procedure TCalendar.BitBtn2Click(Sender: TObject);
begin
  DM.tblKontrol.Insert;
  DM.tblKontrol.Fields.Fields[5].AsDateTime:=MonthCalendar1.Date;
end;

procedure TCalendar.BitBtn3Click(Sender: TObject);
begin
Calendar.Close;
end;

procedure TCalendar.DBLookupComboBox1Click(Sender: TObject);
begin
  DM.tblKontrol.Filtered:=False;
  DM.tblKontrol.Filter:='id_вид_контроля ='''+IntToStr(DBLookupComboBox1.KeyValue)+'''';
  DM.tblKontrol.Filtered:=True;
end;

procedure TCalendar.BitBtn4Click(Sender: TObject);
begin
  DM.tblKontrol.Prior;
end;

procedure TCalendar.BitBtn5Click(Sender: TObject);
begin
  DM.tblKontrol.Next;
end;

procedure TCalendar.BitBtn8Click(Sender: TObject);
begin
  DM.tblKontrol.Post;
end;

procedure TCalendar.BitBtn9Click(Sender: TObject);
begin
  DM.tblKontrol.Edit;
end;

procedure TCalendar.BitBtn7Click(Sender: TObject);
begin
  DM.tblKontrol.Delete;
end;

procedure TCalendar.BitBtn6Click(Sender: TObject);
begin
 vid_kontrol.Showmodal;
end;

procedure TCalendar.BitBtn10Click(Sender: TObject);
begin
  TestTopic.Showmodal;
end;

end.
