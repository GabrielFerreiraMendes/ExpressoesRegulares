unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.RegularExpressions, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMainForm = class(TForm)
    Panel1: TPanel;
    edtCPF: TEdit;
    btnValidar: TSpeedButton;
    procedure btnValidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.btnValidarClick(Sender: TObject);
var
  { Variável para que eu só precise "codificar"/chamar o método showmessage uma vez no fonte. }
  vFormatacaoCPFValida: String;
begin
  { Seto mensagem default a ser exibida ao clicar no botão }
  vFormatacaoCPFValida := 'Formatação de CPF inválida!';

  { Valido se a formatação da informação está correta com a expressão regular abaixo }
  if TRegEx.IsMatch(edtCPF.Text, '^(([0-9]{3}[.][0-9]{3}[.][0-9]{3}[-][0-9]{2})|([0-9]{11}))$') then
   begin
    { Caso a formação seja válida, altero a mensagem a ser exibida
      para informar que o CPF está formatado corretamente }
    vFormatacaoCPFValida :=  'Formatação de CPF válida!';
   end;

   { Exibe ao usuário se a formação é válida ou inválida. }
  ShowMessage(vFormatacaoCPFValida);
end;

end.
