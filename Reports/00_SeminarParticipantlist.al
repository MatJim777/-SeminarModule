/* report id MyReport
{
    dataset
    {
        dataitem(DataItemName; SourceTableName)
        {
            column(ColumnName; SourceFieldName)
            {
            }
        }
    }
    
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    field(Name;SourceExpression)
                    {
                    }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                }
            }
        }
    }
    
    var
        myInt : Integer;
} */