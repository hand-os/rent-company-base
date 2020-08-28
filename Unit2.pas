unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm2 = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    state,vklad:integer;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
case vklad of
1:
  begin
  case state of
  2:form1.DBImage3Click(self);
  3:form1.DBImage1Click(self);
  1:form1.DBImage2Click(self);
  end
  end;
2:
  begin
  case state of
  2:form1.DBImage6Click(self);
  3:form1.DBImage4Click(self);
  1:form1.DBImage5Click(self);
  end;
  end;
3:
  begin
  case state of
  2:form1.DBImage9Click(self);
  3:form1.DBImage7Click(self);
  1:form1.DBImage8Click(self);
  end;
  end;
end;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
case vklad of
1:
  begin
  case state of
  2:form1.DBImage1Click(self);
  3:form1.DBImage2Click(self);
  1:form1.DBImage3Click(self);
  end
  end;
2:
  begin
  case state of
  2:form1.DBImage4Click(self);
  3:form1.DBImage5Click(self);
  1:form1.DBImage6Click(self);
  end;
  end;
3:
  begin
  case state of
  2:form1.DBImage7Click(self);
  3:form1.DBImage8Click(self);
  1:form1.DBImage9Click(self);
  end;
  end;
end;
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
if SaveDialog1.Execute then
Image1.Picture.SaveToFile(SaveDialog1.FileName);

end;

end.
