codeunit 123456731 "CSD Seminar Jnl.-Check Line"
{
    TableNo = "CSD Seminar Journal Line";
    trigger OnRun();
    begin
    end;
    
    var
       GlSetup : Record 
       "General Ledger Setup";
       UserSetup : Record 
       "User Setup";
       AllowPostingFrom : Date; 
       AllowPostingTo : Date;
       ClosingDateTxt : Label 'cannot be a closing date.';
       PostingDateTxt : label 'is not within your range of allowed posting dates.';

}