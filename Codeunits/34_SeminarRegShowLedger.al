codeunit 123456734 "CSD Seminar Reg.- Show Ledger"
// CSD1.00 - 20180629 - MJJ 
// Chapter 7 - Lab 2-10
{
    TableNo = "CSD Seminar Register";
    var
     SeminarLedgerEntry :Record "CSD Seminar Ledger Entry";

    trigger OnRun();
    begin
        SeminarLedgerEntry.SetRange("Entry No.", "From Entry No.");
        Page.Run(Page::"CSD Seminar Ledger Entries",SeminarLedgerEntry);
    end;
    
    
}