library MyLibrary;
uses
  System.SysUtils,
  System.Classes,
  UMyForm in 'UMyForm.pas' {fMyForm};

{$R *.res}


procedure ShowMyForm; stdcall;
begin
  With TfMyForm.Create(nil)do
  try
     showmodal
  finally
     free;
  end;
end;
//����� ��������� �������  ������� ��������� �� ��� ����� ����
exports
 ShowMyForm;

begin
end.
