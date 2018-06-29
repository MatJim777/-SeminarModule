page 123456702 "CSD Seminiar List"
{
    Caption = 'Seminar List';
    PageType = List;
    SourceTable = "CSD Seminar";
    Editable = false;
    CardPageId = 123456701;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {

                }
                field(Name; Name)
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }
                field("Seminar Price"; "Seminar Price")
                {

                }
                field("Minimum Participants"; "Minimum Participants")
                {

                }
                field("Maximum Participants"; "Maximum Participants")
                {

                }
            }
        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {

            }
            systempart("Notes"; Notes)
            {

            }

        }
    }

    actions
    {
        area(processing)
        {
            action("CSD Seminar Comment Sheet")
            {
                trigger OnAction();
                begin
                end;
            }
            action("Co&mment")
            {
                //RunObject = page "Seminar Comment Sheet";
                //RunPageLink = "Table Name" = const(seminar, "No." =field("No."));
                Image = Comment;
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;
            }
        }

    }
}