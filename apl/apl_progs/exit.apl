integer main()
{
	integer s;
	print("Before exit");
	s = Fork();
	s = Fork();
	s = Fork();
	print("exiting");
	return 0;
}
