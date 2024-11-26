page 50140 basePage01
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TableBase01";
    CaptionML = ENU = 'Base Page 01', ESP = 'Pagina Base 01';

    layout
    {
        area(Content)
        {
            repeater(ItemPrincipal)
            {
                field("Item"; Rec."Item")
                {

                }
                field("Qty On Hand"; Rec."Qty On Hand")
                {

                }
                field("Qty On Order"; Rec."Qty On Order")
                {

                }
                field("90 Day Sales"; Rec."90 Day Sales")
                {

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                trigger OnAction()
                begin

                end;
            }
        }
    }
}