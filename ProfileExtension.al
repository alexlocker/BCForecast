pageextension 50140 "Planning Order Profile" extends "Order Processor Role Center"
{
    actions
    {
        addlast(Navigation) // Añade la acción al grupo "Navigation"
        {
            action(PlanningOrder)
            {
                ApplicationArea = All;
                Caption = 'Planning Order';
                Image = PlanningLines; // Usa un icono válido predefinido
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;





            }
        }
    }
}