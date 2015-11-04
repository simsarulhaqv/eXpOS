decl
	integer status;
enddecl
integer main()
{
	status = Delete("prog1.xsm");
	// status = Delete("a.dat");
	// print(status);
	return 0;
}
