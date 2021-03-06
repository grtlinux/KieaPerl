pipe(FROM_PARENT, TO_CHILD)     || die "pipe: $!";
pipe(FROM_CHILD,  TO_PARENT)    || die "pipe: $!";
select(((select(TO_CHILD), $| = 1))[0]);   # autoflush
select(((select(TO_PARENT), $| = 1))[0]);  # autoflush

if ($pid = fork) {
    close FROM_PARENT; close TO_PARENT;
    print TO_CHILD "Parent Pid $$ is sending this\n";
    chomp($line = <FROM_CHILD>);
    print "Parent Pid $$ just read this: '$line'\n";
    close FROM_CHILD; close TO_CHILD;
    waitpid($pid,0);
} else {
    die "cannot fork: $!" unless defined $pid;
    close FROM_CHILD; close TO_CHILD;
    chomp($line = <FROM_PARENT>);
    print "Child Pid $$ just read this: '$line'\n";
    print TO_PARENT "Child Pid $$ is sending this\n";
    close FROM_PARENT; close TO_PARENT;
    exit;
}
