codeunit 123456739 "CSD EventSubscriptions"
// CSD1.00 - 2018-06-29 MJJ
// Chapter 7 - Lab 4-4
{
    [EventSubscriber(ObjectType::Codeunit, 212, 'OnBeforeResLedgEntryInsert', '', true, true)]

    local procedure PostResJnlLineOnBeforeResLedgEntryInsert(var ResLedgerEntry: Record "Res. Ledger Entry";
    ResJournalLine: Record "Res. Journal Line");
    begin
        ResLedgerEntry."CSD Seminar No." := ResJournalLine."CSD Seminar No.";
         ResLedgerEntry."CSD Seminar Registration No." := ResJournalLine."CSD Seminar Registration No."; 
    end;
}