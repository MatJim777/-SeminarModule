pageextension 123456700 "CSD Resource Card Extension" extends "Resource Card"
//CSD1.00 2018-06-28

{
    layout
    {
        addlast(General)
        {
            field("CSD Ressource Type";"CSD Ressource Type")
            {

            }
            field("CSD Qunatity Per Day";"CSD Qunatity Per Day")
            {

            }
            
        }
        addafter("Personal Data")
        {
            group("Room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("CSD Maximum Participants";"CSD Maximum Participants")
                {
                            
                }
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnAfterGetRecord();
    begin
        ShowMaxField := (Type = type::Machine);
        CurrPage.Update(false);    
    end;
    var 
        [InDataSet]
        ShowMaxField: Boolean; 
        
}