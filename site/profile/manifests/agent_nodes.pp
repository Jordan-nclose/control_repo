class profile::agent_nodes{
  include dockeragent
  doceragent::node{'web.puppet.vm':}
  doceragent::node{'db.puppet.vm':}
}
