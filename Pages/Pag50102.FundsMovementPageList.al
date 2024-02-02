page 50102 FundsMovementPageList
{
    ApplicationArea = All;
    CardPageId = FundsMovementCard;
    Caption = 'FundsMovementPageList';
    PageType = List;
    SourceTable = "Funds Movement";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No. of Data"; Rec."No. of Data")
                {
                    ToolTip = 'Specifies the value of the No. of Data field.';
                }
                field("Transaction Date"; Rec."Transaction Date")
                {
                    ToolTip = 'Specifies the value of the Transaction Date field.';
                }
                field("Transaction Time"; Rec."Transaction Time")
                {
                    ToolTip = 'Specifies the value of the Transaction Time field.';
                }
                field(Posted; Rec.Posted)
                {
                    ToolTip = 'Specifies the value of the Posted field.';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Created By"; Rec."Created By")
                {
                    ToolTip = 'Specifies the value of the Created By field.';
                }
            }
        }
    }
}
