page 50141 "Copy Items to Order Planning"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Copy Items to Order Planning';

    actions
    {
        area(Processing)
        {
            action(CopyItems)
            {
                ApplicationArea = All;
                Caption = 'Copy Items';

                trigger OnAction()
                var
                    ItemRec: Record Item;
                    OrderPlanningRec: Record "TableOrderPlaning";
                begin
                    ItemRec.Reset();
                    if ItemRec.FindSet() then
                        repeat
                            if not OrderPlanningRec.Get(ItemRec."No.") then begin
                                OrderPlanningRec.Init();
                                OrderPlanningRec."Item" := ItemRec."No.";
                                OrderPlanningRec."Qty On Hand" := ItemRec."Inventory";
                                OrderPlanningRec."Qty On Order" := 0; // Inicializa con 0 o el valor que desees
                                OrderPlanningRec."90 Day Sales" := 0; // Inicializa con 0 o el valor que desees
                                OrderPlanningRec.Insert();
                            end;
                        until ItemRec.Next() = 0;
                end;
            }
        }
    }
}