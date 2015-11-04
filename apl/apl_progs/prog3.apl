integer main()
{
	integer status;
	print(0);
	print(2);
	print(4);
	print(6);
	print(8);
	status = Getpid();
	print(status);
	status = Getppid();
	print(status);
	return 0;
}
