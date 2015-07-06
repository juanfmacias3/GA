#!/usr/bin/perl

####### Mate and Age #######

### Extract coefficients
@T = split(/,/, $ARGV[0]);
$MA = @T[0];
$MB = @T[1];
$MC = @T[2];
undef @T;

@T = split(/,/, $ARGV[1]);
$OA = @T[0];
$OB = @T[1];
$OC = @T[2];
undef @T;
###

sleep 1;
print "	Fitness Mating Function:	(".$MA."X^2) + (".$MB."X) + (".$MC.")\n";
print "	Number of Offspring Function:	(".$OA."X^2) + (".$OB."X) + (".$OC.")\n";
print "	Mutation Rate:	$ARGV[2] %\n";
sleep 1;
print "	...In construction!\n";