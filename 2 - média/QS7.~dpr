  program QS7;

uses
  uTroco in 'uTroco.pas',
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas',
  Dialogs,
  Classes,
  SysUtils;

{$R *.RES}

var
  Maquina: TMaquina;
  Lista: TList;
  Msg: String;
  Troco: TTroco;
  I: Integer;
begin
  Msg := '';
  Maquina := TMaquina.Create;
  try
    Lista := Maquina.MontarTroco(125.15);
    try
      for I := 0 to Lista.Count-1 do
      begin
        Troco := TTroco(Lista[I]);
        Msg := Msg + Format('Cédula: %m - Quantidade: %d '+#13, [CValorCedula[Troco.Tipo], Troco.Quantidade]);
      end;
    finally
      FreeAndNil(Lista);
    end;
    ShowMessage(Msg);
  finally
    FreeAndNil(Maquina);
  end;
end.

