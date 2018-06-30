tableextension 123456704 ResJournalLineExt extends "Res. Journal Line"
{
    fields
    {
        field(123456700; "CSD Seminar No."; code[20])
        {
            Caption = 'Seminar No.';
            TableRelation ="CSD Seminar";
        }
        field(123456701; "CSD Seminar Registration No."; code[20])
        {
            Caption = 'Seminar Registration No.';
            TableRelation ="CSD Seminar Reg. Header";
        }

    }

    var
        myInt: Integer;
}