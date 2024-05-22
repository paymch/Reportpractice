unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, jpeg, ExtCtrls;

type
  TRezult = class(TForm)
    Image1: TImage;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    DBText5: TDBText;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rezult: TRezult;

implementation

uses
  Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit12;

{$R *.dfm}

procedure TRezult.Button1Click(Sender: TObject);
begin
Rezult.Close;

end;

procedure TRezult.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Test.Button3.Enabled:=True;
Test.Caption:='Тестирование';
Test.button4.Enabled:=False;
Test.Rb1.Visible:=False;
Test.Rb2.Visible:=False;
Test.Rb3.Visible:=False;
Test.Rb4.Visible:=False;
end;

end.
