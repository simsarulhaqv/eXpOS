decl
	integer pid,i,s;
enddecl
integer main()
{
	integer c;
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c = Fork();
	c=Exec("hello.xsm");
	return 0;
}
