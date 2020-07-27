pragma solidity ^0.4.17 < 0.6.12; 

contract Reportcard{

    string public Name;
    uint public   RollNo ;
    string public Batch;
    uint public Marks_4sub;
    string public Status;
    
    function reportcard(string newName, uint newRollNo, string newBatch, uint newMarks, string newStatus) public{

        Name = newName;
        RollNo = newRollNo;
        Batch = newBatch;
        Marks_4sub = newMarks;
        Status = newStatus;

    }
    
    function setNewRecord(string newName, uint newRollNo, string newBatch, uint newMarks, string newStatus) public{

        Name = newName;
        RollNo = newRollNo;
        Batch = newBatch;
        Marks_4sub = newMarks;
        Status = newStatus;

    }
    
    function getLandCurrentDetails() public view returns(string,uint,string,uint,string){
        return(Name,RollNo,Batch,Marks_4sub,Status);
    }
}