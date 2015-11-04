decl
	integer status;
	string a;
enddecl
integer main()
{
	status = Open("sample.dat");
	print(status);
	a="hey";
	status = Write(0,a);
	return 0;
}
