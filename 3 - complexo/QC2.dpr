program QC2;

uses
  uComponente in 'uComponente.pas',
  uFrame in 'uFrame.pas',
  uBotao in 'uBotao.pas',
  uMemo in 'uMemo.pas',
  uLabel in 'uLabel.pas',
  Dialogs,
  SysUtils;

{$R *.RES}

var
  Frame: TFrame;
  Botao: TBotao;
  Memo: TMemo;
  oLabel: TLabel;
  Msg: String;

  function GetMsg(aComp: TComponente): String;
  begin
    Result := Format('%s: X %d, Y %d, L %d, A %d' + #13, [aComp.ClassName, aComp.X, aComp.Y, aComp.Largura, aComp.Altura]);
  end;

begin
  Frame := TFrame.Create(0, 0, 100, 100);
  Botao := TBotao.Create(50, 50, 10, 20);
  Memo := TMemo.Create(20, 20, 20, 20);
  oLabel := TLabel.Create(10, 90, 10, 20);
  try
    Frame.AdicionaComponente(Botao);
    Frame.AdicionaComponente(Memo);
    Frame.AdicionaComponente(oLabel);
    Msg := 'Original' + #13 + GetMsg(Frame) + GetMsg(Botao) + GetMsg(Memo) + GetMsg(oLabel);
    Frame.Largura := Trunc(Frame.Largura/2);
    Msg := Msg + #13 + 'Largura pela metade' + #13 + GetMsg(Frame) + GetMsg(Botao) + GetMsg(Memo) + GetMsg(oLabel);
    Frame.Altura := Trunc(Frame.Altura*3);
    Msg := Msg + #13 + 'Altura triplicada' + #13 + GetMsg(Frame) + GetMsg(Botao) + GetMsg(Memo) + GetMsg(oLabel);
    ShowMessage(Msg);
  finally
    FreeAndNil(oLabel);
    FreeAndNil(Memo);
    FreeAndNil(Botao);
    FreeAndNil(Frame);
  end;
end.

