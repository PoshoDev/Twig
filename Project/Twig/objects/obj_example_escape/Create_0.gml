/// @description  Load, modify and save a .csv
my_csv = csv_load_escape("demo_escape"); // Load the demo csv into the "my_csv" array
my_csv[2, 2] = "AWESOME"; // Edit the array
csv_save_escape("testing", my_csv); // Save the modified array to "testing.csv" (Script auto adds extension)

