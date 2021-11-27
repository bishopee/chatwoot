FactoryBot.define do
  factory :automation_rule do
    account
  end

  factory :automation_rule_staus_changes do
    account
    event_name { "conversation_status_changed" }
    conditions { [{ "values": ["resolved"], "attribute_key": "status", "query_operator": nil, "filter_operator": "equal_to" }] }
    actions {
      [
        {
          "action_name"=>"send_email_to_team", "action_params"=>{ "message"=>"Please pay attention to this conversation, its from high priority customer", "team_ids"=>[1] }
        },
        { "action_name"=>"assign_team", "action_params"=>[1] },
        { "action_name"=>"add_label", "action_params"=>["support", "priority_customer"] },
        { "action_name"=>"assign_best_agents", "action_params"=>[1, 2, 3, 4] }
      ]
    }
  end
end
