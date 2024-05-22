unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, jpeg, ExtCtrls, StdCtrls, DBCtrls, Buttons;

type
  TQuest = class(TForm)
    Image1: TImage;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Quest: TQuest;

implementation

uses
  Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit10, Unit11;

{$R *.dfm}

procedure TQuest.Button1Click(Sender: TObject);
begin
 GroupBox2.Visible:=True;
 Bitbtn1.Visible:=False;
 Bitbtn2.Visible:=True;
end;

procedure TQuest.Button3Click(Sender: TObject);
begin
Quest.Close;
end;

procedure TQuest.Button2Click(Sender: TObject);
begin
Quest.Close;
end;

procedure TQuest.BitBtn1Click(Sender: TObject);
begin
Quest.Close;
end;

procedure TQuest.BitBtn2Click(Sender: TObject);
begin
Quest.Close;
end;

end.
