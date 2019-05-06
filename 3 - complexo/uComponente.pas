unit uComponente;

interface

type

  TComponente = class;

  TComponenteArray = array of TComponente;

  TComponente = class
  private
    FX: Integer;
    FY: Integer;
    FComponentes: TComponenteArray;

    procedure SetAltura(const Value: Integer);
    procedure SetLargura(const Value: Integer);
  protected                                           
    FAltura: Integer;
    FLargura: Integer;
    
    procedure RedimensionarAltura(aProporcao: Double); virtual;   
    procedure RedimensionarLargura(aProporcao: Double); virtual;  
  public
    constructor Create(aX: Integer; aY: Integer; aAltura: Integer; aLargura: Integer);

    procedure AdicionaComponente(aComponente: TComponente); virtual;
    procedure RemoveComponente(aComponente: TComponente); virtual;

    property X: Integer read FX write FX;
    property Y: Integer read FY write FY;
    property Altura: Integer read FAltura write SetAltura;   
    property Largura: Integer read FLargura write SetLargura;
  end;

implementation

uses
  uFrame;     

constructor TComponente.Create(aX, aY, aAltura, aLargura: Integer);
begin
  FX := aX;
  FY := aY;
  FAltura := aAltura;
  FLargura := aLargura;
  SetLength(FComponentes, 0);
end;

procedure TComponente.RedimensionarAltura(aProporcao: Double);
var I: Integer;
begin
  for I := 0 to Length(FComponentes)-1 do
  begin
    FComponentes[i].FY := Round(FComponentes[i].FY * aProporcao); //O Y é reposicionado em todos os tipos de componentes
    FComponentes[i].RedimensionarAltura(aProporcao);
  end;
end;

procedure TComponente.RedimensionarLargura(aProporcao: Double);
var I: Integer;
begin
  for I := 0 to Length(FComponentes)-1 do            
  begin
    FComponentes[i].FX := Round(FComponentes[i].FX * aProporcao); //O X é reposicionado em todos os tipos de componentes
    FComponentes[i].RedimensionarLargura(aProporcao);
  end;
end;

procedure TComponente.SetAltura(const Value: Integer);
begin
  if Value <> FAltura then
  begin
    RedimensionarAltura(Value/FAltura);
    FAltura := Value;
  end;
end;

procedure TComponente.SetLargura(const Value: Integer);
begin
  if Value <> FLargura then
  begin
    RedimensionarLargura(Value/FLargura);
    FLargura := Value;
  end;
end;

procedure TComponente.AdicionaComponente(aComponente: TComponente);
begin
  if Self is TFrame then
  begin
    SetLength(FComponentes, Length(FComponentes)+1);
    FComponentes[Length(FComponentes)-1] := aComponente;
  end;
end;

procedure TComponente.RemoveComponente(aComponente: TComponente);
var
  I,
  IAntigo,
  LengthAntigo: Integer;
begin           
  if Self is TFrame then
  begin
    IAntigo := MaxInt;
    for I := 0 to Length(FComponentes)-1 do
      if FComponentes[I] = aComponente then
      begin
        IAntigo := I;
        Break;
      end;

    LengthAntigo := Length(FComponentes);
    if (LengthAntigo > 0) and (IAntigo < LengthAntigo) then
      for I := IAntigo+1 to LengthAntigo-1 do
        FComponentes[I-1] := FComponentes[I];
    SetLength(FComponentes, LengthAntigo-1);
  end;
end;

end.

