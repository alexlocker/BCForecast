page 50140 basePage01
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = TableBase01;
    CaptionML = ENU = 'Base Page 01', ESP = 'Pagina Base 01';

    layout
    {
        area(Content)
        {
            repeater(ItemPrincipal)
            {
                field(Item; Rec.Item)
                {

                }
                field("PO Placed Amount"; Rec."poPlacedAmount")
                {

                }
                field("Qty On Hand"; Rec."qtyOnHand")
                {

                }
                field("Ideal On Hand"; Rec."idelaOnHand")
                {

                }
                field("Total Inv + PO"; Rec."totalInvAddPo")
                {

                }
                field("Day Sales"; Rec."90DaySales")
                {

                }
                field("Projected 90 Days"; Rec."projected90Days")
                {

                }
                field("Projected Weekly Sales"; Rec."projectedWeeklySsales")
                {

                }
                field("Qty In Pallets"; Rec."qtyInPallets")
                {

                }
                field("Time To Oder"; Rec."timeToOder")
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
