BEGIN { 
    legitReq=0;
    badReq=0;
    badIP[0]=0
}

/GET|POST|HEAD/ { 
    ++legitReq 
}

!/GET|POST|HEAD/{ 
    ++badReq;  
    badIP[$1]=$1
}

END {
    print "Number of good HTTP action: " legitReq;
    print "Number of bad HTTP action: " badReq;
    print "IPs sending bad HTTP action: ";
    for (ip in badIP)
        if (ip != 0)
            print "\t" ip
}