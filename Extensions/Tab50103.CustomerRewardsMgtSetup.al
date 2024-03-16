table 50103 "Customer Rewards Mgt. Setup"
{
    Caption = 'Customer Rewards Mgt. Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
        }

        field(2; "Customer Rewards Ext. Mgt. Codeunit ID"; Integer)
        {
            TableRelation = "CodeUnit Metadata".ID;
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
