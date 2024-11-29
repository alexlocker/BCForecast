table 50140 "TableOrderPlaning"
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
            ObsoleteState = Pending;
            ObsoleteReason = 'Reemplazado por FlowField "Qty On Hand Flow".';
        }
        field(3; "Qty On Order"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "90 Day Sales"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Qty On Hand Flow"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Quantity" WHERE("Item No." = FIELD("Item")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Qty Sales Order"; Decimal)
        {
            CalcFormula = Sum("Sales Line"."Quantity" WHERE("Document Type" = CONST(Order),
                                                            "No." = FIELD("Item")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Difference Qty (On Hand - Sales Order)"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(9; "Qty Purchase Order"; Decimal)
        {
            Caption = 'Qty Purchase Order';
            CalcFormula = Sum("Purchase Line"."Quantity" WHERE("Document Type" = CONST(Order),
                                                               "No." = FIELD("Item")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Item Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Location Filter"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(12; "DifferenceQty"; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false; // Esto lo hace no editable
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