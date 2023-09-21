program Resolucion_de_Problemas;

uses
  Vcl.Forms,
  uFProblemas in 'uFProblemas.pas' {FProblemas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFProblemas, FProblemas);
  Application.Run;
end.
