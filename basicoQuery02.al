query 50146 "basicoQuery02 - Pedidos"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';
    //OrderBy = descending(Qty);
    //TopNumberOfRows = 100;

    // SetDataItemTableFilter = "Item"."Posting Date" >= '01/01/2024;
    // SetDataItemTableFilter = "Item"."Posting Date" <= '31/12/2024;

    elements
    {
        dataitem("Item"; "Item")
        {
            // DataItemTableView = SORTING("No.");

            column("No_"; "No.")
            {
                CaptionML = ENU = 'No.', ESP = 'No.';
            }
            column("Description"; "Description")
            {
                CaptionML = ENU = 'Item', ESP = 'Artículo';
            }

            //Cant. en pedidos venta
            column("Qty_on_Sales_Order"; "Qty. on Sales Order")
            {
                // Cant. en pedidos venta
                // Especifica cuántas unidades del artículo 
                // están asignadas a pedidos de venta, es decir, 
                // están incluidas en líneas de pedidos de venta pendientes
                CaptionML = ESP = 'Pedidos de venta', ENU = 'Sales Orders';
            }

            dataitem("Item_Ledger_Entry"; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                //SqlJoinType = InnerJoin;
                //DataItemTableView = SORTING("Location Code");
                column("Location_Code"; "Location Code")
                {
                    CaptionML = ESP = 'Ubicación', ENU = 'Location';
                }
                column("QuantityILE_Inventario"; "Quantity")
                {
                    CaptionML = ESP = 'Inventario Actual', ENU = 'Inventory Actual';
                    Method = Sum;
                }
                dataitem("Sales_Line"; "Sales Line")
                {
                    DataItemLink = "No." = Item_Ledger_Entry."Item No.";
                    //SqlJoinType = InnerJoin;
                    column("QuantitySL"; "Quantity")
                    {
                        CaptionML = ESP = 'Ventas anteriores', ENU = 'Previous Sales';
                        Method = Sum;
                    }
                }
            }
        }
    }
}