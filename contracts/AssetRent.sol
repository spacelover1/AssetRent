
pragma solidity >=0.7.0 <0.8.0;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract AssetBorrow is Ownable {
    
    using SafeMath for uint256;
    
    mapping(address => bool) public admin;
    mapping(address => bool) public lenders;
    
    struct Asset {
        string name;
        bool isAvailable;
        uint256 storeNum;
        uint256 price;
    }
    
    enum addressTypes {admin, lender, borrower}
    
    /** @dev verifies the msg.sender is an admin */
    modifier onlyAdmin() {
        require(admin[msg.sender], "Sorry, you are not admin!");
        _;
    }
    
    modifier onlyLender() {
        require(lenders[msg.sender], "Sorry, you are not lender!");
        _;
    }
    
    modifier onlyBorrower(){
        require(!lenders[msg.sender], "Sorry, you are not allowed to borrow asset!");
        require(!admin[msg.sender], "Sorry, you are not allowed to borrow asset!");
        _;
    }
    constructor() public {
        admin[msg.sender] = true;
    }

    /**-----------------------------------------------------------------------
        ------------------------ Admin Functions ----------------------
       -----------------------------------------------------------------------*/

    /** @dev admin allowed to add a new lender
     * @param _newLender new lender addrress
     */    
    function addLender(address _newLender) public onlyAdmin(){
        require(lenders[_newLender] == false, "lender already exists!");
        lender[_newLender] = true;
        
    }
    
    function isAdmin(address _address) public view returns(bool) {
        return admin[_address];
    }
    /** @dev returns the type of address (admin, lender, or borrower) */    
    function addressType() public view returns(addressTypes) {
        if(msg.sendr == super.owner()) return addressTypes.admin;
        if(lender[msg.sender]) return addressTypes.lender;
        else return addressTypes.borrower;
    }



    /**-----------------------------------------------------------------------
        ------------------------ Lender Functions ----------------------
       -----------------------------------------------------------------------*/


    /**-----------------------------------------------------------------------
        ------------------------ Borrower Functions ----------------------
       -----------------------------------------------------------------------*/


    
}    
