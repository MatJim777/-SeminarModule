table 132456704 "CSD Seminar Comment Line"
//CSD1.00 20180628 MJJ
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Table Name"; Option)
        {
            OptionMembers = "Seminar", "Seminar Registration Header", "Posted Seminar Reg. Header";
            OptionCaption = 'Seminar", Seminar Registration Header, Posted Seminar Reg. Header';
            DataClassification = ToBeClassified;
        }
        field(20; "Document Line No."; Integer)
        {

        }
        field(30; "No."; Code[20])
        {
            TableRelation = if("Table Name" = const("Seminar"))"CSD Seminar";       
        }
        field(40;"Line No.";Integer){
            
        }
        field(50;"Date";Date){

        }
        field(60;"Code";Code[10]){

        }
        field(70;"Comment";text[80]){

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