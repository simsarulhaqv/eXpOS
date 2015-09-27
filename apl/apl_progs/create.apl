decl
	integer status;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print(111);
	print(status);
	return 0;
}
