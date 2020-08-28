unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    FDQuery1: TFDQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm4.Button1Click(Sender: TObject);
begin
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('select * from users where login=:login and pass=:pass');
FDQuery1.ParamByName('login').AsString:=Edit1.Text;
FDQuery1.ParamByName('pass').AsString:=edit2.Text;
FDQuery1.Active:=true;
if FDQuery1.RecordCount<1 then
ShowMessage('Комбинация логин/пароль не найдена')
else
begin
form1.privs:=FDQuery1.FieldByName('active').AsInteger;
if form1.privs<1 then
ShowMessage('Аккаунт заблокирован')
else
begin
form1.Show;
form4.hide;
form1.userpro:=edit1.Text;
Form1.preotchet;
form1.otchet;
if form1.privs<3 then
form1.TabSheet5.TabVisible:=false;
if form1.privs<2 then
form1.TabSheet2.TabVisible:=false;

end;
end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm4.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
Button1.Click;
end;

end.
