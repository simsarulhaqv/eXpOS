decl
	integer status;
enddecl
integer main()
{
	status = Open("myFile.dat");
	print(status);
	status = Open("myFile.dat");
	print(status);
	status = Open("myFile.dat");
	print(status);
	status = Open("myFile.dat");
	print(status);
	return 0;
}
