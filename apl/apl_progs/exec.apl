decl
	integer status;
enddecl
integer main()
{
	status = Getpid();
	print(status);

	status = Getppid();
	print(status);

	print("before fork");
	status = Fork();
	print("after fork");

	if (status == -2) then
		print(" Exec in action");
		status = Exec("prog4.xsm");
	endif;

	print("not to be printed");
	return 0;
}
