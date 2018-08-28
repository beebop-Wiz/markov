open words, "</usr/share/dict/words";

my @wlist;
while($_ = <words> ){
    chomp $_;
    push @wlist, $_;
}


for($i = 0; $i < $ARGV[0]; $i++) {
    $len = rand 50;
    for($j = 0; $j < $len; $j++) {
	print $wlist[rand @wlist] . " ";
    }
    print "\n";
}
