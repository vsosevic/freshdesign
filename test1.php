<?php

$fileLocation = __DIR__ . '/datalist.txt';

$file = fopen($fileLocation, "r");

$result = getResult( $file );
echo '<pre>';
var_export( $result );

function getResult ( $file )
{
	$dataFromFile = array();
    if ($file) {
     	//read each line to an array
    	while (($line = fgets($file)) !== false) {
        	$dataFromFile[] = $line;
    	}
    	//retreive numbers only and sum them
    	foreach ($dataFromFile as $key => $fileLine) {
    		//find numbers only
    		preg_match_all("/[0-9]+/", $fileLine, $numbersOnly);

    		//sum all numbers
    		$sum = 0;
    		foreach ($numbersOnly[0] as $number) {
    			$sum = $sum + $number;
    		}
    		//rewrite line in array with a sum
    		$dataFromFile[$key] = $sum;
    	}

    	fclose($file);

    	//return desc sorted array
    	arsort($dataFromFile);
    	return($dataFromFile);
    } else {
        echo "error opening the file.";
    }
}

?>