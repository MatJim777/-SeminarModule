table 123456704 "CSD Seminar Comment Line"
//CSD1.00 20180628 MJJ
{
    Caption = 'Seminar Comment Line';
    DataClassification = ToBeClassified;
    LookupPageId = "CSD Seminar List";
    DrillDownPageId = "CSD Seminar List";

    fields
    {
        field(10; "Table Name"; Option)
        {
            OptionMembers = "Seminar", "Seminar Registration Header", "Posted Seminar Reg. Header";
            OptionCaption = 'Seminar", Seminar Registration Header, Posted Seminar Reg. Header';
        }
        field(20; "Document Line No."; Integer)
        {

        }
        field(30; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = if("Table Name" = const ("Seminar")) "CSD Seminar"
            else if ("Table Name"=const("Seminar Registration Header")) "CSD Seminar Reg. Header"

            else if("Table Name"=const("Posted Seminar Reg. Header")) "CSD Posted Seminar Reg. Header";
        }
        field(40; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(50; "Date"; Date)
        {
            Caption = 'Date';

        }
        field(60; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(70; "Comment"; text[80])
        {

        }
    }

    keys
    {
        key(PK; "Table Name", "Document Line No.", "No.","Line No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

    procedure SetupNewLine();
    var
        SeminarCommentLine: Record "CSD Seminar Comment Line";
    begin
        SeminarCommentLine.SetRange("Table Name", "Table Name");
        SeminarCommentLine.SetRange("No.","No.");
        SeminarCommentLine.SetRange("Document Line No.", "Document Line No.");
        SeminarCommentLine.SetRange(Date, WorkDate);
        if SeminarCommentLine.IsEmpty then
            Date := WorkDate;
    end;
}