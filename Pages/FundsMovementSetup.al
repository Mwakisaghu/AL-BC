page 50105 "Funds Movement Setup"
{
    ApplicationArea = All;
    PageType = Card;
    SourceTable = FundsMovementSetup;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("No. Series"; Rec."Funds Movement Number")
                {
                    ToolTip = 'Specifies the value of the No. Series field.';
                }
            }
        }
    }
}
