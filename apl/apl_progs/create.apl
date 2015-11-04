decl
	integer status;
enddecl
integer main()
{
	status = Create("myFile.dat");
	print(status);
	return 0;
}
