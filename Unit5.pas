unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm5 = class(TForm)
    Label10: TLabel;
    Button2: TButton;
    Button1: TButton;
    Memo1: TMemo;
    ComboBox2: TComboBox;
    Label9: TLabel;
    Label8: TLabel;
    Edit6: TEdit;
    Edit4: TEdit;
    Label7: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    FDQuery1: TFDQuery;
    Edit7: TEdit;
    Label11: TLabel;
    Edit8: TEdit;
    Label12: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      table:string;
  id:string;

  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit1, Unit3;

procedure TForm5.Button1Click(Sender: TObject);
begin
   FDQuery1.SQL.Clear;
   FDQuery1.SQL.Add('update '+table+' set district=:district, price=:price, rooms=:rooms,'
   +' sector=:sector, street=:street, floor=:floor, sotki=:sotki, phone=:phone,' +
    ' remont=:remont, description=:description, date=:date, kanal=:kanal, san=:san where id='+id);
   FDQuery1.ParamByName('price').AsInteger:=StrToInt(edit5.Text);
   FDQuery1.ParamByName('district').AsString:=ComboBox3.Text;
   FDQuery1.ParamByName('sector').AsString:=ComboBox1.Text;
   FDQuery1.ParamByName('street').AsString:=edit6.Text;
   FDQuery1.ParamByName('rooms').AsInteger:=StrToInt(edit1.Text);
   FDQuery1.ParamByName('floor').AsInteger:=StrToInt(edit2.Text);
   FDQuery1.ParamByName('sotki').AsInteger:=StrToInt(edit3.Text);
   FDQuery1.ParamByName('san').AsInteger:=StrToInt(edit7.Text);
   FDQuery1.ParamByName('kanal').AsString:=edit8.Text;
   FDQuery1.ParamByName('phone').AsString:=edit4.Text;
   FDQuery1.ParamByName('remont').AsString:=ComboBox2.Text;
   FDQuery1.ParamByName('date').AsDate:=DateTimePicker1.Date;
   FDQuery1.ParamByName('description').AsString:=Memo1.Text;
   FDQuery1.ExecSQL;
         form5.Close;
      form1.filterhouse;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
   FDQuery1.SQL.Clear;
   FDQuery1.SQL.Add('delete from '+table+' where id='+id);
      FDQuery1.ExecSQL;
      form5.Close;
      form1.filterhouse;
end;

procedure TForm5.ComboBox3Change(Sender: TObject);

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
