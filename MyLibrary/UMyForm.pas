unit UMyForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfMyForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  fMyForm: TfMyForm;

implementation

{$R *.dfm}

end.
