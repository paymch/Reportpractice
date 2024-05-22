unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw, jpeg, ExtCtrls, Buttons;

type
  Ttema1 = class(TForm)
    Image1: TImage;
    WebBrowser1: TWebBrowser;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tema1: Ttema1;

implementation

{$R *.dfm}

procedure Ttema1.FormCreate(Sender: TObject);
var
path:string;
begin
path:=extractfilepath(application.ExeName);
webbrowser1.Navigate(path+'Theoriya/tema1.htm');
end;

procedure Ttema1.Button1Click(Sender: TObject);
begin
Tema1.Close;
end;

procedure Ttema1.BitBtn1Click(Sender: TObject);
begin
Tema1.Close;
end;

end.


