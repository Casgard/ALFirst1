table 50104 testt
{
    Caption = 'testt';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; id; Guid)
        {
            Caption = 'id';
        }
        field(2; name; Text[30])
        {
            Caption = 'name';
        }
    }
    keys
    {
        key(PK; id)
        {
            Clustered = true;
        }
    }
}
