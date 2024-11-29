tableextension 50140 "Item Table Extension" extends Item
{
    fields
    {
        field(50100; "status_used"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50101; "quantity_palet"; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
}