pragma solidity ^0.4.0;
 interface Regulator{
    function checkValue(uint amount) returns (bool) ;
    function loan() returns (bool);
    }
    
contract Bank is Regulator{
    uint internal value;
    
   
    function Bank(uint amount){
        value = amount;
    }
    
    function deposit(uint amount)
    {
        value +=amount;
    }
    function withdraw(uint amount)
    {
        value -=amount;
    }
    function balance() returns (uint)
    {
        return value;
    }
     function loan() returns (bool)
     {
         return value>0;
     }
     function checkValue(uint amount) returns (bool)
     {
       return amount>=value;
     }
}



contract Person is Bank(10){
     string private name;
     uint age;
     function setName(string newName){
        name = newName;
    }
     function getName() returns (string){
        return name;
    }
    function setage(uint newage){
        age = newage;
    }
     function getAge() returns (uint){
        return age;
        
    }
      function balance() returns (uint)
    {
        return value;
    }
    
        function loan() returns (bool)
        {
            return true;
        }
    
}

