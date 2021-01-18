BEGIN {
    PROCINFO["sorted_in"] = "@val_num_desc"
    requestPerDay[0]=0
}

$2 {
    ++requestPerDay[$2]
}

END {
    for (day in requestPerDay)
        if (day != 0)
            print " Number of requests on " day " --> " requestPerDay[day]
}
