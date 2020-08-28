unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Data.Win.ADODB,
  Data.DBXMySQL, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.ExtDlgs, inifiles;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    priceedit: TEdit;
    FDTable2: TFDTable;
    DataSource2: TDataSource;
    FDQuery1: TFDQuery;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox2: TComboBox;
    UpDown1: TUpDown;
    Label4: TLabel;
    Label5: TLabel;
    UpDown2: TUpDown;
    Label6: TLabel;
    Edit4: TEdit;
    UpDown3: TUpDown;
    Label7: TLabel;
    Memo1: TMemo;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit5: TEdit;
    FDQuery2: TFDQuery;
    TreeView1: TTreeView;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    TrackBar1: TTrackBar;
    roomedit: TEdit;
    flooredit: TEdit;
    floringedit: TEdit;
    ComboBox3: TComboBox;
    Edit9: TEdit;
    TrackBar2: TTrackBar;
    FDQuery3: TFDQuery;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    minpriceedit: TEdit;
    maxpriceedit: TEdit;
    FDQuery4: TFDQuery;
    FDQuery5: TFDQuery;
    DataSource3: TDataSource;
    DBImage1: TDBImage;
    DBImage2: TDBImage;
    DBImage3: TDBImage;
    DBMemo1: TDBMemo;
    Label19: TLabel;
    Label20: TLabel;
    Edit6: TEdit;
    Label21: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    GroupBox4: TGroupBox;
    Edit7: TEdit;
    Label22: TLabel;
    Memo2: TMemo;
    Button2: TButton;
    Label23: TLabel;
    FDQuery6: TFDQuery;
    FDQuery7: TFDQuery;
    TabSheet5: TTabSheet;
    DBGrid3: TDBGrid;
    GroupBox5: TGroupBox;
    FDTable3: TFDTable;
    DataSource4: TDataSource;
    Edit8: TEdit;
    Edit10: TEdit;
    Button3: TButton;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Button4: TButton;
    Button5: TButton;
    ComboBox4: TComboBox;
    FDQuery8: TFDQuery;
    FDQuery9: TFDQuery;
    GroupBox6: TGroupBox;
    Image3: TImage;
    Image2: TImage;
    Image1: TImage;
    ComboBox5: TComboBox;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    PageControl3: TPageControl;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    RadioGroup3: TRadioGroup;
    GroupBox7: TGroupBox;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    GroupBox8: TGroupBox;
    Label13: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    addsectorhomecombo: TComboBox;
    addstreethomedit: TEdit;
    addpricehomeedit: TEdit;
    ComboBox7: TComboBox;
    addnumberhomeedit: TEdit;
    Label32: TLabel;
    addroomhomeedit: TEdit;
    Label33: TLabel;
    addsotkihomeedit: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    addfloorhomeedit: TEdit;
    addcanalhomeedit: TEdit;
    Label36: TLabel;
    Label37: TLabel;
    addmemohome: TMemo;
    Button6: TButton;
    Label38: TLabel;
    Label39: TLabel;
    UpDown4: TUpDown;
    UpDown5: TUpDown;
    UpDown6: TUpDown;
    Label40: TLabel;
    addremontedit: TComboBox;
    Image7: TImage;
    RadioGroup4: TRadioGroup;
    TreeView2: TTreeView;
    DBImage4: TDBImage;
    DBImage5: TDBImage;
    DBImage6: TDBImage;
    DBMemo2: TDBMemo;
    DBGrid4: TDBGrid;
    GroupBox9: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    sotkihomeedit: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    TrackBar3: TTrackBar;
    sotkiedithouse: TEdit;
    flooredithouse: TEdit;
    roomsedithouse: TEdit;
    remonthomcombo: TComboBox;
    TrackBar4: TTrackBar;
    minpricehome: TEdit;
    maxpricehome: TEdit;
    phonehomeedit: TEdit;
    FDQuery10: TFDQuery;
    streethomeedit: TEdit;
    UpDown7: TUpDown;
    addsanhome: TEdit;
    Label43: TLabel;
    Label49: TLabel;
    sanhomeedit: TEdit;
    othousedate: TDateTimePicker;
    dohousedate: TDateTimePicker;
    Label50: TLabel;
    Label51: TLabel;
    doappdate: TDateTimePicker;
    Label52: TLabel;
    otappdate: TDateTimePicker;
    Label53: TLabel;
    DataSource5: TDataSource;
    PageControl5: TPageControl;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    GroupBox10: TGroupBox;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Button7: TButton;
    addcommemo: TMemo;
    Label54: TLabel;
    Label55: TLabel;
    addcomphone: TEdit;
    ComboBox6: TComboBox;
    addcompriceedit: TEdit;
    Label56: TLabel;
    Label57: TLabel;
    GroupBox11: TGroupBox;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    addcomseccombo: TComboBox;
    addstreetcomedit: TEdit;
    RadioGroup5: TRadioGroup;
    RadioGroup6: TRadioGroup;
    TreeView3: TTreeView;
    GroupBox12: TGroupBox;
    Label61: TLabel;
    Label63: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    TrackBar5: TTrackBar;
    otquad: TEdit;
    TrackBar6: TTrackBar;
    minpricecom: TEdit;
    maxpricecom: TEdit;
    comphone: TEdit;
    comstreet: TEdit;
    otcomdate: TDateTimePicker;
    docomdate: TDateTimePicker;
    DBGrid5: TDBGrid;
    DBImage7: TDBImage;
    DBImage8: TDBImage;
    DBImage9: TDBImage;
    DBMemo3: TDBMemo;
    ComboBox10: TComboBox;
    DateTimePicker4: TDateTimePicker;
    DBGrid6: TDBGrid;
    DataSource6: TDataSource;
    addtypecombo: TComboBox;
    Label72: TLabel;
    Label73: TLabel;
    addquadedit: TEdit;
    typecombo: TComboBox;
    Label62: TLabel;
    doquad: TEdit;
    Label64: TLabel;
    Label65: TLabel;
    FDQuery11: TFDQuery;
    FDQuery12: TFDQuery;
    DataSource7: TDataSource;
    Label69: TLabel;
    DataSource8: TDataSource;
    ComboBox8: TComboBox;
    FDQuery13: TFDQuery;
    FDQuery14: TFDQuery;
    Button8: TButton;
    Button9: TButton;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Button10: TButton;
    CheckBox1: TCheckBox;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure loaddistrict();
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure filter;
    procedure filtercom;
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure floringeditChange(Sender: TObject);
    procedure roomeditChange(Sender: TObject);
    procedure flooreditChange(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure minpriceeditChange(Sender: TObject);
    procedure maxpriceeditChange(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
    procedure DBImage2Click(Sender: TObject);
    procedure DBImage3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
    procedure addnumberhomeeditChange(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure filterhouse;
    procedure TrackBar3Change(Sender: TObject);
    procedure TrackBar4Change(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure sotkiedithouseChange(Sender: TObject);
    procedure flooredithouseChange(Sender: TObject);
    procedure roomsedithouseChange(Sender: TObject);
    procedure sanhomeeditChange(Sender: TObject);
    procedure streethomeeditChange(Sender: TObject);
    procedure phonehomeeditChange(Sender: TObject);
    procedure remonthomcomboChange(Sender: TObject);
    procedure othousedateChange(Sender: TObject);
    procedure dohousedateChange(Sender: TObject);
    procedure minpricehomeChange(Sender: TObject);
    procedure maxpricehomeChange(Sender: TObject);
    procedure TreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBImage6Click(Sender: TObject);
    procedure DBImage5Click(Sender: TObject);
    procedure DBImage4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure TreeView3Change(Sender: TObject; Node: TTreeNode);
    procedure RadioGroup6Click(Sender: TObject);
    procedure typecomboChange(Sender: TObject);
    procedure otquadChange(Sender: TObject);
    procedure doquadChange(Sender: TObject);
    procedure comstreetChange(Sender: TObject);
    procedure comphoneChange(Sender: TObject);
    procedure otcomdateChange(Sender: TObject);
    procedure docomdateChange(Sender: TObject);
    procedure minpricecomChange(Sender: TObject);
    procedure maxpricecomChange(Sender: TObject);
    procedure TrackBar5Change(Sender: TObject);
    procedure TrackBar6Change(Sender: TObject);
    procedure DBImage7Click(Sender: TObject);
    procedure DBImage8Click(Sender: TObject);
    procedure DBImage9Click(Sender: TObject);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure otchet;
    procedure ComboBox10Change(Sender: TObject);
    procedure DateTimePicker4Change(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure preotchet;
    procedure Button8Click(Sender: TObject);
    procedure addcomphoneChange(Sender: TObject);
  private
    { Private declarations }
  public
      photo1: string;
    photo2: string;
    photo3: string;
    privs:integer;
    userpro:string;

    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit5, Unit6, Unit7;

procedure TForm1.addcomphoneChange(Sender: TObject);
begin
if Length(addcomphone.Text)>6 then
begin
  FDQuery6.SQL.Clear;
  FDQuery6.SQL.Add('select * from maklers where phone like '+QuotedStr('%'+addcomphone.Text+'%'));
  FDQuery6.Active:=true;
  if FDQuery6.RecordCount>0 then
  Label55.Visible:=true;
end
else
Label55.Visible:=false;

if Length(addcomphone.Text)>6 then
begin
  form7.Memo1.Clear;
  FDQuery13.SQL.Clear;
  FDQuery13.SQL.Add('select * from com where phone = '+QuotedStr(ComboBox6.Text+addcomphone.Text));
  FDQuery13.Active:=true;
  if FDQuery13.RecordCount>0 then
  begin
   Label74.Visible:=true;
   Button9.Visible:=true;
   FDQuery13.First;
      form7.Memo1.Lines.Add(FDQuery13.FieldByName('district').AsString);
      form7.Memo1.Lines.Add(FDQuery13.FieldByName('sector').AsString);
         form7.Memo1.Lines.Add(FDQuery13.FieldByName('street').AsString+' улица');
            form7.Memo1.Lines.Add(FDQuery13.FieldByName('author').AsString+' Автор');
               form7.Memo1.Lines.Add(FDQuery13.FieldByName('phone').AsString+' телефон');
                  form7.Memo1.Lines.Add(FDQuery13.FieldByName('price').AsString+' цена');
                     form7.Memo1.Lines.Add(FDQuery13.FieldByName('quad').AsString+' квадратов');
                     form7.Memo1.Lines.Add(' ');
  end;
  FDQuery14.SQL.Clear;
  FDQuery14.SQL.Add('select * from com_rent where phone = '+QuotedStr(ComboBox6.Text+addcomphone.Text));
  FDQuery14.Active:=true;
  if FDQuery14.RecordCount>0 then
  begin
   Label74.Visible:=true;
   Button9.Visible:=true;
      FDQuery14.First;
   form7.Memo1.Lines.Add(FDQuery14.FieldByName('district').AsString);
      form7.Memo1.Lines.Add(FDQuery14.FieldByName('sector').AsString);
         form7.Memo1.Lines.Add(FDQuery14.FieldByName('street').AsString+' Улица');
            form7.Memo1.Lines.Add(FDQuery14.FieldByName('author').AsString+' Автор');
               form7.Memo1.Lines.Add(FDQuery14.FieldByName('phone').AsString+' Телефон');
                  form7.Memo1.Lines.Add(FDQuery14.FieldByName('price').AsString+' Цена');
                     form7.Memo1.Lines.Add(FDQuery14.FieldByName('quad').AsString+' квадратов');

  end;
end
else
begin
Label74.Visible:=false;
Button9.Visible:=false;
end;
end;

procedure TForm1.addnumberhomeeditChange(Sender: TObject);
var
check2, check :boolean;
begin
if Length(addnumberhomeedit.Text)>6 then
begin
  FDQuery6.SQL.Clear;
  FDQuery6.SQL.Add('select * from maklers where phone like '+QuotedStr('%'+addnumberhomeedit.Text+'%'));
  FDQuery6.Active:=true;
  if FDQuery6.RecordCount>0 then
  Label32.Visible:=true;
end
else
Label32.Visible:=false;
if Length(addnumberhomeedit.Text)>6 then
begin
  form7.Memo1.Clear;
  FDQuery13.SQL.Clear;
  FDQuery13.SQL.Add('select * from house where phone = '+QuotedStr(ComboBox7.Text+addnumberhomeedit.Text));
  FDQuery13.Active:=true;
  if FDQuery13.RecordCount>0 then
  begin
   Label75.Visible:=true;
   Button8.Visible:=true;
   FDQuery13.First;
      form7.Memo1.Lines.Add(FDQuery13.FieldByName('district').AsString);
      form7.Memo1.Lines.Add(FDQuery13.FieldByName('sector').AsString);
         form7.Memo1.Lines.Add(FDQuery13.FieldByName('street').AsString+' Улица');
            form7.Memo1.Lines.Add(FDQuery13.FieldByName('author').AsString+' Автор');
               form7.Memo1.Lines.Add(FDQuery13.FieldByName('phone').AsString+' телефон');
                  form7.Memo1.Lines.Add(FDQuery13.FieldByName('price').AsString+' Цена');
                     form7.Memo1.Lines.Add(FDQuery13.FieldByName('sotki').AsString+' соток');
                     form7.Memo1.Lines.Add(' ');
  end;
  FDQuery14.SQL.Clear;
  FDQuery14.SQL.Add('select * from house_rent where phone = '+QuotedStr(ComboBox7.Text+addnumberhomeedit.Text));
  FDQuery14.Active:=true;
  if FDQuery14.RecordCount>0 then
  begin
   Label75.Visible:=true;
   Button8.Visible:=true;
      FDQuery14.First;
   form7.Memo1.Lines.Add(FDQuery14.FieldByName('district').AsString);
      form7.Memo1.Lines.Add(FDQuery14.FieldByName('sector').AsString);
         form7.Memo1.Lines.Add(FDQuery14.FieldByName('street').AsString+' улица');
            form7.Memo1.Lines.Add(FDQuery14.FieldByName('author').AsString+' Автор');
               form7.Memo1.Lines.Add(FDQuery14.FieldByName('phone').AsString+' Телефон');
                  form7.Memo1.Lines.Add(FDQuery14.FieldByName('price').AsString+' Цена');
                     form7.Memo1.Lines.Add(FDQuery14.FieldByName('sotki').AsString+' соток');

  end;
end
else
begin
Label75.Visible:=false;
Button8.Visible:=false;

end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
check:boolean;
Erorrmsg,table:string;
strr:Tstream;
begin
check:=true;
if priceedit.Text='' then
begin
  Erorrmsg:=Erorrmsg+#13+'Вы не ввели цену';
  check:=false;
end;
if edit5.Text='' then
begin
  Erorrmsg:=Erorrmsg+#13+'Вы не ввели номер';
  check:=false;
end;
if edit1.Text='' then
begin
  Erorrmsg:=Erorrmsg+#13+'Вы не ввели улицу';
  check:=false;
end;
if combobox1.Text='' then
begin
  Erorrmsg:=Erorrmsg+#13+'Вы не выбрали сектор';
  check:=false;
end;
if strtoint(edit3.Text)>StrToInt(edit4.Text) then
begin
  Erorrmsg:=Erorrmsg+#13+'Этажность больше этажей';
  check:=false;
end;

if check then
begin
   FDQuery2.SQL.Clear;
   if RadioGroup2.ItemIndex=0 then
   table:=('apparts')
   else
    table:=('apparts_rent');
   FDQuery2.SQL.Add('insert into '+table+'(date, actual, price, district, sector, street,'+
   ' rooms, floor, floring, author, phone, photo1, photo2, photo3, description, remont) VALUES ('+
   ':date, 1, :price, :district, :sector, :street, :rooms, :floor, :floring, :user'+
   ', :phone, :photo1, :photo2, :photo3, :description, :remont)');
   FDQuery2.ParamByName('date').AsDate:=DateTimePicker1.Date;
   FDQuery2.ParamByName('price').AsInteger:=StrToInt(priceedit.Text);
   FDQuery2.ParamByName('district').Value:=DBLookupComboBox1.Text;
   FDQuery2.ParamByName('sector').AsString:=ComboBox1.Text;
   FDQuery2.ParamByName('street').AsString:=edit1.Text;
   FDQuery2.ParamByName('rooms').AsInteger:=StrToInt(edit2.Text);
   FDQuery2.ParamByName('floor').AsInteger:=StrToInt(edit3.Text);
   FDQuery2.ParamByName('floring').AsInteger:=StrToInt(edit4.Text);
   FDQuery2.ParamByName('phone').AsString:=combobox5.Text+edit5.Text;
   FDQuery2.ParamByName('photo1').LoadFromFile(photo1,ftBlob);
   FDQuery2.ParamByName('photo2').LoadFromFile(photo2,ftBlob);
   FDQuery2.ParamByName('photo3').LoadFromFile(photo3,ftBlob);
   FDQuery2.ParamByName('description').AsString:=memo1.Text;
   FDQuery2.ParamByName('remont').AsString:=ComboBox2.Text;
   FDQuery2.ParamByName('user').asstring:=userpro;
   FDQuery2.ExecSQL;
   edit5.Text:='';
   priceedit.Text:='';
   edit1.Text:='';
   memo1.Lines.Clear;
   edit2.Text:='';
   edit3.Text:='';
   edit4.Text:='';
   Image1.Picture:=Image7.Picture;;

   Image2.Picture:=Image7.Picture;;

   Image3.Picture:=Image7.Picture;;

   photo1:='C:\no_photo.jpg';
photo2:='C:\no_photo.jpg';
photo3:='C:\no_photo.jpg';
end
else
  ShowMessage(Erorrmsg);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
FDQuery6.SQL.Clear;
FDQuery6.SQL.Add('select * from maklers where phone=:phone');
FDQuery6.ParamByName('phone').AsString:=Edit7.Text;
FDQuery6.Active:=true;
if FDQuery6.RecordCount>0 then
begin
  ShowMessage('Этот номер уже есть в базе');
end
else
begin
  FDQuery6.SQL.Clear;
  FDQuery6.SQL.Add('insert into maklers(phone, description) values(:phone , :description)');
  FDQuery6.ParamByName('phone').AsString:=edit7.Text;
  FDQuery6.ParamByName('description').AsString:=Memo2.Lines.Strings[0];
  FDQuery6.ExecSQL;
  Edit7.Text:='';
  Memo2.Lines.Clear;
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin

FDQuery8.SQL.Clear;
FDQuery8.SQL.Add('update users set active=:active where id=:id');
FDQuery8.ParamByName('active').AsString:=ComboBox4.Text;
FDQuery8.ParamByName('id').AsString:=DBGrid3.DataSource.DataSet.Fields[0].AsString;
FDQuery8.ExecSQL;

FDTable3.Active:=false;
FDTable3.Active:=true;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
FDQuery8.SQL.Clear;
FDQuery8.SQL.Add('insert into users(login, pass, tg, name, firstname, office, active) values('+
':login, :pass, :tg, :name, :firstname, :office, :active)');
FDQuery8.ParamByName('login').asstring:=edit8.text;
FDQuery8.ParamByName('pass').asstring:=edit10.text;
FDQuery8.ParamByName('tg').asstring:=edit11.text;
FDQuery8.ParamByName('name').asstring:=edit12.text;
FDQuery8.ParamByName('firstname').asstring:=edit13.text;
FDQuery8.ParamByName('office').asstring:=edit4.text;
FDQuery8.ParamByName('active').asinteger:=1;

//fdquery9.sql.clear;
//fdquery9.sql.add('CREATE USER '+edit8.Text+'@'+'localhost IDENTIFIED BY '+quotedstr(edit10.text)+';');
//ShowMessage(FDQuery9.SQL[0]);
//fdquery9.execsql;
//fdquery9.sql.clear;
//fdquery9.sql.add('GRANT ALL PRIVILEGES ON * . * TO '+edit8.Text+'@localhost;');
//fdquery9.execsql;
//fdquery9.sql.clear;
//fdquery9.sql.add('Flush Privileges');
//fdquery9.execsql;
fdquery8.ExecSQL;
FDTable3.Active:=false;
FDTable3.Active:=true;

end;

procedure TForm1.Button5Click(Sender: TObject);
var
checl:Integer;
begin
if DBGrid3.DataSource.DataSet.Fields[0].AsString<>'?' then
begin
checl:=messagedlg('Вы действителньо хотите удалить пользователя '+DBGrid3.DataSource.DataSet.Fields[1].AsString+'?',mtCustom, mbOKCancel, 0);
if checl=mrOK then
begin
FDQuery8.SQL.Clear;
FDQuery8.SQL.Add('delete from users where id=:id');
FDQuery8.ParamByName('id').AsString:=DBGrid3.DataSource.DataSet.Fields[0].AsString;
FDQuery8.ExecSQL;
end;
FDTable3.Active:=false;
FDTable3.Active:=true;

end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
check:boolean;
Erorrmsg,table:string;
strr:TStream;
begin
check:=true;
if addpricehomeedit.Text='' then
begin
  Erorrmsg:=Erorrmsg+#13+'Вы не ввели цену';
  check:=false;
end;
if addnumberhomeedit.Text='' then
begin
  Erorrmsg:=Erorrmsg+#13+'Вы не ввели номер';
  check:=false;
end;
if addstreethomedit.Text='' then
begin
  Erorrmsg:=Erorrmsg+#13+'Вы не ввели улицу';
  check:=false;
end;
if addsectorhomecombo.Text='' then
begin
  Erorrmsg:=Erorrmsg+#13+'Вы не выбрали сектор';
  check:=false;
end;
if strtoint(addsotkihomeedit.Text)<1 then
begin
  Erorrmsg:=Erorrmsg+#13+'Количетсво соток меньше одной!';
  check:=false;
end;
if check then
begin
   FDQuery2.SQL.Clear;
      if RadioGroup3.ItemIndex=0 then
   table:=('house')
   else
    table:=('house_rent');
   FDQuery2.SQL.Add('insert into '+table+'(date, price, district, sector, street,'+
   ' rooms, floor, sotki, author, phone, photo1, photo2, photo3, description, remont, san, kanal) VALUES ('+
   ':date, :price, :district, :sector, :street, :rooms, :floor, :sotki, :user'+
   ', :phone, :photo1, :photo2, :photo3, :description, :remont, :san, :kanal)');
   FDQuery2.ParamByName('date').AsDate:=DateTimePicker1.Date;
   FDQuery2.ParamByName('price').AsInteger:=StrToInt(addpricehomeedit.Text);
   FDQuery2.ParamByName('district').Value:=DBLookupComboBox2.Text;
   FDQuery2.ParamByName('sector').AsString:=addsectorhomecombo.Text;
   FDQuery2.ParamByName('street').AsString:=addstreethomedit.Text;
   FDQuery2.ParamByName('rooms').AsInteger:=StrToInt(addroomhomeedit.Text);
   FDQuery2.ParamByName('floor').AsInteger:=StrToInt(addfloorhomeedit.Text);
   FDQuery2.ParamByName('sotki').AsInteger:=StrToInt(addsotkihomeedit.Text);
   FDQuery2.ParamByName('phone').AsString:=combobox7.Text+addnumberhomeedit.Text;
   FDQuery2.ParamByName('photo1').LoadFromFile(photo1,ftBlob);
   FDQuery2.ParamByName('photo2').LoadFromFile(photo2,ftBlob);
   FDQuery2.ParamByName('photo3').LoadFromFile(photo3,ftBlob);
   FDQuery2.ParamByName('description').AsString:=addmemohome.Text;
   FDQuery2.ParamByName('remont').AsString:=addremontedit.Text;
   FDQuery2.ParamByName('user').asstring:=userpro;
   FDQuery2.ParamByName('san').asstring:=addsanhome.Text;
   FDQuery2.ParamByName('kanal').asstring:=addcanalhomeedit.Text;
   FDQuery2.ExecSQL;
   addstreethomedit.Text:='';
   addpricehomeedit.Text:='';
   addnumberhomeedit.Text:='';
   addmemohome.Lines.Clear;
   addsotkihomeedit.Text:='0';
   addroomhomeedit.Text:='0';
   addfloorhomeedit.Text:='0';
   addcanalhomeedit.Text:='';
   Image4.Picture:=Image7.Picture;

   Image5.Picture:=Image7.Picture;;

   Image6.Picture:=Image7.Picture;;

   photo1:='C:\no_photo.jpg';
photo2:='C:\no_photo.jpg';
photo3:='C:\no_photo.jpg';
end
else
ShowMessage(Erorrmsg);
end;

procedure TForm1.Button7Click(Sender: TObject);
var
check:boolean;
Erorrmsg,table:string;
strr:tstream;
begin
check:=true;
if addcompriceedit.Text='' then
begin
  Erorrmsg:=Erorrmsg+#13+'Вы не ввели цену';
  check:=false;
end;
if addcompriceedit.Text='' then
begin
  Erorrmsg:=Erorrmsg+#13+'Вы не ввели номер';
  check:=false;
end;
if addstreetcomedit.Text='' then
begin
  Erorrmsg:=Erorrmsg+#13+'Вы не ввели улицу';
  check:=false;
end;
if addcomseccombo.Text='' then
begin
  Erorrmsg:=Erorrmsg+#13+'Вы не выбрали сектор';
  check:=false;
end;
if strtoint(addquadedit.Text)<1 then
begin
  Erorrmsg:=Erorrmsg+#13+'Количетсво квадратных метров меньше одного!';
  check:=false;
end;
if check then
begin
   FDQuery2.SQL.Clear;
      if RadioGroup5.ItemIndex=0 then
   table:=('com')
   else
    table:=('com_rent');
   FDQuery2.SQL.Add('insert into '+table+'(date, price, district, sector, street,'+
   ' quad, type, author, phone, photo1, photo2, photo3, description) VALUES ('+
   ':date, :price, :district, :sector, :street, :quad, :type, :user'+
   ', :phone, :photo1, :photo2, :photo3, :description)');
   FDQuery2.ParamByName('date').AsDate:=DateTimePicker1.Date;
   FDQuery2.ParamByName('price').AsInteger:=StrToInt(addcompriceedit.Text);
   FDQuery2.ParamByName('district').Value:=DBLookupComboBox3.Text;
   FDQuery2.ParamByName('sector').AsString:=addcomseccombo.Text;
   FDQuery2.ParamByName('street').AsString:=addstreetcomedit.Text;
   FDQuery2.ParamByName('quad').AsInteger:=StrToInt(addquadedit.Text);
   FDQuery2.ParamByName('type').AsString:=addtypecombo.Text;
   FDQuery2.ParamByName('phone').AsString:=combobox6.Text+addcomphone.Text;
   FDQuery2.ParamByName('photo1').LoadFromFile(photo1,ftBlob);
   FDQuery2.ParamByName('photo2').LoadFromFile(photo2,ftBlob);
   FDQuery2.ParamByName('photo3').LoadFromFile(photo3,ftBlob);
   FDQuery2.ParamByName('description').AsString:=addmemohome.Text;
   FDQuery2.ParamByName('user').asstring:=userpro;
   FDQuery2.ExecSQL;
   addstreetcomedit.Text:='';
   addcompriceedit.Text:='';
   addcomphone.Text:='';
   addcommemo.Lines.Clear;
   addquadedit.Text:='0';
   Image8.Picture:=Image7.Picture;
   Image9.Picture:=Image7.Picture;
   Image10.Picture:=Image7.Picture;

   photo1:='C:\no_photo.jpg';
photo2:='C:\no_photo.jpg';
photo3:='C:\no_photo.jpg';
end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
 form7.show;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
filter;
end;

procedure TForm1.ComboBox10Change(Sender: TObject);
begin
otchet;
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
filter;
end;

procedure TForm1.ComboBox8Change(Sender: TObject);
begin
otchet;
end;

procedure TForm1.comphoneChange(Sender: TObject);
begin
filtercom;
end;

procedure TForm1.comstreetChange(Sender: TObject);
begin
filtercom;
end;

procedure TForm1.DateTimePicker4Change(Sender: TObject);
begin
otchet;
end;

procedure TForm1.DBGrid2CellClick(Column: TColumn);
begin



if privs>1 then
  begin
FDQuery7.SQL.Clear;
  if RadioGroup1.ItemIndex=0 then
  begin
  FDQuery7.SQL.Add('select * from apparts where ');
  Form3.table:='apparts';
  end
  else
  begin
  FDQuery7.SQL.Add('select * from apparts_rent where ');
    Form3.table:='apparts_rent';
  end;
FDQuery7.SQL.Add('id='+Column.Field.AsString);
FDQuery7.Active:=true;

form3.ComboBox3.Text:=FDQuery7.FieldByName('district').asstring;
form3.ComboBox1.Text:=FDQuery7.FieldByName('sector').AsString;
form3.ComboBox2.Text:=FDQuery7.FieldByName('remont').AsString;
form3.edit1.Text:=FDQuery7.FieldByName('rooms').AsString;
form3.edit2.Text:=FDQuery7.FieldByName('floor').AsString;
form3.edit3.Text:=FDQuery7.FieldByName('floring').AsString;
form3.edit4.Text:=FDQuery7.FieldByName('phone').AsString;
form3.edit5.Text:=FDQuery7.FieldByName('price').AsString;
form3.edit6.Text:=FDQuery7.FieldByName('street').AsString;
form3.DateTimePicker1.Date:=FDQuery7.FieldByName('date').AsDateTime;
form3.Memo1.Text:=FDQuery7.FieldByName('description').AsString;

if FDQuery7.FieldByName('actual').AsInteger=1 then
form3.CheckBox1.Checked:=true
else
form3.CheckBox1.Checked:=false;
form3.Caption:='Запись №'+Column.Field.AsString;
form3.id:=Column.Field.AsInteger;
form3.Show;
  end;

end;

procedure TForm1.DBGrid4CellClick(Column: TColumn);
begin
if privs>1 then
  begin
FDQuery7.SQL.Clear;
  if RadioGroup4.ItemIndex=0 then
  begin
  FDQuery7.SQL.Add('select * from house where ');
  Form5.table:='house';
  end
  else
  begin
  FDQuery7.SQL.Add('select * from house_rent where ');
    Form5.table:='house_rent';
  end;
FDQuery7.SQL.Add('id='+Column.Field.AsString);
FDQuery7.Active:=true;
form5.ComboBox3.Text:=FDQuery7.FieldByName('district').asstring;
form5.ComboBox1.Text:=FDQuery7.FieldByName('sector').AsString;
form5.ComboBox2.Text:=FDQuery7.FieldByName('remont').AsString;
form5.edit1.Text:=FDQuery7.FieldByName('rooms').AsString;
form5.edit2.Text:=FDQuery7.FieldByName('floor').AsString;
form5.edit3.Text:=FDQuery7.FieldByName('sotki').AsString;
form5.edit4.Text:=FDQuery7.FieldByName('phone').AsString;
form5.edit5.Text:=FDQuery7.FieldByName('price').AsString;
form5.edit6.Text:=FDQuery7.FieldByName('street').AsString;
form5.edit7.Text:=FDQuery7.FieldByName('san').AsString;
form5.edit8.Text:=FDQuery7.FieldByName('kanal').AsString;
form5.DateTimePicker1.Date:=FDQuery7.FieldByName('date').AsDateTime;
form5.Memo1.Text:=FDQuery7.FieldByName('description').AsString;
form5.Caption:='Запись №'+Column.Field.AsString;
form5.id:=Column.Field.AsString;
form5.Show;
end;
end;

procedure TForm1.DBGrid5CellClick(Column: TColumn);
begin
if privs>1 then
  begin
FDQuery7.SQL.Clear;
  if RadioGroup6.ItemIndex=0 then
  begin
  FDQuery7.SQL.Add('select * from com where ');
  Form6.table:='com';
  end
  else
  begin
  FDQuery7.SQL.Add('select * from com_rent where ');
    Form6.table:='com_rent';
  end;
FDQuery7.SQL.Add('id='+Column.Field.AsString);
FDQuery7.Active:=true;
form6.ComboBox3.Text:=FDQuery7.FieldByName('district').asstring;
form6.ComboBox1.Text:=FDQuery7.FieldByName('sector').AsString;
form6.ComboBox2.Text:=FDQuery7.FieldByName('type').AsString;
form6.edit2.Text:=FDQuery7.FieldByName('quad').AsString;
form6.edit4.Text:=FDQuery7.FieldByName('phone').AsString;
form6.edit5.Text:=FDQuery7.FieldByName('price').AsString;
form6.edit6.Text:=FDQuery7.FieldByName('street').AsString;
form6.DateTimePicker1.Date:=FDQuery7.FieldByName('date').AsDateTime;
form6.Memo1.Text:=FDQuery7.FieldByName('description').AsString;
form6.Caption:='Запись №'+Column.Field.AsString;
form6.id:=Column.Field.AsString;
form6.Show;
end;
end;



procedure TForm1.DBImage1Click(Sender: TObject);
begin
form2.Width:=DBImage1.Picture.Width;
Form2.Height:=DBImage1.Picture.Height;
form2.Image1.Picture:=DBImage1.Picture;
form2.Caption:=FDQuery5.FieldByName('district').AsString;
form2.state:=1;
form2.show;
form2.vklad:=1;
end;

procedure TForm1.DBImage2Click(Sender: TObject);
begin
form2.Width:=DBImage2.Picture.Width;
Form2.Height:=DBImage2.Picture.Height;
form2.Image1.Picture:=DBImage2.Picture;
form2.Caption:=FDQuery5.FieldByName('district').AsString;
form2.state:=2;
form2.show;
form2.vklad:=1;
end;

procedure TForm1.DBImage3Click(Sender: TObject);
begin
form2.Width:=DBImage3.Picture.Width;
Form2.Height:=DBImage3.Picture.Height;
form2.Image1.Picture:=DBImage3.Picture;
form2.Caption:=FDQuery5.FieldByName('district').AsString;
form2.state:=3;
form2.show;
form2.vklad:=1;
end;

procedure TForm1.DBImage4Click(Sender: TObject);
begin
form2.Width:=DBImage4.Picture.Width;
Form2.Height:=DBImage4.Picture.Height;
form2.Image1.Picture:=DBImage4.Picture;
form2.Caption:=FDQuery10.FieldByName('district').AsString;
form2.state:=1;
form2.show;
form2.vklad:=2;
end;

procedure TForm1.DBImage5Click(Sender: TObject);
begin
form2.Width:=DBImage5.Picture.Width;
Form2.Height:=DBImage5.Picture.Height;
form2.Image1.Picture:=DBImage5.Picture;
form2.Caption:=FDQuery10.FieldByName('district').AsString;
form2.state:=3;
form2.show;
form2.vklad:=2;
end;

procedure TForm1.DBImage6Click(Sender: TObject);
begin
form2.Width:=DBImage6.Picture.Width;
Form2.Height:=DBImage6.Picture.Height;
form2.Image1.Picture:=DBImage6.Picture;
form2.Caption:=FDQuery10.FieldByName('district').AsString;
form2.state:=3;
form2.show;
form2.vklad:=2;
end;

procedure TForm1.DBImage7Click(Sender: TObject);
begin
form2.Width:=DBImage7.Picture.Width;
Form2.Height:=DBImage7.Picture.Height;
form2.Image1.Picture:=DBImage7.Picture;
form2.Caption:=FDQuery12.FieldByName('district').AsString;
form2.state:=1;
form2.show;
form2.vklad:=3;
end;

procedure TForm1.DBImage8Click(Sender: TObject);
begin
form2.Width:=DBImage8.Picture.Width;
Form2.Height:=DBImage8.Picture.Height;
form2.Image1.Picture:=DBImage8.Picture;
form2.Caption:=FDQuery10.FieldByName('district').AsString;
form2.state:=2;
form2.show;
form2.vklad:=3;
end;

procedure TForm1.DBImage9Click(Sender: TObject);
begin
form2.Width:=DBImage9.Picture.Width;
Form2.Height:=DBImage9.Picture.Height;
form2.Image1.Picture:=DBImage9.Picture;
form2.Caption:=FDQuery12.FieldByName('district').AsString;
form2.state:=3;
form2.show;
form2.vklad:=3;
end;

procedure TForm1.DBLookupComboBox1Click(Sender: TObject);
var
i:integer;
begin
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('select * from sectors where district ='+quotedstr(DBLookupComboBox1.Text));
FDQuery1.Active:=true;
ComboBox1.Items.Clear;
FDQuery1.First;
for i := 1 to FDQuery1.RecordCount do
begin
  ComboBox1.Items.Add(FDQuery1.FieldByName('name').AsString);
  FDQuery1.Next;
end;
ComboBox1.ItemIndex:=0;
end;

procedure TForm1.DBLookupComboBox2Click(Sender: TObject);
var
i:integer;
begin
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('select * from sectors where district ='+quotedstr(DBLookupComboBox2.Text));
FDQuery1.Active:=true;
addsectorhomecombo.Items.Clear;
FDQuery1.First;
for i := 1 to FDQuery1.RecordCount do
begin
  addsectorhomecombo.Items.Add(FDQuery1.FieldByName('name').AsString);
  FDQuery1.Next;
end;
addsectorhomecombo.ItemIndex:=0;

end;

procedure TForm1.DBLookupComboBox3Click(Sender: TObject);
var
i:integer;
begin
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('select * from sectors where district ='+quotedstr(DBLookupComboBox3.Text));
FDQuery1.Active:=true;
addcomseccombo.Items.Clear;
FDQuery1.First;
for i := 1 to FDQuery1.RecordCount do
begin
  addcomseccombo.Items.Add(FDQuery1.FieldByName('name').AsString);
  FDQuery1.Next;
end;
addcomseccombo.ItemIndex:=0;
end;

procedure TForm1.docomdateChange(Sender: TObject);
begin
filtercom;
end;

procedure TForm1.dohousedateChange(Sender: TObject);
begin
filterhouse;
end;

procedure TForm1.doquadChange(Sender: TObject);
begin
filtercom;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
if Length(Edit5.Text)>6 then
begin
  FDQuery6.SQL.Clear;
  FDQuery6.SQL.Add('select * from maklers where phone like '+QuotedStr('%'+Edit5.Text+'%'));
  FDQuery6.Active:=true;
  if FDQuery6.RecordCount>0 then
  Label12.Visible:=true;
end
else
Label12.Visible:=false;


if Length(edit5.Text)>6 then
begin
  form7.Memo1.Clear;
  FDQuery13.SQL.Clear;
  FDQuery13.SQL.Add('select * from apparts where phone = '+QuotedStr(ComboBox5.Text+edit5.Text));
  FDQuery13.Active:=true;
  if FDQuery13.RecordCount>0 then
  begin
   Label77.Visible:=true;
   Button10.Visible:=true;
   FDQuery13.First;
      form7.Memo1.Lines.Add(FDQuery13.FieldByName('district').AsString);
      form7.Memo1.Lines.Add(FDQuery13.FieldByName('sector').AsString);
         form7.Memo1.Lines.Add(FDQuery13.FieldByName('street').AsString+' Улица');
            form7.Memo1.Lines.Add(FDQuery13.FieldByName('author').AsString+' Автор');
               form7.Memo1.Lines.Add(FDQuery13.FieldByName('phone').AsString+' телефон');
                  form7.Memo1.Lines.Add(FDQuery13.FieldByName('price').AsString+' Цена');
                     form7.Memo1.Lines.Add(FDQuery13.FieldByName('rooms').AsString+' Комант');
                     form7.Memo1.Lines.Add(' ');
  end;
  FDQuery14.SQL.Clear;
  FDQuery14.SQL.Add('select * from apparts_rent where phone = '+QuotedStr(ComboBox5.Text+edit5.Text));
  FDQuery14.Active:=true;
  if FDQuery14.RecordCount>0 then
  begin
   Label77.Visible:=true;
   Button10.Visible:=true;
      FDQuery14.First;
   form7.Memo1.Lines.Add(FDQuery14.FieldByName('district').AsString);
      form7.Memo1.Lines.Add(FDQuery14.FieldByName('sector').AsString);
         form7.Memo1.Lines.Add(FDQuery14.FieldByName('street').AsString+' улица');
            form7.Memo1.Lines.Add(FDQuery14.FieldByName('author').AsString+' Автор');
               form7.Memo1.Lines.Add(FDQuery14.FieldByName('phone').AsString+' телефон');
                  form7.Memo1.Lines.Add(FDQuery14.FieldByName('price').AsString+' цена');
                     form7.Memo1.Lines.Add(FDQuery14.FieldByName('rooms').AsString+' Комнаты');

  end;
end
else
begin
Label77.Visible:=false;
Button10.Visible:=false;
end;


end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
filter;
end;

procedure TForm1.Edit9Change(Sender: TObject);
begin
filter;
end;

procedure TForm1.filter;
begin
FDQuery5.SQL.Clear;

  if RadioGroup1.ItemIndex=0 then
  FDQuery5.SQL.Add('select * from apparts where ')
  else
  FDQuery5.SQL.Add('select * from apparts_rent where ');


FDQuery5.sql.add('(price>'+minpriceedit.Text+')');
  FDQuery5.sql.add('and (price<'+maxpriceedit.Text+')');
FDQuery5.sql.add('and (date>=:otdate)');
FDQuery5.sql.add('and (date<=:dodate)');
FDQuery5.ParamByName('otdate').AsDate:=otappdate.Date;
FDQuery5.ParamByName('dodate').AsDate:=doappdate.Date;
if roomedit.Text<>'' then
begin
  FDQuery5.SQL.add('and (rooms='+roomedit.Text+')');
end;

if flooredit.Text<>'' then
begin
  FDQuery5.sql.add('and (floor='+flooredit.Text+')');
end;

if floringedit.Text<>'' then
begin
  FDQuery5.sql.add('and (floring='+floringedit.Text+')');
end;

if ComboBox3.text <> 'Любой' then
begin
  FDQuery5.SQL.add('and (remont='+quotedstr(ComboBox3.text)+')');
end;


  if TreeView1.Selected.Level=0 then
  begin
    FDQuery5.sql.add('and (district='+QuotedStr(TreeView1.Selected.Text)+')')
  end
  else
  begin
    FDQuery5.sql.add('and (sector='+QuotedStr(TreeView1.Selected.Text)+')')
  end;
  if Edit9.Text<>'' then
  begin
   FDQuery5.sql.add('and (street like '+QuotedStr('%'+edit9.text+'%')+')')
  end;
  if Edit6.Text<>'' then
  begin
   FDQuery5.sql.add('and (phone like '+QuotedStr('%'+edit6.text+'%')+')')
  end;

 FDQuery5.Active:=true;


end;

procedure TForm1.filtercom;
begin
FDQuery12.SQL.Clear;
  if RadioGroup6.ItemIndex=0 then
  FDQuery12.SQL.Add('select * from com where ')
  else
  FDQuery12.SQL.Add('select * from com_rent where ');

  FDQuery12.sql.add(' (price>='+minpricecom.Text+')');
  FDQuery12.sql.add('and (price<='+maxpricecom.Text+')');

if otquad.Text<>'' then
begin
  FDQuery12.SQL.add('and (quad>='+ otquad.Text+')');
end;

if doquad.Text<>'' then
begin
  FDQuery12.sql.add('and (quad<='+doquad.text+')');
end;
  FDQuery12.SQL.add('and (type='+quotedstr(typecombo.text)+')');


  if TreeView3.Selected.Level=0 then
  begin
    FDQuery12.sql.add('and (district='+QuotedStr(TreeView3.Selected.Text)+')')
  end
  else
  begin
    FDQuery12.sql.add('and (sector='+QuotedStr(TreeView3.Selected.Text)+')')
  end;

  if comstreet.Text<>'' then
  begin
   FDQuery12.sql.add('and (street like '+QuotedStr('%'+comstreet.text+'%')+')')
  end;
  if comphone.Text<>'' then
  begin
   FDQuery12.sql.add('and (phone like '+QuotedStr('%'+comphone.text+'%')+')')
  end;
  FDQuery12.sql.add('and (date>=:otdate)');
  FDQuery12.sql.add('and (date<=:dodate)');
  FDQuery12.ParamByName('otdate').AsDate:=otcomdate.Date;
  FDQuery12.ParamByName('dodate').AsDate:=docomdate.Date;
  FDQuery12.Active:=true;

end;


procedure TForm1.filterhouse;
begin
FDQuery10.SQL.Clear;
  if RadioGroup4.ItemIndex=0 then
  FDQuery10.SQL.Add('select * from house where ')
  else
  FDQuery10.SQL.Add('select * from house_rent where ');

  FDQuery10.sql.add(' (price>'+minpricehome.Text+')');
  FDQuery10.sql.add('and (price<'+maxpricehome.Text+')');

if roomsedithouse.Text<>'' then
begin
  FDQuery10.SQL.add('and (rooms='+roomsedithouse.Text+')');
end;

if flooredithouse.Text<>'' then
begin
  FDQuery10.sql.add('and (floor='+flooredithouse.Text+')');
end;

if sotkiedithouse.Text<>'' then
begin
  FDQuery10.sql.add('and (sotki='+sotkiedithouse.Text+')');
end;

if sanhomeedit.Text<>'' then
begin
  FDQuery10.sql.add('and (san='+sanhomeedit.Text+')');
end;

if remonthomcombo.Text <> 'Любой' then
begin
  FDQuery10.SQL.add('and (remont='+quotedstr(remonthomcombo.text)+')');
end;


  if TreeView2.Selected.Level=0 then
  begin
    FDQuery10.sql.add('and (district='+QuotedStr(TreeView2.Selected.Text)+')')
  end
  else
  begin
    FDQuery10.sql.add('and (sector='+QuotedStr(TreeView2.Selected.Text)+')')
  end;
  if streethomeedit.Text<>'' then
  begin
   FDQuery10.sql.add('and (street like '+QuotedStr('%'+streethomeedit.text+'%')+')')
  end;
  if phonehomeedit.Text<>'' then
  begin
   FDQuery10.sql.add('and (phone like '+QuotedStr('%'+phonehomeedit.text+'%')+')')
  end;
  FDQuery10.sql.add('and (date>=:otdate)');
  FDQuery10.sql.add('and (date<=:dodate)');
  FDQuery10.ParamByName('otdate').AsDate:=othousedate.Date;
  FDQuery10.ParamByName('dodate').AsDate:=dohousedate.Date;
  FDQuery10.Active:=true;
end;

procedure TForm1.flooreditChange(Sender: TObject);
begin
filter;
end;

procedure TForm1.flooredithouseChange(Sender: TObject);
begin

filterhouse;
end;

procedure TForm1.floringeditChange(Sender: TObject);
begin
filter;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  Ini: Tinifile;
  i:integer;
begin
 Ini:=TiniFile.Create(extractfilepath(paramstr(0))+'settings.ini');
 FDConnection1.Params.Clear;
 FDConnection1.Params.Add('Port='+Ini.ReadString('settings','port','10'));
 FDConnection1.Params.Add('Server='+Ini.ReadString('settings','host','10'));
 FDConnection1.Params.Add('DriverID=MySQL');
FDConnection1.Params.Add('CharacterSet=utf8mb4');
FDConnection1.Params.Add('User_Name=myhomeroot');
FDConnection1.Params.Add('Password=2984591');
FDConnection1.Params.Add('database=myhome');
 FDConnection1.Connected:=true;
 FDTable1.Active:=true;
 FDTable2.Active:=true;
 FDTable3.Active:=true;
 FDQuery5.Active:=true;
 FDQuery1.Active:=true;
 DateTimePicker1.Date:=Date;
 docomdate.Date:=date;
 doappdate.Date:=date;
 DateTimePicker4.Date:=date;
 dohousedate.Date:=date;
loaddistrict;



otchet;

photo1:='C:\no_photo.jpg';
photo2:='C:\no_photo.jpg';
photo3:='C:\no_photo.jpg';
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute  then
  begin
   Image10.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   photo3:=OpenPictureDialog1.FileName;
  end;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute  then
  begin
   Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   photo1:=OpenPictureDialog1.FileName;
  end;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute  then
  begin
   Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   photo2:=OpenPictureDialog1.FileName;
  end;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute  then
  begin
   Image3.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   photo3:=OpenPictureDialog1.FileName;
  end;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute  then
  begin
   Image4.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   photo3:=OpenPictureDialog1.FileName;
  end;
end;


procedure TForm1.Image5Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute  then
  begin
   Image5.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   photo2:=OpenPictureDialog1.FileName;
  end;
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute  then
  begin
   Image6.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   photo1:=OpenPictureDialog1.FileName;
  end;
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute  then
  begin
   Image8.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   photo1:=OpenPictureDialog1.FileName;
  end;
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute  then
  begin
   Image9.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   photo2:=OpenPictureDialog1.FileName;
  end;
end;

procedure TForm1.loaddistrict;
var
i,c,b:integer;
begin
b:=0;
TreeView1.Items.Clear;
TreeView2.Items.Clear;
TreeView3.Items.Clear;
FDQuery3.SQL.Clear;
FDQuery3.SQL.Add('select * from district');
FDQuery3.Active:=true;
FDQuery3.First;
for I := 0 to FDQuery3.RecordCount-1 do
begin
TreeView1.Items.Add(nil,FDQuery3.FieldByName('name').AsString);
TreeView2.Items.Add(nil,FDQuery3.FieldByName('name').AsString);
TreeView3.Items.Add(nil,FDQuery3.FieldByName('name').AsString);
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add('select * from sectors where district='+QuotedStr(FDQuery3.FieldByName('name').AsString));
FDQuery4.Active:=true;
FDQuery4.First;
for c := 0 to FDQuery4.RecordCount-1 do
begin
TreeView1.Items.AddChild(TreeView1.Items.Item[b],FDQuery4.FieldByName('name').AsString);
TreeView2.Items.AddChild(TreeView2.Items.Item[b],FDQuery4.FieldByName('name').AsString);
TreeView3.Items.AddChild(TreeView3.Items.Item[b],FDQuery4.FieldByName('name').AsString);
FDQuery4.Next;
end;
b:=b+FDQuery4.RecordCount+1;
FDQuery3.next;
end;
TreeView1.Select(TreeView1.Items.Item[0]);
TreeView2.Select(TreeView2.Items.Item[0]);
TreeView3.Select(TreeView2.Items.Item[0]);
end;

procedure TForm1.maxpricecomChange(Sender: TObject);
begin
filtercom;
end;

procedure TForm1.maxpriceeditChange(Sender: TObject);
begin
filter;
end;

procedure TForm1.maxpricehomeChange(Sender: TObject);
begin

filterhouse;
end;

procedure TForm1.minpricecomChange(Sender: TObject);
begin
filtercom;
end;

procedure TForm1.minpriceeditChange(Sender: TObject);
begin
filter;
end;

procedure TForm1.minpricehomeChange(Sender: TObject);
begin

filterhouse;
end;

procedure TForm1.otchet;
var
table:string;
i:integer;
begin
FDQuery11.SQL.Clear;
case ComboBox8.ItemIndex of
0:table:='apparts';
1:table:='apparts_rent';
2:table:='house';
3:table:='house_rent';
4:table:='com';
5:table:='com_rent';
end;
FDQuery11.SQL.Add('select date, price, author, phone from '+table+' where author like '+quotedstr('%'+ComboBox10.Text+'%'));

if not CheckBox1.Checked then
begin
fdquery11.SQL.Add(' and date=:date');
FDQuery11.ParamByName('date').AsDate:=DateTimePicker4.Date;
end;
FDQuery11.Active:=true;
Label69.Caption:='Пользователь '+ComboBox10.Text+', добавил '+IntToStr(FDQuery11.RecordCount)+' записей, в раздел '+ComboBox8.Text+', В '+DateToStr(DateTimePicker4.Date)+' ';
end;

procedure TForm1.otcomdateChange(Sender: TObject);
begin
filtercom;
end;

procedure TForm1.othousedateChange(Sender: TObject);
begin

filterhouse;
end;

procedure TForm1.otquadChange(Sender: TObject);
begin
filtercom;
end;

procedure TForm1.phonehomeeditChange(Sender: TObject);
begin

filterhouse;
end;

procedure TForm1.preotchet;
var
i:integer;
begin
ComboBox10.Items.Clear;
if privs<2 then
begin
  ComboBox10.items.Add(userpro);
end
else
begin
FDQuery11.SQL.Clear;
FDQuery11.SQL.Add('select * from users');
FDQuery11.Active:=True;

ComboBox10.Items.Add('');
FDQuery11.First;
for i:=0 to FDQuery11.RecordCount do
begin
  ComboBox10.Items.Add(FDQuery11.FieldByName('login').AsString);
  FDQuery11.Next;
end;

end;
ComboBox10.ItemIndex:=0;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
filter;
end;

procedure TForm1.RadioGroup4Click(Sender: TObject);
begin
filterhouse;
end;

procedure TForm1.RadioGroup6Click(Sender: TObject);
begin
filtercom;
end;

procedure TForm1.remonthomcomboChange(Sender: TObject);
begin

filterhouse;
end;

procedure TForm1.roomeditChange(Sender: TObject);
begin
filter;
end;

procedure TForm1.roomsedithouseChange(Sender: TObject);
begin

filterhouse;
end;

procedure TForm1.sanhomeeditChange(Sender: TObject);
begin

filterhouse;
end;

procedure TForm1.sotkiedithouseChange(Sender: TObject);
begin

filterhouse;
end;

procedure TForm1.streethomeeditChange(Sender: TObject);
begin

filterhouse;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
minpriceedit.Text:=IntToStr(TrackBar1.Position*10000);
filter;
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
maxpriceedit.Text:=IntToStr(TrackBar2.Position*10000);
filter;
end;

procedure TForm1.TrackBar3Change(Sender: TObject);
begin
minpricehome.Text:=IntToStr(TrackBar3.Position*100000);
filterhouse;
end;

procedure TForm1.TrackBar4Change(Sender: TObject);
begin
maxpricehome.Text:=IntToStr(TrackBar4.Position*100000);
filterhouse;
end;

procedure TForm1.TrackBar5Change(Sender: TObject);
begin
minpricecom.Text:=IntToStr(TrackBar5.Position*100000);
filtercom;
end;

procedure TForm1.TrackBar6Change(Sender: TObject);
begin
maxpricecom.Text:=IntToStr(TrackBar6.Position*100000);
filtercom;
end;

procedure TForm1.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
filter;
end;

procedure TForm1.TreeView2Change(Sender: TObject; Node: TTreeNode);
begin
filterhouse;
end;

procedure TForm1.TreeView3Change(Sender: TObject; Node: TTreeNode);
begin
filtercom;
end;

procedure TForm1.typecomboChange(Sender: TObject);
begin
filtercom;
end;

end.
