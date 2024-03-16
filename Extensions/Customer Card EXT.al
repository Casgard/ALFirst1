pageextension 50103 "Customer Card EXT" extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(RewardLevel; RewardLevel)
            {
                ApplicationArea = All;
                Caption = 'Reward Level';
                Description = 'Reward level of the customer.';
                ToolTip = 'Specifies the level of reward that the customer has at this point.';
                Editable = false;
            }

            field(RewardPoints; RewardPoints)
            {
                ApplicationArea = All;
                Caption = 'Reward Points';
                Description = 'Reward points accrued by customer';
                ToolTip = 'Specifies the total number of points that the customer has at this point.';
                Editable = false;
            }
        }
        addlast(General)
        {
            field("Reward ID"; "Reward ID")
            {
                ApplicationArea = All;
                Lookup = true;
                ToolTip = 'Specifies the level of reward that the customer has at this point.';
            }
        }
    }

    actions
    {
        addfirst(navigation)
        {
            action("Rewards")
            {
                ApplicationArea = All;
                RunObject = page "Reward List";
                trigger OnAction()
                begin

                end;
            }
        }
    }

    trigger OnAfterGetRecord();
    var
        CustomerRewardsMgtExt: Codeunit "Customer Rewards Ext. Mgt.";
    begin
        // Get the reward level associated with reward points 
        RewardLevel := CustomerRewardsMgtExt.GetRewardLevel(RewardPoints);
    end;

    var
        RewardLevel: Text;
}