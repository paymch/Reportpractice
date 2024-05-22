unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, jpeg, ExtCtrls;

type
  Tzadachi = class(TForm)
    Image1: TImage;
    wb1: TWebBrowser;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  zadachi: Tzadachi;

implementation

{$R *.dfm}

procedure Tzadachi.Button1Click(Sender: TObject);
begin
Zadachi.Close;
end;

procedure Tzadachi.FormCreate(Sender: TObject);
var
path:string;
begin
path:=extractfilepath(application.ExeName);
wb1.Navigate(path+'Zadaniya/1.1.htm');
end;

end.
