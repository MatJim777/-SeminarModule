codeunit 123456731 "CSD Seminar Jnl.-Check Line"
// CSD1.00 - 2018-01-01 - D. E. Veloper 
// Chapter 7 - Lab 2-1
{
    TableNo = "CSD Seminar Journal Line";
    var
        GlSetup: Record
       "General Ledger Setup";
        UserSetup: Record
       "User Setup";
        AllowPostingFrom: Date;
        AllowPostingTo: Date;
        ClosingDateTxt: Label 'cannot be a closing date.';
        PostingDateTxt: label 'is not within your range of allowed posting dates.';
    
    trigger OnRun();
    begin
        RunCheck(Rec);
    end;

    

    procedure RunCheck(var SemJnLine: Record "CSD Seminar Journal Line");
    var
        myInt: Integer;
    begin
        with SemJnLine do
        begin
            if EmptyLine then
                exit;
            TestField("Posting Date");
            TestField("Room Resource No.");
            TestField("Seminar No.");
                case "Charge Type" of
                    "Charge Type"::Instructor :
                        testfield("Instructor Resource No.");
                    "Charge Type"::Room :
                        testfield("Room Resource No.");
                    "Charge Type"::Participant :
                        testfield("Participant Contact No.");
                end;
            if Chargeable then
                TestField("Bill-to Customer No.");
            if "Posting Date" = ClosingDate("Posting Date") then
                FieldError("Posting Date", ClosingDateTxt);

            if ("Posting Date" =0D) and ("Posting Date" = 0D) then
              if UserID <> '' then
                if UserSetup.get(UserId) then begin
                    AllowPostingFrom := UserSetup."Allow FA Posting From";
                    AllowPostingTo := UserSetup."Allow Posting To";
                end;

                if AllowPostingFrom = 0D then
                    AllowPostingTo := DMY2Date(31,12,9999);
                if ("Posting Date" < AllowPostingFrom) OR ("Posting Date" > AllowPostingTo) then
                    FieldError("Posting Date", PostingDateTxt);
                if ("Document Date" <> 0D) then
                  if ("Document Date" = CLOSINGDATE("Document Date")) then 
                      FIELDERROR("Document Date",PostingDateTxt); 
        end;
    end;
}