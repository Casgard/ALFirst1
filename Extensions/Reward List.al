page 50102 "Reward List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Reward;
    CardPageId = "Reward Card";

    layout
    {
        area(Content)
        {
            repeater(Rewards)
            {
                field(RewardID; RewardID)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the level of reward that the customer has at this point.';
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Dicount Percentage"; "Dicount Percentage")
                {
                    ApplicationArea = all;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}