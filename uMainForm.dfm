object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Express'#245'es Regulares'
  ClientHeight = 41
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 301
    Height = 41
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    object btnValidar: TSpeedButton
      Left = 247
      Top = 9
      Width = 47
      Height = 22
      Caption = 'Validar'
      OnClick = btnValidarClick
    end
    object edtCPF: TEdit
      Left = 10
      Top = 10
      Width = 231
      Height = 21
      MaxLength = 14
      TabOrder = 0
    end
  end
end
