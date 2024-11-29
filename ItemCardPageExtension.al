pageextension 50149 "Item Card Page Extension" extends "Item Card"
{
    layout
    {
        addlast(Content)
        {
            group("New Fields Group")
            {
                Caption = 'Additional Information';

                field("status_used"; Rec."status_used")
                {
                    ApplicationArea = All;
                    Caption = 'Status Used';
                }
                field("quantity_palet"; Rec."quantity_palet")
                {
                    ApplicationArea = All;
                    Caption = 'Quantity Palet';
                }
            }
        }
    }
}