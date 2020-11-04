<?php
$name = "John Jackson";
$pattern = '/hn/';
if(preg_match($pattern, $name)){
print 'Match'.'<br />';
}else{
print 'No Match'.'<br />';
}



$name = "John Jackson";
$pattern = '/ak/';

if(preg_match($pattern, $name)){
print 'match'.'<br />';
}else
{
print 'No Match'. '<br />';
}



$part = 'AA100';
$pattern = '/^AA/';

if(preg_match($pattern, $part)){
print 'Match'.'<br />';
}
else{
    print 'No Match'.'<br />';
}


$regex = 'php';
$pattern = '/p[hu]p/';
if(preg_match($pattern, $regex)){
print 'Match' . '<br />';
}
else{
    print 'No Match'. '<br />';
}


$regex = 'php';
$pattern = '/p[a-z1-3]p/';
if(preg_match($pattern, $regex)){
print 'Match' . '<br />';
}
else{
    print 'No Match'. '<br />';
}

$regex = 'php';
$pattern = '/p\dp/';
if(preg_match($pattern, $regex)){
print 'Match' . '<br />';
}
else{
    print 'No Match'. '<br />';
}

$test = "h00";
$regex = '/h$/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}

$test = "00h";
$regex = '/h$/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}

$test = "0H";
$regex = '/h$/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}

$test = "p00";
$regex = '/^[a-z]/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "ppp";
$regex = '/^[a-z]/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "0p";
$regex = '/^[a-z]/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "Hp";
$regex = '/^[a-z]/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "_hb";
$regex = '/^[a-z]/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "p00";
$regex = '/^[a-zA-Z]/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "ppp";
$regex = '/^[a-zA-Z]/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "0p";
$regex = '/^[a-zA-Z]/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "Hp";
$regex = '/^[a-zA-Z]/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "_hb";
$regex = '/^[a-zA-Z]/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}

$test = "ABC";
$regex = '/[A-Z]*/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "AbC";
$regex = '/[A-Z]*/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "BBC";
$regex = '/[A-Z]*/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "bbc";
$regex = '/[A-Z]*/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}

$test = "ABC";
$regex = '/[A-Z]+/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "AbC";
$regex = '/[A-Z]+/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}

$test = "bbc";
$regex = '/[A-Z]+/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}

$test = "BBC";
$regex = '/[A-Z]+/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}

$test = "ABC";
$regex = '/[A-Z]{2}/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "AbC";
$regex = '/[A-Z]{2}/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "A";
$regex = '/[A-Z]{2}/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}

$test = "ABC";
$regex = '/[A-Z]{2,6}/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "ABc";
$regex = '/[A-Z]{2,6}/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
$test = "ABCD";
$regex = '/[A-Z]{2,6}/';
if(preg_match($regex, $test)){
  print 'Match'. '<br />';
}
else{
    print 'No Match'. '<br />';
}
?>