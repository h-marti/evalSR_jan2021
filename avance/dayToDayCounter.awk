BEGIN {
    requestPerDay[0]=0
}

{
    split($4,temArray,":");
    requestDate=substr(temArray[1],2)

    ++requestPerDay[requestDate]
}

END {
    for (day in requestPerDay)
        if (day != 0)
            print " Number of requests on " day " --> " requestPerDay[day]
}