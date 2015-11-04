decl
	integer status;
	string a;
enddecl
integer main()
{
	status = Create("sample.dat");
	print("Create status");
	print(status);
	status= Open("sample.dat");
	print("Open status");
	print(status);
	status = Read(0,a);
	print(a);	
	status = Seek(0,1);
	status = Read(0,a);
	print(a);
	return 0;
}
