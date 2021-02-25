pragma solidity >=0.7.0 <0.8.0;
pragma experimental ABIEncoderV2;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract AssetBorrow {
    
    struct Asset {
        string name;
    }


    /////////////////////////////////////////////////////////Admin
    function BorrowerList() public view returns (uint256){
    }
    
    function LenderList() public view returns (uint256){
    }
    
    function ApproveBorrower() public view returns (uint256){
    }
    
    function ApproveLender() public view returns (uint256){
    }

    function ApproveLease() public view returns (uint256){
    }    
    /////////////////////////////////////////////////////////Lender
    function RegisterAsLender() public view returns (uint256){
    }
    
    function AddAsset() public view returns (uint256){
    }
    
    function AssetList(address owner) public view returns (Asset[8] memory){
    }
    function AssetRequestList() public view returns (Asset[8] memory){
    }
    
    function ApproveRequest() public view returns (uint256){
    }
    
    function RejectRequest() public view returns (uint256){
    }
  
    function AssetDamaged() public view returns (uint256){
    }  
    /////////////////////////////////////////////////////////Lender    
    function RegisterAsBorrower() public view returns (uint256){
    }      
    function AllAssetsList() public view returns (Asset[8] memory){
    }
    
    function RequestAsset() public view returns (uint256)//check Asset Free
    {
    }
    
    function ApproveAssetReceie() public view returns (uint256){
    }
    
    function ReturnAsset() public view returns (uint256){
    }    
    /////////////////////////////////////////////////////////???????    
    function CalculateRentCosts() public view returns (uint256){
    }
   
    function penalizeBorrower() public view returns (uint256){
    }
    
    function CalculateCosts() public view returns (uint256){
    }
    
    
}
