page 123456701 "CSD Seminar Card"
{
    PageType = Card;
    SourceTable = "CSD Seminar";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    AssistEdit = true;
                    trigger OnAssistEdit();
                    begin
                        if AssistEdit then
                            CurrPage.Update;
                    end;
                }
                field(Name; Name)
                {

                }
                field("Search Name"; "Search Name")
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }
                field("Minimum Participants"; "Minimum Paricipants")
                {

                }
                field("Maximum Participants"; "Maximum Participants")
                {

                }
                field(Blocked; Blocked)
                {

                }
                field("Last Date Modified"; "Last Date Modified")
                {

                }


            }
            group(Invoicing)
            {
                Caption = 'Invoicing';

                field("Gen.Prd. Posting Group"; "Gen.Prd. Posting Group")
                {

                }
                field("VAT. Prod. Posting Group"; "VAT. Prod. Posting Group")
                {

                }
                field("Seminar Price"; "Seminar Price")
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
        area(Navigation)
        {
            group("&Seminar"){ 
                action("Co&mment") {
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

}