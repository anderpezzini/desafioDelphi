unit uBotao;

interface

uses
  uComponente;

type

  TBotao = class(TComponente)
  protected
    procedure RedimensionarLargura(aProporcao: Double); override;
  end;

implementation

procedure TBotao.RedimensionarLargura(aProporcao: Double);
begin
  inherited;
  FLargura := Round(FLargura * aProporcao);
end;

end.

