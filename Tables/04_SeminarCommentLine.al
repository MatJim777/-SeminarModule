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
            TableRelation = if("Table Name" = const ("Seminar")) "CSD Seminar";
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
        key(PK; "Table Name")
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

}