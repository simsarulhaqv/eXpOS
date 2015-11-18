integer main()
{
	integer pid;
	print("Before fork");
	pid = Fork();
	pid = Fork();
	pid = Fork();
	pid = Fork();
	pid = Fork();
	print("After fork");
	// print(pid);
	return 0;
}
