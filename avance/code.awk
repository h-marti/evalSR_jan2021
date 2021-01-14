BEGIN {
    legitReq=0;
    badReq=0;
    badIP[0]=0
}

$9 ~ /200|301|302|304|404/{
    ++legitReq
}

$9 !~ /200|301|302|304|404/{
    ++badReq;
    badIP[$1]=$1
}

END {
    print "Number of good HTTP code: " legitReq;
    print "Number of bad HTTP code: " badReq;
    print "IPs generating bad HTTP code: ";
    for (ip in badIP)
        if (ip != 0)
            print "\t" ip
}