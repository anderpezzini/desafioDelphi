unit uFrame;

interface

uses
  uComponente;

type

  TFrame = class(TComponente)
  protected
    procedure RedimensionarAltura(aProporcao: Double); override;
    procedure RedimensionarLargura(aProporcao: Double); override;
  end;

implementation

procedure TFrame.RedimensionarAltura(aProporcao: Double);
begin
  inherited;
  FAltura := Round(FAltura * aProporcao);
end;

procedure TFrame.RedimensionarLargura(aProporcao: Double);
begin
  inherited;
  FLargura := Round(FLargura * aProporcao);
end;

end.

