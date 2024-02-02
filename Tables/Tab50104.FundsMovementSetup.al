table 50104 FundsMovementSetup
{
    Caption = 'FundsMovementSetup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Funds Movement Number"; Code[20])
        {
            Caption = 'Funds Movement Number';
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
