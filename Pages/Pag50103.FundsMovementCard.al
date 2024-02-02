page 50103 FundsMovementCard
{
    ApplicationArea = All;
    Caption = 'FundsMovementCard';
    PageType = Card;
    SourceTable = "Funds Movement";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("No. of Data"; Rec."No. of Data")
                {
                    ToolTip = 'Specifies the value of the No. of Data field.';
                    Caption = 'No. Series';
                    Editable = false;
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                    ToolTip = 'Specifies the value of the Transaction Type field.';
                }
                field("Member No"; Rec."Member No")
                {
                    ToolTip = 'Specifies the value of the Member No field.';
                }
                field("Transfer Type"; Rec."Transfer Type")
                {
                    ToolTip = 'Specifies the value of the Transfer Type field.';
                }
                field("Global Dimension 1"; Rec."Global Dimension 1")
                {
                    ToolTip = 'Specifies the value of the Global Dimension 1 field.';
                }
                field("Global Dimension 2"; Rec."Global Dimension 2")
                {
                    ToolTip = 'Specifies the value of the Global Dimension 2 field.';
                }
                field("Responsibility Centre"; Rec."Responsibility Centre")
                {
                    ToolTip = 'Specifies the value of the Responsibility Centre field.';
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
                field("Transaction Date"; Rec."Transaction Date")
                {
                    ToolTip = 'Specifies the value of the Transaction Date field.';
                }
                field("Transaction Time"; Rec."Transaction Time")
                {
                    ToolTip = 'Specifies the value of the Transaction Time field.';
                }
                field("Total Credits"; Rec."Total Credits")
                {
                    ToolTip = 'Specifies the value of the Total Credits field.';
                }
                field("Total Debits"; Rec."Total Debits")
                {
                    ToolTip = 'Specifies the value of the Total Debits field.';
                }
                field("Rejection Reason"; Rec."Rejection Reason")
                {
                    ToolTip = 'Specifies the value of the Rejection Reason field.';
                }
            }
        }
    }
}
