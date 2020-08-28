unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    DateTimePicker1: TDateTimePicker;
    Label10: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label1: TLabel;
    ComboBox3: TComboBox;
    ComboBox2: TComboBox;
    FDQuery1: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
  table, id:string;
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm6.Button1Click(Sender: TObject);
begin
   FDQuery1.SQL.Clear;
   FDQuery1.SQL.Add('update '+table+' set district=:district, price=:price, quad=:quad,'
   +' sector=:sector, street=:street, type=:type, phone=:phone,' +
    'description=:description, date=:date  where id='+quotedstr(id));
   FDQuery1.ParamByName('price').AsInteger:=StrToInt(edit5.Text);
   FDQuery1.ParamByName('district').AsString:=ComboBox3.Text;
   FDQuery1.ParamByName('sector').AsString:=ComboBox1.Text;
   FDQuery1.ParamByName('street').AsString:=edit6.Text;
   FDQuery1.ParamByName('quad').AsInteger:=StrToInt(edit2.Text);
   FDQuery1.ParamByName('phone').AsString:=edit4.Text;
   FDQuery1.ParamByName('type').AsString:=ComboBox2.Text;
   FDQuery1.ParamByName('date').AsDate:=DateTimePicker1.Date;
   FDQuery1.ParamByName('description').AsString:=Memo1.Text;
   FDQuery1.ExecSQL;
         form6.Close;
      form1.filtercom;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
   FDQuery1.SQL.Clear;
   FDQuery1.SQL.Add('delete from '+table+' where id='+id);
      FDQuery1.ExecSQL;
      form6.Close;
      form1.filtercom;
end;

procedure TForm6.ComboBox3Change(Sender: TObject);
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

end.
