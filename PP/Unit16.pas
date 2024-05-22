unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, jpeg;

type
  TVid_kontrol = class(TForm)
    Image1: TImage;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Vid_kontrol: TVid_kontrol;

implementation

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit2, Unit3,
  Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

end.
