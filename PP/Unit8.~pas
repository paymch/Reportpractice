unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw, jpeg, ExtCtrls, Buttons;

type
  Ttema2 = class(TForm)
    Image1: TImage;
    wb1: TWebBrowser;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tema2: Ttema2;

implementation

{$R *.dfm}

procedure Ttema2.Button1Click(Sender: TObject);
begin
  tema2.Close;
end;

procedure Ttema2.FormCreate(Sender: TObject);

var
path:string;
begin
path:=extractfilepath(application.ExeName);
wb1.Navigate(path+'Theoriya/tema2.htm');
end;

procedure Ttema2.BitBtn1Click(Sender: TObject);
begin
Tema2.Close;
end;

end.
