unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil,Forms, Controls, Graphics,
  Dialogs, Grids, StdCtrls, Buttons, ExtCtrls, Spin, ComboEx, EditBtn;

type
  PL = record
    NamePL:  string[50];
    Year:string[4];
    Leval:byte;
    Next:^PL;
  end;

  PPL=^PL;

  { TForm1 }

  TForm1 = class(TForm)
    Add: TButton;
    add_source: TButton;
    Button1: TButton;
    Edit: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Search: TButton;
    Save: TButton;
    Open: TButton;
    Sort: TButton;
    SearchRecord: TLabeledEdit;
    SpinEdit1: TSpinEdit;
    Up: TRadioButton;
    Down: TRadioButton;
    StringGrid1: TStringGrid;
    procedure AddClick(Sender: TObject);
    procedure add_sourceClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure EditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OpenClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure SearchClick(Sender: TObject);
    procedure SearchRecordChange(Sender: TObject);
    procedure SortClick(Sender: TObject);
private

  public

  end;

var
  HPL:PPL;
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.EditClick(Sender: TObject);
begin


end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i:integer;
begin
      HPL:=nil;
      Edit1.Visible:=False;
      Edit2.Visible:=False;
      SpinEdit1.Visible:=False;
      Label1.Visible:=False;
      Label2.Visible:=False;
      Label3.Visible:=False;
      Label4.Visible:=false;
      add_source.Visible:=false;
      Button1.Visible:=false;
      with StringGrid1 do
    begin
      Colcount := 4;
      Rowcount := 1;
      FixedRows := 1;
      FixedCols := 1;
      for i := 1 to 3 do
        case i of
          1: Cells[i, 0] := 'Название';
          2: Cells[i, 0] := 'Год создания';
          3: Cells[i, 0] := 'Сложность';
        end;
      ColWidths[0] := 50;
      ColWidths[1] := 150;
      ColWidths[2] := 100;
      ColWidths[3] := 75;
//      cicle := HPL;
      i := 1;
//      l := 1;
      {while cicle <> nil do
      begin
        rowcount := rowcount + 1;
        j := 0;
        Cells[j, i] := IntToStr(l);
        Inc(j);
        cells[j, i] := cicle^.Date;
        Inc(j);
        cells[j, i] := cicle^.Temperature;

        Inc(l);
        Inc(i);
        cicle := cicle^.Next;
      end; }
    end;
end;

procedure TForm1.OpenClick(Sender: TObject);
begin

end;

procedure TForm1.SaveClick(Sender: TObject);
begin

end;



procedure TForm1.SearchClick(Sender: TObject);
begin

end;

procedure TForm1.SearchRecordChange(Sender: TObject);
begin

end;



procedure TForm1.SortClick(Sender: TObject);
begin

end;



procedure TForm1.AddClick(Sender: TObject);
begin
    Form1.Height:= 145;
    Form1.Width:= 270;
    StringGrid1.Visible:= False;
    Sort.Visible:= False;
    Edit1.Visible:= True;
    Edit2.Visible:= True;

    add_source.Visible:= True;
    Label1.Visible:= True;
    Label2.Visible:= True;
    Label3.Visible:= True;
    SearchRecord.Visible:= False;
    Button1.Visible:=True;
    SpinEdit1.Visible:=True;

end;

procedure TForm1.add_sourceClick(Sender: TObject);


begin
    if ((Edit1.Text<> '')) and (strtoint(Edit2.Text) >1938 ) and (strtoint(Edit2.Text) < 2019 ) then
    begin
    StringGrid1.Visible:= True;
   Sort.Visible:=True;
   SearchRecord.Visible:= True;
   Form1.Height:= 380;
   Form1.Width:= 523;
   Edit1.Visible:=False;
   Edit2.Visible:=False;
   add_source.Visible:=False;
   SpinEdit1.Visible:=False ;
   Button1.Visible:=False;
   end

  else ShowMessage('Значения не верны,или пусты!');
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
   StringGrid1.Visible:= True;
   Sort.Visible:=True;
   SearchRecord.Visible:= True;
   Form1.Height:= 380;
   Form1.Width:= 523;
   Edit1.Visible:=False;
   Edit2.Visible:=False;
   add_source.Visible:=False;
   Button1.Visible:=False;
   SpinEdit1.Visible:=False;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;




end.

