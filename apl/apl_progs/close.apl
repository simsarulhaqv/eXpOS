decl
	integer status,a;
enddecl
integer main()
{
	a= Open("myFile.dat");
	status = Close(a);
	print(status);
	return 0;
}
