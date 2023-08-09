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
  { Vari�vel para que eu s� precise "codificar"/chamar o m�todo showmessage uma vez no fonte. }
  vFormatacaoCPFValida: String;
begin
  { Seto mensagem default a ser exibida ao clicar no bot�o }
  vFormatacaoCPFValida := 'Formata��o de CPF inv�lida!';

  { Valido se a formata��o da informa��o est� correta com a express�o regular abaixo }
  if TRegEx.IsMatch(edtCPF.Text, '^(([0-9]{3}[.][0-9]{3}[.][0-9]{3}[-][0-9]{2})|([0-9]{11}))$') then
   begin
    { Caso a forma��o seja v�lida, altero a mensagem a ser exibida
      para informar que o CPF est� formatado corretamente }
    vFormatacaoCPFValida :=  'Formata��o de CPF v�lida!';
   end;

   { Exibe ao usu�rio se a forma��o � v�lida ou inv�lida. }
  ShowMessage(vFormatacaoCPFValida);
end;

end.
