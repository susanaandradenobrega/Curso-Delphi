object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lbBienvenidos: TLabel
    Left = 280
    Top = 152
    Width = 67
    Height = 15
    Caption = 'Bienvenidos!'
  end
  object bSaludar: TButton
    Left = 272
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Saludar'
    TabOrder = 0
    OnClick = bSaludarClick
  end
end
