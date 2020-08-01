pragma solidity >=0.4.22 <0.7.0;

contract Health_Care{
    
    string public Name;
    int public Age;
    string public BloodGroup;
    int public Weight;
    bool public sugar;
    bool public BP;
    string public Testname;
    
    function Patient_record(string newname, int newage, string bg, int newweighte, bool newsuger,bool newbp) public {
        
        Name = newname;
        Age = newage;
        BloodGroup = bg;
        Weight = newweighte;
        sugar = newsuger;
        BP = newbp;
        
    }
    
    function test(string newname,string test) public {
        
        Name = newname;
        Testname = test;
    }
    
    function get_report() public view returns(string newname, int newage, string bg, int newweighte, bool newsuger,bool newbp,string test){
        return(Name,Age,BloodGroup,Weight,sugar,BP,Testname);
    }     
    
}


