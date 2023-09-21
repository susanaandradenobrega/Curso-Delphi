program FundamentosProgrmacionPascal;

uses
  Vcl.Forms,
  uFFundamentos in 'uFFundamentos.pas' {fFundamentos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfFundamentos, fFundamentos);
  Application.Run;
end.
