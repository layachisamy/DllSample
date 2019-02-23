unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;
type
  TShowMyForm = procedure; stdcall;
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
dllHandle : cardinal;
ShowMyForm : TShowMyForm;

begin
dllHandle := LoadLibrary('E:\Lab\Sm Toturiels\Source Code\Dll\MyLibrary\Win32\Debug\MyLibrary.dll') ;
if dllHandle <> 0 then
begin
  @ShowMyForm := GetProcAddress(dllHandle, 'ShowMyForm') ;
  if Assigned (ShowMyForm) then
     ShowMyForm;
  FreeLibrary(dllHandle) ;
end else
begin
ShowMessage('MyLibrary.dll not found / not loaded') ;
end;

end;

end.
