#A records
resource "njalla_record_a" "tor_nodes" {
  for_each = {
    node1    = "23.137.249.8"
    node2    = "77.91.85.147"
    node3    = "23.184.48.127"
    node4    = "23.184.48.128"
    node5    = "23.137.249.143"
    node6    = "23.137.249.185"
    node7    = "79.137.202.92"
    node8    = "77.91.86.95"
    node9    = "185.17.0.40"
    node10   = "185.17.0.55"
    node11   = "89.185.85.140"
    node12   = "77.91.78.210"
    node13   = "45.138.16.231"
    node14   = "185.17.0.150"
  }
  domain  = "shadowbrokers.eu"
  name    = "tor.${each.key}"
  ttl     = 10800 #3h
  content = each.value
}

resource "njalla_record_a" "short_ttl_tor_nodes" {
  for_each = {
    # testnode = "79.137.202.107"
  }
  domain  = "shadowbrokers.eu"
  name    = "tor.${each.key}"
  ttl     = 300 #5m
  content = each.value
}

#AAAA records
resource "njalla_record_aaaa" "tor_nodes" {
  for_each = {
    node1 = "2602:fc24:11:aabe::1"
    node3 = "2602:fc24:18:1be9::1"
    node4 = "2602:fc24:18:1c54::1"
    node5 = "2602:fc24:11:4441::1"
    node6 = "2602:fc24:11:96f9::1"
  }
  domain  = "shadowbrokers.eu"
  name    = "tor.${each.key}"
  ttl     = 10800 #3h
  content = each.value
}

#TXT records
resource "njalla_record_txt" "tor_nodes" {
  for_each = {
    node1    = "A6CD6A3242549DF63E57FF00FF89BD899D2AEF8A"
    node2    = "C7A51E46740C15DEC0535AF5560A1919CE6E5758"
    node3    = "1B57F14DE71E218DA3D9243A6497F26196355357"
    node4    = "B0ABBC964E763C01E93AF5719B77023728A78181"
    node5    = "53A5C88DF5862DC3FF8BB938926C094879FAA806"
    node6    = "A551E17288938C9FFF08F2F52B058AD4D0FC3A49"
    node7    = "84FA05E6A80EBE36BD84A51705C467FA98188D4A"
    node8    = "034ED155E6DA8277BC7F294896BFD7013D7BD7B0"
    node9    = "23DE335EC403E4BE64AEBCE2029AD8C8C94EF4E5"
    node10   = "561E0BF3A3B21DF248396A5BCEF9686AB92B9BAE"
    node11   = "F59D3D313A027703E51DC7DF793F2ED106C2E372"
    node12   = "014326416058DCFD0965167026CBEF647409A000"
    node13   = "BC2CB6453522AA289DB3D0BDEB93CBF46E5DD9DF"
    node14   = "41C7B20EF44FFBB44DE72A748989B18C13FAAD1E"
  }
  domain  = "shadowbrokers.eu"
  name    = lower("${each.value}")
  ttl     = 10800 #3h
  content = "we-run-this-tor-relay"
}