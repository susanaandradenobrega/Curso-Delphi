unit uFProblemas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.StdCtrls, Math,
  Vcl.WinXPanels, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFProblemas = class(TForm)
    MenuPrincipal: TMainMenu;
    Archivo1: TMenuItem;
    Archivo2: TMenuItem;
    problema1: TMenuItem;
    paginaPrincipal: TPageControl;
    TabConsola: TTabSheet;
    mConsola: TMemo;
    Contenido: TCardPanel;
    cardProblema1: TCard;
    GroupBox1: TGroupBox;
    edNumero4C: TEdit;
    sbCalcularSumaCuatroDigitosF1: TSpeedButton;
    sbCalcularSumaCuatroDigitosF2: TSpeedButton;
    cardProblema2: TCard;
    Panel1: TPanel;
    pExpProb1: TLabel;
    GroupBox2: TGroupBox;
    edValA: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edValB: TEdit;
    Label4: TLabel;
    edValC: TEdit;
    sbResolverEcuacionSegundoGrado: TSpeedButton;
    problema2: TMenuItem;
    cardMenuOpciones: TCard;
    tvMenu: TTreeView;
    problema3: TMenuItem;
    GroupBox3: TGroupBox;
    edNombre: TEdit;
    ablamultiplicarciclofor1: TMenuItem;
    cardTablaMultiplicarFOR: TCard;
    GroupBox4: TGroupBox;
    edTM: TEdit;
    sbCalcularTablaMultiplicar: TSpeedButton;
    Factorialdeunnmero1: TMenuItem;
    cardFactorialNumero: TCard;
    GroupBox5: TGroupBox;
    sbFactorialNumero: TSpeedButton;
    edNumFact: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure sbCalcularSumaCuatroDigitosF1Click(Sender: TObject);
    procedure sbCalcularSumaCuatroDigitosF2Click(Sender: TObject);
    procedure sbResolverEcuacionSegundoGradoClick(Sender: TObject);
    procedure problema1Click(Sender: TObject);
    procedure problema2Click(Sender: TObject);
    procedure problema3Click(Sender: TObject);
    procedure tvMenuClick(Sender: TObject);
    procedure ablamultiplicarciclofor1Click(Sender: TObject);
    procedure sbCalcularTablaMultiplicarClick(Sender: TObject);
    procedure edTMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Factorialdeunnmero1Click(Sender: TObject);
    procedure sbFactorialNumeroClick(Sender: TObject);
    procedure edNumFactKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProblemas: TFProblemas;

implementation

{$R *.dfm}



procedure TFProblemas.ablamultiplicarciclofor1Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardTablaMultiplicarFOR;
end;

procedure TFProblemas.edNumFactKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = $0D then
    begin    // Enviar el mismo, es decir, es como se precionara el boton
    sbFactorialNumeroClick(self);
    end;
end;

procedure TFProblemas.edTMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = $0D then
    begin
    // Enviar el mismo, es decir, es como se precionara el boton
    sbCalcularTablaMultiplicarClick(self);
    end;
end;

procedure TFProblemas.Factorialdeunnmero1Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardFactorialNumero;
end;

procedure TFProblemas.problema1Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardProblema1;
end;

procedure TFProblemas.problema2Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardProblema2;
end;

procedure TFProblemas.problema3Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardMenuOpciones;

  tvMenu.Items.Add(nil, 'Lunes');
  tvMenu.Items.Add(nil, 'Martes');
  tvMenu.Items.Add(nil, 'Mi�rcoles');
  tvMenu.Items.Add(nil, 'Jueves');
  tvMenu.Items.Add(nil, 'Viernes');
  tvMenu.Items.Add(nil, 'S�bado');
  tvMenu.Items.Add(nil, 'Domingo');
end;

procedure TFProblemas.sbCalcularSumaCuatroDigitosF1Click(Sender: TObject);
var
  num : integer;
  a, b, c, d, suma : integer;

begin
  mConsola.Lines.Clear;

  num := StrToInt(edNumero4C.Text);
  a := num div 1000;
  num := num - 1000 * a;
  b := num div 100;
  num := num - 100 * b;
  c := num div 10;
  d := num - 10 * c;

  suma := a + b + c + d;

  mConsola.Lines.Add('La suma es: ' + IntToStr(suma));
