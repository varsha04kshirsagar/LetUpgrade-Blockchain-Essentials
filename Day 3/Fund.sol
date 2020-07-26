pragma solidity >=0.4.22 <0.7.0;
//transfer ether from one account to another to buy concert tickit 
contract FundConcert {
    
    address payable owner;
    uint256  public tickets;
    uint256 constant price = 1 ether;
    mapping (address => uint256) public purchasers;
 
    function fundConcert() public {
        
        owner = msg.sender; //meg.sender is used to address deployed to contract
        //set number of tickets
        tickets = 5;
            } 
    
    function buyTickets(uint256 amount)  payable public {
        // check the purchase ammount is not equal to required ammount and check if whether there is tickets available
        if (msg.value != (amount * price) || amount > tickets){
            revert();
        }
        
        purchasers[msg.sender] += amount; //amount is no. of tickets
        tickets -= amount;
        //self destruct if all tickets sell
        if (tickets == 0){
            selfdestruct(owner);
        }
    }     
}