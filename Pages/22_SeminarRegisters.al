page 123456722 "CSD Seminar Register"
{
    Caption = 'Seminar Register';
    PageType = List;
    SourceTable = "CSD Seminar Register";
    Editable = false;
    
    var
        SeminarReghowLedger:Codeunit "CSD Seminar Reg.- Show Ledger";
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                    Caption='No.';
                    
                }
                field("Creation Date";"Creation Date")
                {
                    Caption='Creation Date';
                    
                }
                field("User ID";"User ID")
                {
                    Caption='User ID';
                    
                }
                field("Journal Batch Name";"Journal Batch Name")
                {
                    Caption='Journal Batch Name';
                    
                }
            }
        }
        area(factboxes)
        {
        }
    }

    actions
    {
        area(Navigation)
        {
            action(ActionName)
            { 
                trigger OnAction();
                begin
                    
                end;
            }
            action("Seminar Ledgers")
            { 
                image = Warrantyledger;
                trigger OnAction();
                begin
                    
                end;
            }
        }
    }
}