query 50140 "basicoQuery01"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List', 'miListaFuncionarios';

    elements
    {
        dataitem("Item_Ledger_Entry"; "Item Ledger Entry") // de que tabla, origende los datos
        {
            column(Entry_No_; "Entry No.")
            {

            }
            column(Item_No_; "Item No.")
            {

            }
            column(Description; Description)
            {

            }
            column(Location_Code; "Location Code")
            {

            }
            column("Posting_Date1"; "Posting Date")
            {

            }
            column(Quantity; Quantity)
            {
                Method = Sum;
            }
            filter("Posting_Date"; "Posting Date")
            {

            }

        }
    }

}
// Cross Join: El conjunto de datos resultante contiene filas que combinan cada fila 
// de la tabla de elementos de datos superior con cada fila de una tabla 
// de elementos de datos inferior. Las uniones cruzadas también se denominan 
// productos cartesianos. Importante: la unión cruzada no requiere ninguna 
// comparación entre campos de elementos de datos, por lo que la propiedad 
// DataItemLink debe dejarse en blanco.
query 50141 "basicoQuery01 - Cross Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List', 'miListaFuncionarios';
    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                //DataItemLink = "Item No." = Item."No.";
                SqlJoinType = CrossJoin;
                column(Posting_Date; "Posting Date")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(ItemLedger_Description; Description)
                {

                }
            }
        }
    }

}
// Inner Join: El conjunto de datos resultante contiene registros de tablas de 
// elementos de datos en las que se encuentra una coincidencia entre 
// los campos vinculados por la propiedad DataItemLink del elemento de datos inferior.
query 50142 "basicoQuery01 - Inner Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List', 'miListaFuncionarios';
    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = InnerJoin;
                column(Posting_Date; "Posting Date")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(ItemLedger_Description; Description)
                {

                }
            }
        }
    }

}
// Lef Join: El conjunto de datos resultante contiene todos los registros 
// de la tabla de elementos de datos superior, incluso si un 
// registro no tiene un valor coincidente en el elemento de 
// datos inferior para los campos que están vinculados por 
// la propiedad DataItemLink (consulta).
query 50143 "basicoQuery01 - Lef Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List', 'miListaFuncionarios';
    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = LeftOuterJoin;
                column(Posting_Date; "Posting Date")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(ItemLedger_Description; Description)
                {

                }
            }
        }
    }

}
// Right Join: El conjunto de datos resultante contiene todos los registros 
// de la tabla de elementos de datos inferior, incluso si un registro 
// no tiene un valor coincidente en el elemento de datos superior 
// para los campos que están vinculados por la propiedad DataItemLink.
query 50144 "basicoQuery01 - Right Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List', 'miListaFuncionarios';
    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = RightOuterJoin;
                column(Posting_Date; "Posting Date")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(ItemLedger_Description; Description)
                {

                }
            }
        }
    }

}
// Full Join: El conjunto de datos resultante contiene todos los registros de la tabla 
// de elementos de datos superior y todos los registros del elemento de datos 
// inferior, incluidos los registros que no tienen un valor coincidente para 
// las columnas vinculadas por la propiedad DataItemLink.
query 50145 "basicoQuery01 - Full Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List', 'miListaFuncionarios';
    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = FullOuterJoin;
                column(Posting_Date; "Posting Date")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(ItemLedger_Description; Description)
                {

                }
            }
        }
    }

}