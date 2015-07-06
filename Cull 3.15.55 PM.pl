#!/usr/bin/perl

####### Cull population #######

### Extract coefficients
@T = split(/,/, $ARGV[0]);
$CA = @T[0];
$CB = @T[1];
$CC = @T[2];
undef @T;
###


sleep 1;
print "	Cull by Age Function:	(".$CA."X^2) + (".$CB."X) + (".$CC.")\n";
sleep 1;
print "	...In construction!\n";

