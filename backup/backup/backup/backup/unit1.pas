unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
  Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PageControl1: TPageControl;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  colA,rowA,colB,rowB,colC,rowC,i,j,l,s: integer;
  arrA,arrB,arrC:array[1..100,1..100] of integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
      if(rowA=rowB)and(colA=colB)
      then
      begin
     StringGrid3.RowCount:=rowA;
     StringGrid3.ColCount:=colA;
     for i:=2 to rowA do
         for j:=2 to colA do
             begin
              arrC[i,j]:=arrA[i,j]+arrB[i,j];
              StringGrid3.Cells[j-1,i-1]:=Floattostr(arrC[i,j]);

             end;
            end;

end;





procedure TForm1.Button6Click(Sender: TObject);
begin
     StringGrid3.RowCount:=colA;
     StringGrid3.ColCount:=rowA;
     for i:=2 to rowA do
         for j:=2 to colA do
             begin
              arrC[j,i]:=arrA[i,j];
              StringGrid3.Cells[i-1,j-1]:=Floattostr(arrC[j,i]);

             end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
    for i:=2 to rowA do
         for j:=2 to colA do
             begin

              StringGrid1.Cells[j-1,i-1]:=' ';

             end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
    for i:=2 to rowB do
         for j:=2 to colB do
             begin

              StringGrid2.Cells[j-1,i-1]:=' ';

             end;
end;

procedure TForm1.GroupBox1Click(Sender: TObject);
begin

end;


procedure TForm1.Button1Click(Sender: TObject);
begin
     rowA:=StrToInt(edit2.Text);
     colA:=StrToInt(edit1.Text);
     rowA:=rowA+1;
     colA:=colA+1;
     StringGrid1.RowCount:=rowA;
     StringGrid1.ColCount:=colA;

     randomize;

     for i:=2 to rowA do
         for j:=2 to colA do
             begin
              arrA[i,j]:=(random(2000)-1000);
              StringGrid1.Cells[j-1,i-1]:=Floattostr(arrA[i,j]);

             end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     rowB:=StrToInt(edit4.Text);
     colB:=StrToInt(edit3.Text);
     rowB:=rowB+1;
     colB:=colB+1;
     StringGrid2.RowCount:=rowB;
     StringGrid2.ColCount:=colB;

     randomize;

     for i:=2 to rowB do
         for j:=2 to colB do
             begin
              arrB[i,j]:=(random(2000)-1000);
              StringGrid2.Cells[j-1,i-1]:=Floattostr(arrB[i,j]);

             end;

end;

end.

