unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCalcular: TButton;
    edtValor1: TEdit;
    edtValor2: TEdit;
    saldomedio: TLabel;
    valor1: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnCalcularClick(Sender: TObject);
  var valorAte, nl, valorMais, valorMai, valorMa : double;
begin
  nl :=  StrToFloat(saldo.Text);
  valorAte := nl + (nl *0);
  valorMais := nl + (nl * 0.20);
  valorMai := nl + (nl*0.30);
  valorMa := nl + (nl*0.40);

      if StrToFloat(saldo.Text) < 200 then
          resultado.Text := valorAte.ToString
    else if (StrToFloat (saldo.Text)  > 200) and (StrToFloat (saldo.Text) < 400) then
          resultado.Text := valorMais.ToString
     else if (StrToFloat (saldo.Text)  > 401) and (StrToFloat (saldo.Text) < 600) then
         resultado.Text := valorMai.ToString
     else if StrToFloat (saldo.Text)  > 601  then
         resultado.Text := valorMa.ToString;
end;

end.

