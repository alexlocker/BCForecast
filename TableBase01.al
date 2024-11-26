table 50140 "TableBase01"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Item"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Qty On Hand"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Qty On Order"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "90 Day Sales"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Item")
        {
            Clustered = true;
        }
    }
}