object Form5: TForm5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form5'
  ClientHeight = 467
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 8
    Top = 317
    Width = 42
    Height = 13
    Caption = #1055#1088#1086#1079#1074#1086#1085
  end
  object Label9: TLabel
    Left = 8
    Top = 293
    Width = 36
    Height = 13
    Caption = #1056#1077#1084#1086#1085#1090
  end
  object Label8: TLabel
    Left = 8
    Top = 216
    Width = 31
    Height = 13
    Caption = #1059#1083#1080#1094#1072
  end
  object Label7: TLabel
    Left = 8
    Top = 189
    Width = 44
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Label6: TLabel
    Left = 8
    Top = 162
    Width = 26
    Height = 13
    Caption = #1062#1077#1085#1072
  end
  object Label5: TLabel
    Left = 8
    Top = 135
    Width = 31
    Height = 13
    Caption = #1057#1086#1090#1082#1080
  end
  object Label4: TLabel
    Left = 8
    Top = 108
    Width = 27
    Height = 13
    Caption = #1069#1090#1072#1078
  end
  object Label3: TLabel
    Left = 8
    Top = 81
    Width = 45
    Height = 13
    Caption = #1050#1086#1084#1085#1072#1090#1099
  end
  object Label2: TLabel
    Left = 8
    Top = 54
    Width = 37
    Height = 13
    Caption = #1057#1077#1082#1090#1086#1088
  end
  object Label1: TLabel
    Left = 8
    Top = 27
    Width = 30
    Height = 13
    Caption = #1056#1072#1081#1086#1085
  end
  object Label11: TLabel
    Left = 8
    Top = 243
    Width = 45
    Height = 13
    Caption = #1057#1072#1085#1059#1079#1083#1099
  end
  object Label12: TLabel
    Left = 8
    Top = 266
    Width = 66
    Height = 13
    Caption = #1050#1072#1085#1072#1083#1080#1079#1072#1094#1080#1103
  end
  object Button2: TButton
    Left = 160
    Top = 424
    Width = 131
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 8
    Top = 424
    Width = 121
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 351
    Width = 283
    Height = 67
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object ComboBox2: TComboBox
    Left = 146
    Top = 290
    Width = 145
    Height = 21
    TabOrder = 3
    Items.Strings = (
      #1041#1077#1079' '#1088#1077#1084#1086#1085#1090#1072
      #1063#1080#1089#1090#1099#1081
      #1050#1086#1089#1084#1077#1090#1080#1095#1077#1089#1082#1080#1081
      #1045#1074#1088#1086' '#1056#1077#1084#1086#1085#1090
      #1050#1072#1087#1080#1090#1072#1083#1100#1085#1099#1081)
  end
  object Edit6: TEdit
    Left = 146
    Top = 213
    Width = 145
    Height = 21
    TabOrder = 4
    Text = 'Edit6'
  end
  object Edit4: TEdit
    Left = 146
    Top = 186
    Width = 145
    Height = 21
    NumbersOnly = True
    TabOrder = 5
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 146
    Top = 159
    Width = 145
    Height = 21
    NumbersOnly = True
    TabOrder = 6
    Text = 'Edit5'
  end
  object Edit3: TEdit
    Left = 146
    Top = 132
    Width = 145
    Height = 21
    NumbersOnly = True
    TabOrder = 7
    Text = 'Edit3'
  end
  object Edit2: TEdit
    Left = 146
    Top = 105
    Width = 145
    Height = 21
    NumbersOnly = True
    TabOrder = 8
    Text = 'Edit2'
  end
  object Edit1: TEdit
    Left = 146
    Top = 78
    Width = 145
    Height = 21
    NumbersOnly = True
    TabOrder = 9
    Text = 'Edit1'
  end
  object ComboBox1: TComboBox
    Left = 146
    Top = 51
    Width = 145
    Height = 21
    TabOrder = 10
  end
  object ComboBox3: TComboBox
    Left = 146
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 11
    OnChange = ComboBox3Change
  end
  object DateTimePicker1: TDateTimePicker
    Left = 146
    Top = 317
    Width = 145
    Height = 21
    Date = 43816.923682395830000000
    Time = 43816.923682395830000000
    TabOrder = 12
  end
  object Edit7: TEdit
    Left = 146
    Top = 240
    Width = 145
    Height = 21
    TabOrder = 13
    Text = 'Edit6'
  end
  object Edit8: TEdit
    Left = 146
    Top = 267
    Width = 145
    Height = 21
    TabOrder = 14
    Text = 'Edit6'
  end
  object FDQuery1: TFDQuery
    Connection = Form1.FDConnection1
    Left = 80
    Top = 144
  end
end
