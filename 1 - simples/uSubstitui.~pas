unit uSubstitui;

interface

uses
  uISubstitui;

type

  TSubstitui = class(TInterfacedObject, ISubstitui)
  public
    constructor Create;
    function Substituir(aStr, aVelho, aNovo: String): String;
  end;

implementation

constructor TSubstitui.Create;
begin
  inherited;
end;

function TSubstitui.Substituir(aStr, aVelho, aNovo: String): String;
var
  I,
  J: Integer;
  Trocar: Boolean;
begin
  Result := '';
  I := 1;
  while I <= Length(aStr) do
  begin
    Trocar := True;
    for J := 1 to Length(aVelho) do
      if aStr[I+J-1] <> aVelho[J] then
      begin
        Trocar := False;
        Break;
      end;

    if Trocar then
    begin
      Result := Result + aNovo;
      Inc(I, Length(aVelho));
    end
    else
    begin
      Result := Result + aStr[I];
      Inc(I, 1);
    end;
  end;
end;
  
end.

