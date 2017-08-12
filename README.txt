Test #1:

PHP 5.3-5.6

Implement reading from file and print out info like in an example.


Your function must do:
 - Read from file
 - Split data by rows into an array
 - Filter the array in such a way that only rows containing only numbers remain in it
 - Summarize the numbers in each line
 - Sort the received amounts in descending order
 - Return the result

Code example:
 # Path to the file
 $file = __DIR__ . '/datalist.txt';
 # Passing the data to the function that returns the result
 $result = getResult( $file );
 # Printing result
 echo '<pre>';
 var_export( $result );

 function getResult ( $file )
 {
     # @TODO Your code...
 }

Output example:
 array (
   82 => 16396,
   19 => 16169,
   71 => 15864,
   73 => 15224,
   81 => 14244
   ...

