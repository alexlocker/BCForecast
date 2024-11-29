page 50140 "Order Planing"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TableOrderPlaning";
    CaptionML = ENU = 'Order Planing', ESP = 'Planificación de Órdenes';
    QueryCategory = 'Order Planing';

    layout
    {
        area(Content)
        {
            repeater(ItemPrincipal)
            {
                field("Item"; Rec."Item")
                {
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    var
                        ItemRec: Record Item;
                    begin
                        if ItemRec.Get(Rec."Item") then
                            PAGE.Run(PAGE::"Item Card", ItemRec);
                    end;
                }
                field("Qty Purchase Order"; Rec."Qty Purchase Order")
                {
                    ApplicationArea = All;
                    Editable = false; // FlowFields no son editables
                    Caption = 'Qty Purchase Order';
                }

                field("Qty On Hand"; Rec."Qty On Hand Flow")
                {
                    ApplicationArea = All;
                    Editable = false; // FlowFields no son editables
                    ToolTip = 'Cantidad actual en inventario, calculada automáticamente a partir de las entradas del libro de artículos.';
                    Caption = 'Inventory Quantity';
                }
                field("Qty Sales Order"; Rec."Qty Sales Order")
                {
                    ApplicationArea = All;
                    Editable = false; // FlowFields no son editables
                    ToolTip = 'Cantidad total de órdenes de venta pendientes para este artículo.';
                }

                field("Difference Qty (On Hand - Sales Order)"; Rec."Difference Qty (On Hand - Sales Order)")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Diferencia entre la cantidad en inventario y la cantidad de órdenes de venta pendientes.';
                    Caption = 'Difference Qty (Inventory - Sales Order)';
                }
                field("Qty On Order"; Rec."Qty On Order")
                {
                    ApplicationArea = All;
                }
                field("90 Day Sales"; Rec."90 Day Sales")
                {
                    ApplicationArea = All;
                }

            }
        }
        area(Factboxes)
        {
            // Opcional: Agrega factboxes si es necesario
        }
    }

    actions
    {
        area(Processing)
        {
            action("Open Item Card")
            {
                ApplicationArea = All;
                Caption = 'Open Item Card';

                trigger OnAction()
                var
                    ItemRec: Record Item;
                begin
                    if ItemRec.Get(Rec."Item") then
                        Page.RunModal(Page::"Item Card", ItemRec);
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Rec."Difference Qty (On Hand - Sales Order)" := Rec."Qty On Hand Flow" - Rec."Qty Sales Order";
    end;
}