tableextension 123465703 ResourceLedgerEntryExt extends "Res. Ledger Entry"
// CSD1.00 - 2018-06-29 - MJJ
// Chapter 7 - Lab 4-1
{
    fields
    {
        field(123456700; "CSD Seminar No."; Code[20])
        {
            Caption = 'Seminar No.';
            TableRelation = "CSD Seminar";
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