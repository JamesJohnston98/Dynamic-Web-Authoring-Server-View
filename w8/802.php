<?php


class Person{
public $name;
protected $gender;
private $age;
function printHello(){
echo "Hello from".$this->name;
}
function setGender($sex){
$this->gender=$sex;
}
public function setAge($age){
$this->age=$age;
}
}

class Student extends Person{
private $B_Code;
    
function set_bCode($id){
$this->B_Code=$id;
}
}
$daniel= new Student();
$daniel->name="Daniel Craig";
$daniel->setGender("Male");
$daniel->setAge(30);
$daniel->set_bCode("B007");
   
class Student extends Person{
private $B_Code; 
function set_bCode($id){
$this->B-Code=$id;
}
}
   
Class Module {
public $name;
public $mark;
}
    
$daniel= new Student();
$daniel->name="Daniel Craig";
$daniel->setGender("Male");
$daniel->setAge(30);
$daniel->set_bCode("BOO7");
$daniel->module = new Module();
$daniel->module->name="Spectre";
$daniel->module->mark=100;

echo "{$daniel->name} ";


?>