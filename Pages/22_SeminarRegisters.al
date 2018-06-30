page 123456722 "CSD Seminar Register"
// CSD1.00 - 20180629 -MJJ
// Chapter 7 - Lab 2-11
{
    Caption = 'Seminar Register';
    PageType = List;
    SourceTable = "CSD Seminar Register";
    Editable = false;
    
   
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
            Systempart(Link;Links){

            }
            systempart(Notes;Notes){

            }
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
                RunObject = codeunit "CSD Seminar Reg.- Show Ledger";
                trigger OnAction();
                begin
                    
                end;
            }
        }
    }
     var
        SeminarReghowLedger : Codeunit "CSD Seminar Reg.- Show Ledger";
}