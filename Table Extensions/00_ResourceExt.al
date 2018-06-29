tableextension 123456700 "CSD ResourceExt" extends Resource
//CSD 1.00 2018-06-28
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();
            begin
                Rec.TestField("Unit Cost");    
            end;
        }
        field(123456700;"CSD Ressource Type";Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal", "Eksternal";
            OptionCaption = 'Internal, Eksternal';
        }
        field(123456702;"CSD Maximum Participants";Integer)
        {
            Caption = 'Maximum Participants';

        }
        field(123456703;"CSD Quantity Per Day";Decimal)
        {
            Caption = 'Qunatity Per Day';
        }
    }
    
}