end;

procedure TFProblemas.sbCalcularSumaCuatroDigitosF2Click(Sender: TObject);
var
  suma, i : integer;
  numeroStr : string;

begin
  mConsola.Lines.Clear;

  suma := 0;
  numeroStr := edNumero4C.Text;

  for i := 1 to Length(numeroStr) do
    begin
      suma := suma + StrToInt(numeroStr[i]);
    end;

  {
  suma := StrToInt(Copy(edNumero4C.Text, 1, 1));
  suma := suma + StrToInt(Copy(edNumero4C.Text, 2, 1));
  suma := suma + StrToInt(Copy(edNumero4C.Text, 3, 1));
  suma := suma + StrToInt(Copy(edNumero4C.Text, 4, 1));
  }

  mConsola.Lines.Add('La suma es: ' + IntToStr(suma));
end;

procedure TFProblemas.sbCalcularTablaMultiplicarClick(Sender: TObject);
var
  i, t, n : integer;
begin
  mConsola.Lines.Clear;

  n := StrToInt(edTM.Text);

  for i := 1 to 10 do
    begin
      t := n * i;
      mConsola.Lines.Add(IntToStr(n) + ' x ' + IntToStr(i) + ' = ' + IntToStr(t));
    end;
end;

procedure TFProblemas.sbFactorialNumeroClick(Sender: TObject);
var
  n, i : integer;
  fact : LONG64;

begin
  fact := 1;
  n := StrToInt(edNumFact.Text);

  for i := 1 to n do
  begin
    fact := fact * i
  end;

  mConsola.Lines.Clear;
  mConsola.Lines.Add('El factorial de ' + IntToStr(n) + ' es: ' + IntToStr(fact));

end;

procedure TFProblemas.sbResolverEcuacionSegundoGradoClick(Sender: TObject);
var
  a, b, c, disc, x1, x2, w, z : real;

begin
  a := StrToFloat(edValA.Text);
  b := StrToFloat(edValB.Text);
  c := StrToFloat(edValC.Text);

  disc := Power(b, 2) - 4  * a * c;

  if disc = 0 then
    begin
      mConsola.Lines.Add('La ecuaci�n tiene una �nica soluci�n.');
      x1 := -b / (2 * a);
      mConsola.Lines.Add('x1 = ' + FloatToStr(x1));
    end;

    if disc > 0 then
    begin
      mConsola.Lines.Add('La ecuaci�n tiene dos soluciones.');
      x1 := (-b + sqrt(disc)) / (2 * a);
      x2 := (-b - sqrt(disc)) / (2 * a);
      mConsola.Lines.Add('x1 = ' + FloatToStr(x1) + '; x2 = ' + FloatToStr(x2));
    end;

    if disc < 0 then
    begin
      // a + bi
      mConsola.Lines.Add('La ecuaci�n tiene soluci�n en los complejos.');
      w := -b / (2 * a);
      z := sqrt(abs(disc)) / (2 * a);
      // w + zi
      mConsola.Lines.Add('x1 = ' + FloatToStr(w) + '+' + FloatToStr(z) +
        'i; x2 = ' + FloatToStr(w) + '-' + FloatToStr(z) + 'i');
    end;

end;

procedure TFProblemas.tvMenuClick(Sender: TObject);
var
  dia, nombre : string;

begin
  nombre := edNombre.Text;

  if tvMenu.Selected <> nil then
    begin
       dia := tvMenu.Selected.Text;
    end;

    if dia = 'Lunes' then
    begin
      mConsola.Lines.Add('Hola ' + nombre + ', hoy ' + dia +
        ' tenemos el siguiente men�:');
      mConsola.Lines.Add('1. Pasta con curry');
      mConsola.Lines.Add('2. Ensaladilla russa');
    end;

    if dia = 'Martes' then
    begin
      mConsola.Lines.Add('Hola ' + nombre + ', hoy ' + dia +
        ' tenemos el siguiente men�:');
      mConsola.Lines.Add('1. Pizza ');
      mConsola.Lines.Add('2. Arroz');
    end;

    // Falta continuar el men� para los siguientes d�as

  end;

end.
