program QS6;

uses
  uISubstitui in 'uISubstitui.pas',
  uSubstitui in 'uSubstitui.pas',
  Dialogs,
  SysUtils;

{$R *.RES}

var Substitui: TSubstitui;
begin
  Substitui := TSubstitui.Create;
  try
    ShowMessage(Substitui.Substituir('O rato roeu a roupa do rei de roma', 'ro', 'teste'));
  finally
    FreeAndNil(Substitui);
  end;
end.

