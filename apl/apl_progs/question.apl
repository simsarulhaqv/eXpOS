decl
	integer status,a,i,ans,n,offset,status1,statusold;
	string z;
enddecl
integer main()
{

	print("Started");
	read(n);

	status = Create("1.dat");
	print("Create status");
	print(status);

	statusold= Open("1.dat");
	print("Open status");
	print(statusold);

	i=0;
	while(i<1000) do
		ans = (n*n) % 1001;
		n=ans;
		status = Write(0,n);
		print("write status");
		print(status);
		i=i+1;
	endwhile;

	status = Create("2.dat");
	print("Create status");
	print(status);

	status= Open("2.dat");
	print("Open status");
	print(status);

	offset = 999;
	while(offset >= 0) do
		status1 = Seek(statusold,0);
		status1 = Seek(statusold,offset);
		status1 = Read(statusold,z);
		status1 = Write(status,z);
		print("write status");
		print(status1);
		offset = offset-1;
	endwhile;
		

	return 0;
}
