pageextension 123456701 "CSD ResourceListExt" extends "Resource List"
//CSD 1.00 2018-06-28 MJJ
{
    layout
    {
        modify(type)
        {
            Visible = Showtype;
        }
        addafter(type)
        {
            field("CSD Ressource Type";"CSD Ressource Type")
            {
                
            }
            field("CSD Maximum Participants";"CSD Maximum Participants")
            {
                Visible = ShowMaxField;    
            }
        }
        
    }

    trigger OnOpenPage();
    
    begin
        FilterGroup(3);
        Showtype := (GetFilter(Type)='');
        ShowMaxField := (GetFilter(Type) =
        format(type::Machine));
        FilterGroup(0);
    end;

    var
        [InDataSet]
        ShowMaxField:Boolean;
        [InDataSet]
        Showtype:Boolean;
}