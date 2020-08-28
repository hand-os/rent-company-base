object Form4: TForm4
  Left = 600
  Top = 600
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1093#1086#1076
  ClientHeight = 135
  ClientWidth = 338
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 27
    Width = 30
    Height = 13
    Caption = #1051#1086#1075#1080#1085
  end
  object Label2: TLabel
    Left = 25
    Top = 54
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Button1: TButton
    Left = 25
    Top = 94
    Width = 121
    Height = 25
    Caption = #1042#1086#1081#1090#1080
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 94
    Width = 121
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 184
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 184
    Top = 51
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object FDQuery1: TFDQuery
    Connection = Form1.FDConnection1
    Left = 128
    Top = 40
  end
end
