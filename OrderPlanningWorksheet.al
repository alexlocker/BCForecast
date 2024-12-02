page 50189 "Order Planning Worksheet Tres"
{
    PageType = Worksheet;
    ApplicationArea = All;
    UsageCategory = Tasks;
    SourceTable = "TableOrderPlaning";
    CaptionML = ENU = 'Order Planning Worksheet', ESP = 'Hoja de Trabajo de Planificación de Órdenes';

    layout
    {
        area(Content)
        {
            group("Filters")
            {
                Caption = 'Filters';

                field("Item Filter"; Rec."Item Filter")
                {
                    ApplicationArea = All;
                    ToolTip = 'Filtra los artículos que deseas mostrar.';
                }

                field("Location Filter"; Rec."Location Filter")
                {
                    ApplicationArea = All;
                    ToolTip = 'Filtra por ubicación los resultados de la planificación de órdenes.';
                }

                field("Date Filter"; Rec."Date Filter")
                {
                    ApplicationArea = All;
                    ToolTip = 'Filtra las entradas según la fecha.';
                }

                // action(ApplyFilters)
                // {
                //     Caption = 'Apply Filters';
                //     ApplicationArea = All;

                //     trigger OnAction()
                //     begin
                //         CurrPage.ResultsPart.PAGE.SetFilters(Rec);
                //     end;
                // }
            }

            part(ResultsPart; "Order Planing")
            {
                ApplicationArea = All;
                SubPageLink = "Item Filter" = FIELD("Item Filter"),
                              "Location Filter" = FIELD("Location Filter"),
                              "Date Filter" = FIELD("Date Filter");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ClearFilters)
            {
                Caption = 'Clear Filters';
                ApplicationArea = All;
                ToolTip = 'Limpia los filtros aplicados para mostrar todos los resultados.';

                trigger OnAction()
                begin
                    Clear(Rec."Item Filter");
                    Clear(Rec."Location Filter");
                    Clear(Rec."Date Filter");
                    //CurrPage.ResultsPart.PAGE.SetFilters(Rec); // Refresca el Part con filtros vacíos
                end;
            }
        }
    }
}
