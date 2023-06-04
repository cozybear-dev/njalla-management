#A records
resource "njalla_record_a" "tor_nodes" {
  for_each = {
    node1  = "23.137.249.8"
    node2  = "77.91.85.147"
    node3  = "23.184.48.127"
    node4  = "23.184.48.128"
    node5  = "23.137.249.143"
    node6  = "23.137.249.185"
    node7  = "79.137.202.92"
    node8  = "77.91.86.95"
    node9  = "45.15.157.177"
    node10 = "185.17.0.55"
    node11 = "89.185.85.140"
    node12 = "77.91.78.210"
    node13 = "77.91.87.79"
    node14 = "185.17.0.150"
    node15 = "185.106.94.195"
    node16 = "77.73.69.128"
    node17 = "77.105.146.42"
    node18 = "77.73.70.167"
    node19 = "79.137.198.213"
  }
  domain  = "shadowbrokers.eu"
  name    = "tor.${each.key}"
  ttl     = 10800 #3h
  content = each.value
}

resource "njalla_record_a" "short_ttl_tor_nodes" {
  for_each = {
    # testnode = "45.15.157.177"
  }
  domain  = "shadowbrokers.eu"
  name    = "tor.${each.key}"
  ttl     = 300 #5m
  content = each.value
}

#AAAA records
resource "njalla_record_aaaa" "tor_nodes" {
  for_each = {
    node1  = "2602:fc24:11:aabe::1"
    node2  = "2a0e:d602:2:137::2"
    node3  = "2602:fc24:18:1be9::1"
    node4  = "2602:fc24:18:1c54::1"
    node5  = "2602:fc24:11:4441::1"
    node6  = "2602:fc24:11:96f9::1"
    node7  = "2a12:5940:90f0::2"
    node8  = "2a0e:d602:2:2a2::2"
    node9  = "2a12:5940:f0a8::2"
    node10 = "2a0e:d606:0:a5::2"
    node11 = "2a12:5940:9101::2"
    node12 = "2a0e:d602:2:436::2"
    node13 = "2a0e:d602:2:55f::2"
    node14 = "2a0e:d606:0:5c::2"
    node15 = "2a0e:d602:1:afd::2"
    node16 = "2a00:1838:37:52::da4e"
    node17 = "2a0e:d602:1:14bc::2"
    node18 = "2a00:1838:37:468::98b4"
    node19 = "2a12:5940:10cf::2"
  }
  domain  = "shadowbrokers.eu"
  name    = "tor.${each.key}"
  ttl     = 10800 #3h
  content = each.value
}

#TXT records
resource "njalla_record_txt" "tor_nodes" {
  for_each = {
    node1  = "A6CD6A3242549DF63E57FF00FF89BD899D2AEF8A"
    node2  = "C7A51E46740C15DEC0535AF5560A1919CE6E5758"
    node3  = "1B57F14DE71E218DA3D9243A6497F26196355357"
    node4  = "B0ABBC964E763C01E93AF5719B77023728A78181"
    node5  = "53A5C88DF5862DC3FF8BB938926C094879FAA806"
    node6  = "A551E17288938C9FFF08F2F52B058AD4D0FC3A49"
    node7  = "84FA05E6A80EBE36BD84A51705C467FA98188D4A"
    node8  = "034ED155E6DA8277BC7F294896BFD7013D7BD7B0"
    node9  = "DDF458ADF897A5EB0B894023C084B3C5B2F3B15B"
    node10 = "561E0BF3A3B21DF248396A5BCEF9686AB92B9BAE"
    node11 = "F59D3D313A027703E51DC7DF793F2ED106C2E372"
    node12 = "014326416058DCFD0965167026CBEF647409A000"
    node13 = "2F76402F04EE7AC80207A4B3B525B235673952AE"
    node14 = "41C7B20EF44FFBB44DE72A748989B18C13FAAD1E"
    node15 = "B829A49405A9DA5BD2E199F6E83E638CA233BC3C"
    node16 = "AC7BDB39F81C4B364EA50B12B51C77C7A131EA7C"
    node17 = "EBD7520D6CA3CD325ADE5C3C802A7DAFA0BA6C71"
    node18 = "A3BC09219C2351376412D8736C7CAEE4A1639E3B"
    node19 = "2AB6D4CE7A4D46ADA4F21C537A05A68DE088280B"
    # testnode = "CC9D61687AB0386D0AD64BB2C1808AFDC22BAB11"
  }
  domain  = "shadowbrokers.eu"
  name    = lower("${each.value}")
  ttl     = 10800 #3h
  content = "we-run-this-tor-relay"
}