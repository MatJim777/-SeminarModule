table 123456700 "CSD Seminar Setup"
//CSD 1.00 20180628 MJJ
{
    Caption = 'Seminar Setup';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10;"Primaery Key";Code[10])
        {   
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }
        field(20;"Seminar Nos.";Code[20])
        {
            Caption = 'Seminar Nos.';
            TableRelation = "No. Series";
            DataClassification = ToBeClassified;
        }
        field(30;"Seminar Registration Nos.";Code[20])
        {
            Caption = 'Seminar Registration Nos.';
            TableRelation = "No. Series";
            DataClassification = ToBeClassified;
        }
        field(40;"Posted Seminar Reg. Nos.";Code[20])
        {
            Caption = 'Posted Seminar Reg. Nos.';
            TableRelation = "No. Series";
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK;"Primaery Key")
        {
            Clustered = true;
        }
    }

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