unit uMemo;

interface

uses
  uComponente;

type

  TMemo = class(TComponente)  
  protected
    procedure RedimensionarAltura(aProporcao: Double); override;
    procedure RedimensionarLargura(aProporcao: Double); override;
  end;

implementation      

procedure TMemo.RedimensionarAltura(aProporcao: Double);
begin
  inherited;
  FAltura := Round(FAltura * aProporcao);
end;

procedure TMemo.RedimensionarLargura(aProporcao: Double);
begin
  inherited;
  FLargura := Round(FLargura * aProporcao);
end;

end.

