object Form6: TForm6
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Form6'
  ClientHeight = 380
  ClientWidth = 310
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
    Top = 224
    Width = 42
    Height = 13
    Caption = #1055#1088#1086#1079#1074#1086#1085
  end
  object Label8: TLabel
    Left = 8
    Top = 195
    Width = 31
    Height = 13
    Caption = #1059#1083#1080#1094#1072
  end
  object Label7: TLabel
    Left = 8
    Top = 165
    Width = 44
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Label6: TLabel
    Left = 8
    Top = 138
    Width = 26
    Height = 13
    Caption = #1062#1077#1085#1072
  end
  object Label5: TLabel
    Left = 8
    Top = 111
    Width = 18
    Height = 13
    Caption = #1058#1080#1087
  end
  object Label4: TLabel
    Left = 8
    Top = 84
    Width = 89
    Height = 13
    Caption = #1050#1074#1072#1076#1088#1072#1090'. '#1052#1077#1090#1088#1086#1074
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
  object Button1: TButton
    Left = 8
    Top = 337
    Width = 121
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 161
    Top = 337
    Width = 131
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 264
    Width = 283
    Height = 67
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object DateTimePicker1: TDateTimePicker
    Left = 147
    Top = 224
    Width = 145
    Height = 21
    Date = 43816.923682395830000000
    Time = 43816.923682395830000000
    TabOrder = 3
  end
  object Edit6: TEdit
    Left = 147
    Top = 192
    Width = 145
    Height = 21
    TabOrder = 4
    Text = 'Edit6'
  end
  object Edit4: TEdit
    Left = 147
    Top = 165
    Width = 145
    Height = 21
    NumbersOnly = True
    TabOrder = 5
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 147
    Top = 135
    Width = 145
    Height = 21
    NumbersOnly = True
    TabOrder = 6
    Text = 'Edit5'
  end
  object Edit2: TEdit
    Left = 147
    Top = 81
    Width = 145
    Height = 21
    NumbersOnly = True
    TabOrder = 7
    Text = 'Edit2'
  end
  object ComboBox1: TComboBox
    Left = 146
    Top = 51
    Width = 145
    Height = 21
    TabOrder = 8
  end
  object ComboBox3: TComboBox
    Left = 146
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 9
    OnChange = ComboBox3Change
  end
  object ComboBox2: TComboBox
    Left = 147
    Top = 108
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 10
    Text = #1047#1076#1072#1085#1080#1077
    Items.Strings = (
      #1047#1076#1072#1085#1080#1077
      #1054#1092#1080#1089
      #1058#1086#1088#1075#1086#1074#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077
      #1047#1077#1084#1083#1103
      #1054#1073#1097#1077#1087#1080#1090
      #1057#1082#1083#1072#1076
      '')
  end
  object FDQuery1: TFDQuery
    Connection = Form1.FDConnection1
    Left = 128
    Top = 208
  end
end
