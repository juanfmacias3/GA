#!/usr/bin/perl

####### Master GA Script ########
print "
  ##################################
  #                                #
  #  0000000000000000000000000000  #
  #  0000000000000000000000000000  #
  #  00000    000000000    000000  #
  #  00000    000000000    000000  #
  #  0000000000000000000000000000  #
  #  0000000000000000000000000000  #
  #  00000    000000000    000000  #
  #  00000    000000000    000000  # 
  #  0000000000000000000000000000  #
  #  0000000000000000000000000000  #
  #  00000    000000000    000000  #
  #  00000    000000000    000000  #
  #  0000000000000000000000000000  #
  #  0000000000000000000000000000  #
  #                                #
  ##################################\n";



print "\n######################################\n";
print "###### Juan's Genetic Algorithm ######\n";
print "######################################\n\n";
sleep 2;
print "\n####### Initializing #######\n";
sleep 1;

######## Import Global Parameters (1)
print "Setting Global Parameters...\n";
open(GLOB_PARAM, "Global_Parameters.txt") or die "Could not locate Global_Parameters.txt\n";
@T = <GLOB_PARAM>;
for $A(@T){
	chomp($A);
	@T2 = split(/	/, $A);
	@GLOB = (@GLOB, @T2[1]);
	undef @T2;
}

undef @T;
undef $A;
close GLOB_PARAM;
print "Complete\n\n";
sleep 1;
########

######## Generating World (2)
print "Generating World...\n";
system "perl Generate.pl @GLOB[0] @GLOB[1] @GLOB[2]";
print "Complete\n\n";
sleep 1;
########

######## Determine Fitness (3)
print "Determining Fitness...\n";
system "perl Fitness.pl";
print "Complete\n\n";
sleep 1;
########

######## Sort by Fitness (4)
print "Sorting by Fitness...\n";
system "perl Sort.pl";
print "Complete\n\n";
sleep 1;
########

######## Generate Fitness Matrix (5)
print "Generating Fitness Matrix...\n";
system "perl Matrix.pl";
print "Complete\n\n";
sleep 1;
########

######## Mate & Age (6)
print "Mating and Aging...\n";
system "perl Mate_Age.pl @GLOB[3] @GLOB[4] @GLOB[5]";
print "Complete\n\n";
sleep 1;
########

######## Cull (7)
print "Culling...\n";
system "perl Cull.pl @GLOB[6]";
print "Complete\n\n";
sleep 1;
########

##### Save P1 data now

####

die;
############## Iteration
$CU1 = 2;
while($CU1 < @GLOB[0]+1){
	print "$CU1\n";
	$CU1++;
}
##############