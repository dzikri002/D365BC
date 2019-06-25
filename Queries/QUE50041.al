query 50041 QPAForTradeMasterItem
{

    elements
    {
        dataitem(Prognosis_Allocation_Entry; "Prognosis/Allocation Entry")
        {
            column(Month_Posting_Date; "Sales Date")
            {
                Method = Month;
            }
            column(Year_Posting_Date; "Sales Date")
            {
                Method = Year;
            }
            column(Item_No; "Item No.")
            {
            }
            column(Prognoses; Prognoses)
            {
                Method = Sum;
                ReverseSign = true;
            }
            column(Allocated; Allocated)
            {
                Method = Sum;
            }
            dataitem(Item; Item)
            {
                DataItemLink = "No." = Prognosis_Allocation_Entry."Item No.";
                column(Item_Description; Description)
                {
                }
                column(Base_Unit_of_Measure; "Base Unit of Measure")
                {
                }
                column(Description_2; "Description 2")
                {
                }
                column(Description_3; "B Description 3")
                {
                }
                column(Organic; "B Organic")
                {
                }
                column(Inventory; Inventory)
                {
                }
                column(Open_PO_Qty; "Qty. on Purch. Order")
                {
                }
                dataitem(Varieties; Varieties)
                {
                    DataItemLink = "No." = Item."B Variety";
                    column(Variety_No; "No.")
                    {
                    }
                    column(Variety_Description; Description)
                    {
                    }
                    dataitem(Crops; Crops)
                    {
                        DataItemLink = "Crop Code" = Item."B Crop";
                        column(Crop_Code; "Crop Code")
                        {
                        }
                        column(Crop_Description; Description)
                        {
                        }
                    }
                }
            }
        }
    }
}

