unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes,Unit3,Unit4,Unit5,Unit6, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,crt,
  Grids, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
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
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private

  public

  end;

var
  Form1: TForm1;
  colA,rowA,colB,rowB,colC,rowC,i,j,l,s,c,k,n: integer;
  arrA,arrB,arrC:array[1..100,1..100] of integer;
  A,B:boolean;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin

      if(rowA=rowB)and(colA=colB)and(A=true)or(B=true)
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
            end
      else
      begin
      Form3.Show;
      end;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
      if(A=true)or(B=true)
      then
      begin
 StringGrid3.RowCount:=colB;
     StringGrid3.ColCount:=rowB;
     for i:=2 to rowB do
         for j:=2 to colB do
             begin
              arrC[j,i]:=arrB[i,j];
              StringGrid3.Cells[i-1,j-1]:=Floattostr(arrC[j,i]);

             end;

 end;

end;


procedure TForm1.Button6Click(Sender: TObject);
begin
      if(A=true)or(B=true)
      then
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

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
    for i:=2 to rowA do
         for j:=2 to colA do
             begin
               arrA[i,j]:=0;
              StringGrid1.Cells[j-1,i-1]:=' ';

             end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
    for i:=2 to rowB do
         for j:=2 to colB do
             begin
               arrB[i,j]:=0;
              StringGrid2.Cells[j-1,i-1]:=' ';

             end;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
       if(StringGrid1.ColCount=StringGrid2.RowCount)
then
begin
rowC:=StringGrid1.RowCount;
colC:=StringGrid2.ColCount;

StringGrid3.RowCount:=rowC;
     StringGrid3.ColCount:=colC;
for i:=2 to rowC do
begin
for j:=2 to colC do
begin
arrC[i,j]:=0;
for k:=1 to colC+1 do
begin
arrC[i,j]:=arrC[i,j]+(arrA[i,k]*arrB[k,j]);
end;
StringGrid3.Cells[j-1,i-1]:=Floattostr(arrC[i,j]);
end;

end;
end
else
begin
Form4.Show;
end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit5Change(Sender: TObject);
begin

end;

procedure TForm1.GroupBox1Click(Sender: TObject);
begin

end;

procedure TForm1.TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;


procedure TForm1.Button1Click(Sender: TObject);
begin

     val(edit2.Text,n,c);
     val(edit1.Text,n,s);
     if(c=0)and(s=0)
     then
     begin
     rowA:=StrToInt(edit2.Text);
     colA:=StrToInt(edit1.Text);
     rowA:=rowA+1;
     colA:=colA+1;
     StringGrid1.RowCount:=rowA;
     StringGrid1.ColCount:=colA;
     A:=true;
     randomize;
     for i:=1 to rowA do
         for j:=1 to colA do
             begin
             StringGrid1.Cells[j-1,i-1]:=' ';
             end;
     for i:=2 to rowA do
         for j:=2 to colA do
             begin
              arrA[i,j]:=(random(20)-10);
              StringGrid1.Cells[j-1,i-1]:=Floattostr(arrA[i,j]);
             end;
end
else
begin
Form2.Show;
end;

end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  StringGrid1.RowCount:=StringGrid3.RowCount;
  StringGrid1.ColCount:=StringGrid3.ColCount;
  rowA:=StringGrid3.RowCount;
  colA:=StringGrid3.ColCount;
  for i:=2 to StringGrid3.RowCount do
         for j:=2 to StringGrid3.ColCount do
             begin
              arrA[i,j]:=arrC[i,j];
              StringGrid1.Cells[j-1,i-1]:=Floattostr(arrA[i,j]);
             end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
   StringGrid2.RowCount:=StringGrid3.RowCount;
  StringGrid2.ColCount:=StringGrid3.ColCount;
  rowB:=StringGrid3.RowCount;
  colB:=StringGrid3.ColCount;
  for i:=2 to StringGrid3.RowCount do
         for j:=2 to StringGrid3.ColCount do
             begin
              arrB[i,j]:=arrC[i,j];
              StringGrid2.Cells[j-1,i-1]:=Floattostr(arrB[i,j]);
             end;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  val(edit5.Text,n,c);
  if(c=0)
      then
      begin
      l:=StrToInt(edit5.Text);
     StringGrid3.RowCount:=rowA;
     StringGrid3.ColCount:=colA;
     for i:=2 to rowA do
         for j:=2 to colA do
             begin
              arrC[i,j]:=arrA[i,j]*l;
              StringGrid3.Cells[j-1,i-1]:=Floattostr(arrC[i,j]);

             end;
            end
      else
      begin
      Form5.Show;
      end;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  val(edit6.Text,n,c);
  if(c=0)
      then
      begin
      l:=StrToInt(edit5.Text);
     StringGrid3.RowCount:=rowB;
     StringGrid3.ColCount:=colB;
     for i:=2 to rowB do
         for j:=2 to colB do
             begin
              arrC[i,j]:=arrB[i,j]*l;
              StringGrid3.Cells[j-1,i-1]:=Floattostr(arrC[i,j]);

             end;
            end
      else
      begin
      Form5.Show;
      end;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  StringGrid1.RowCount:=rowB;
  StringGrid1.ColCount:=colB;
  rowA:=rowB;
  colA:=colB;
  for i:=2 to rowB do
         for j:=2 to colB do
             begin
              arrA[i,j]:=arrB[i,j];
              StringGrid1.Cells[j-1,i-1]:=Floattostr(arrA[i,j]);
             end;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  StringGrid2.RowCount:=rowA;
  StringGrid2.ColCount:=colA;
  rowB:=rowA;
  colB:=colA;
  for i:=2 to rowA do
         for j:=2 to colA do
             begin
              arrB[i,j]:=arrA[i,j];
              StringGrid2.Cells[j-1,i-1]:=Floattostr(arrB[i,j]);
             end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    val(edit3.Text,n,c);
     val(edit4.Text,n,s);
     if(c=0)and(s=0)
     then
     begin
     rowB:=StrToInt(edit4.Text);
     colB:=StrToInt(edit3.Text);
     rowB:=rowB+1;
     colB:=colB+1;
     StringGrid2.RowCount:=rowB;
     StringGrid2.ColCount:=colB;
     B:=true;
     randomize;

     for i:=2 to rowB do
         for j:=2 to colB do
             begin
              arrB[i,j]:=(random(20)-10);
              StringGrid2.Cells[j-1,i-1]:=Floattostr(arrB[i,j]);

             end;


     end
     else
     begin
    Form2.Show;
     end;
end;

end.

