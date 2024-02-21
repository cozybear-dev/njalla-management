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
    node10 = "79.137.195.103"
    node11 = "89.185.85.140"
    node12 = "5.42.66.6"
    node13 = "77.91.87.79"
    node14 = "94.228.169.70"
    node15 = "185.106.94.195"
    node16 = "77.73.69.128"
    node17 = "77.105.146.42"
    node18 = "77.73.70.167"
    node19 = "79.137.198.213"
    node20 = "45.15.158.39"
    node21 = "5.42.80.233"
    node22 = "5.42.80.235"
    node23 = "5.42.80.234"
    node24 = "5.42.80.232"
    node25 = "185.174.136.114"
    node26 = "5.182.86.212"
    node27 = "84.54.51.64"
    node28 = "194.87.31.104"
    node29 = "194.48.250.55"
    node30 = "84.54.51.61"
    node31 = "84.54.51.69"
    node32 = "84.54.51.68"
  }
  domain  = "shadowbrokers.eu"
  name    = "tor.${each.key}"
  ttl     = 10800 #3h
  content = each.value
}

resource "njalla_record_a" "short_ttl_tor_nodes" {
  for_each = {
    # testing3 = "194.87.31.104"
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
    # node2  = "2a0e:d602:2:137::2"
    node3  = "2602:fc24:18:1be9::1"
    node4  = "2602:fc24:18:1c54::1"
    node5  = "2602:fc24:11:4441::1"
    node6  = "2602:fc24:11:96f9::1"
    # node7  = "2a12:5940:90f0::2"
    node8  = "2a0e:d602:2:2a2::2"
    node9  = "2a12:5940:f0a8::2"
    node10 = "2a12:5940:13e2::2"
    node11 = "2a12:5940:9101::2"
    # node12 = "2a0e:d602:2:436::2"
    node13 = "2a0e:d602:2:55f::2"
    node14 = "2a12:5940:52c2::2"
    # node15 = "2a0e:d602:1:afd::2"
    node16 = "2a00:1838:37:52::da4e"
    node17 = "2a0e:d602:1:14bc::2"
    node18 = "2a00:1838:37:468::98b4"
    # node19 = "2a12:5940:10cf::2"
    # node20 = "2a12:5940:d295::2"
    # node21 = "2a12:5940:b4dc::2"
    # node22 = "2a12:5940:b4de::2"
    node23 = "2a12:5940:b4dd::2"
    node24 = "2a12:5940:b4db::2"
    # node25 = "2a12:5940:d2f6::2"
    node26 = "2a12:5940:144f::2"
    node27 = "2a05:b0c7:6388::1"
    node30 = "2a05:b0c7:6949::1"
    node31 = "2a05:b0c7:6bd4::1"
    node32 = "2a05:b0c7:67c6::1"
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
    node10 = "3B432139835ADDA359F09AC63D65A86360EFD409"
    node11 = "F59D3D313A027703E51DC7DF793F2ED106C2E372"
    node12 = "014326416058DCFD0965167026CBEF647409A000"
    node13 = "2F76402F04EE7AC80207A4B3B525B235673952AE"
    node14 = "63A976C6BE797BDFE0E367D1910A381F0E0C0891"
    node15 = "B829A49405A9DA5BD2E199F6E83E638CA233BC3C"
    node16 = "AC7BDB39F81C4B364EA50B12B51C77C7A131EA7C"
    node17 = "EBD7520D6CA3CD325ADE5C3C802A7DAFA0BA6C71"
    node18 = "A3BC09219C2351376412D8736C7CAEE4A1639E3B"
    node19 = "2AB6D4CE7A4D46ADA4F21C537A05A68DE088280B"
    node20 = "EE50AAEA83AA7EDAF0A35E4E8EA4976483ABCCDD"
    node21 = "5EAA3069C8655BD6396F313BAD59E779B347C53C"
    node22 = "FC8AD114F816FB8CF20D19E4E5AFFD0D6780F3DF"
    node23 = "2A134CF4E3CC5C7F77F331177791843794B96068"
    node24 = "3EBDF7359190ACC0E23E5BA3B9C046668DF85114"
    node25 = "8F013AB2708FB36FA5F9594DC97701E64545ADEF"
    node26 = "8B31226353E33A49D43A0140F05AA056337E8578"
    node28 = "D1D4115C77FD8C5F8BBD1CFA8F938F0143AE8E5B"
    node28 = "AA5C46F66CB5863FA379F18081F9BEDC130AD601"
    node29 = "15C364DEF4D6A045D55F97FB3FB31EE8635AF780"
    node30 = "E9EA2D5287B668498026E07289482E3FD50C1047"
    node31 = "5B0BFE295F857E47D7C2A420260A9E1A61B0044F"
    node32 = "7B1E489F721DF140436AA42BD513DFB3BD40DF5E"
  }
  domain  = "shadowbrokers.eu"
  name    = lower("${each.value}")
  ttl     = 10800 #3h
  content = "we-run-this-tor-relay"
}