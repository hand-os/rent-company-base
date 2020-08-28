unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    FDQuery1: TFDQuery;
    Memo1: TMemo;
    DateTimePicker1: TDateTimePicker;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id:integer;
    table:string;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm3.Button1Click(Sender: TObject);
begin
   FDQuery1.SQL.Clear;
   FDQuery1.SQL.Add('update '+table+' set district=:district, price=:price, rooms=:rooms,'
   +' sector=:sector, street=:street, floor=:floor, floring=:floring, phone=:phone,' +
    ' remont=:remont, description=:description, date=:date where id='+inttostr(id));
   FDQuery1.ParamByName('price').AsInteger:=StrToInt(edit5.Text);
   FDQuery1.ParamByName('district').AsString:=ComboBox3.Text;
   FDQuery1.ParamByName('sector').AsString:=ComboBox1.Text;
   FDQuery1.ParamByName('street').AsString:=edit6.Text;
   FDQuery1.ParamByName('rooms').AsInteger:=StrToInt(edit1.Text);
   FDQuery1.ParamByName('floor').AsInteger:=StrToInt(edit2.Text);
   FDQuery1.ParamByName('floring').AsInteger:=StrToInt(edit3.Text);
   FDQuery1.ParamByName('phone').AsString:=edit4.Text;
   FDQuery1.ParamByName('remont').AsString:=ComboBox2.Text;
   FDQuery1.ParamByName('date').AsDate:=DateTimePicker1.Date;
   FDQuery1.ParamByName('description').AsString:=Memo1.Text;
   FDQuery1.ExecSQL;
         form3.Close;
      form1.filter;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
   FDQuery1.SQL.Clear;
   FDQuery1.SQL.Add('delete from '+table+' where id='+inttostr(id));
      FDQuery1.ExecSQL;
      form3.Close;
      form1.filter;
end;

procedure TForm3.ComboBox3Change(Sender: TObject);
var
i:integer;
begin
form1.FDQuery1.SQL.Clear;
form1.FDQuery1.SQL.Add('select * from sectors where district ='+quotedstr(ComboBox3.Text));
form1.FDQuery1.Active:=true;
ComboBox1.Items.Clear;
form1.FDQuery1.First;
for i := 1 to form1.FDQuery1.RecordCount do
begin
  ComboBox1.Items.Add(form1.FDQuery1.FieldByName('name').AsString);
  form1.FDQuery1.Next;
end;
ComboBox1.ItemIndex:=0;
end;

procedure TForm3.FormCreate(Sender: TObject);
var
i:integer;
begin
Form1.FDQuery3.First;
for i := 0 to Form1.FDQuery3.RecordCount-1 do
begin
ComboBox3.Items.Add(form1.FDQuery3.FieldByName('name').AsString);
Form1.FDQuery3.Next;
end;
end;

end.
