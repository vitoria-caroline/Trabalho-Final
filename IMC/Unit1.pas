unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
peso, altura, imc: real;
begin
altura:=StrToFloat(Edit1.Text);
peso:=StrToFloat (Edit2.Text);
imc:= peso/(altura * altura);
      if imc < 18.5 then
   Edit3.Text:=('Magreza');
   Edit4.Text:=FloatToStr(imc);
      if (imc >= 18.5) and (imc <= 24.9) then
   Edit3.Text:=('Saud�vel (Indicado)');
   Edit4.Text:=FloatToStr(imc);
      if (imc >= 25.0) and (imc <= 29.9 ) then
   Edit3.Text:=('Sobrepeso');
   Edit4.Text:=FloatToStr(imc);
      if (imc >= 30.0) and (imc <= 34.9) then
   Edit3.Text:=('Obesidade Grau I (Leve)');
   Edit4.Text:=FloatToStr(imc);
      if (imc >= 35.0) and (imc <= 39.9) then
   Edit3.Text:=('Obesidade Grau II (Severa)');
   Edit4.Text:=FloatToStr(imc);
      if (imc >= 40.0) and (imc <= 49.9) then
   Edit3.Text:=('Obesidade Grau III (M�rbida)');
   Edit4.Text:=FloatToStr(imc);
      if (imc >= 50.0) and (imc <= 59.9) then
   Edit3.Text:=('Super Obeso');
   Edit4.Text:=FloatToStr(imc);
      if (imc >= 60.0 ) then
   Edit3.Text:=('Hiper Obeso');
   Edit4.Text:=FloatToStr(imc);









end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
end;

end.
