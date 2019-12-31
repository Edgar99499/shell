BEGIN {
print "The latest list of users and shells" 
print " UserID \t Shell"
print "-------- \t \t \t -------"
FS=":"
}

{ 
print $1 " \t \t \t " $7
}

END {
print "This concludes the listing"
}
