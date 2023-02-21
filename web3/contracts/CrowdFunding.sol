// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// name of the smart contract is crowdfunding
contract CrowdFunding {
    // the structure of each camapain on the website. 
    // (what each campaign would contain)
    struct Campaign{
        address owner;
        string title;
        string description;
        uint256 target;
        uint256 deadline;
        uint256 amountCollected;
        string image;
        address[] donators;
        uint256[] donations;
    }

    // campaigns will have serveral Campaign inside it 
    // which can be accessed like an array 
    // as we have have mapped it with an integer(key value pair)
    mapping(uint256=>Campaign) public campaigns;

    //variable storing total number of campaigns on the website
    uint256 public numberOfCampaigns=0;

    // _ is used while passing the parameters to indicate that those variables 
    // belong to that specefic function only
    // we need to add memory before every variable with datatype string

    //returns a number(campaign id) 
    //and is a public function so can be executed from the frontend as well
    function createCampaign(address _owner,
    string memory _title,
    string memory _description,
    uint256 _target,
    uint256 _deadline,
    string memory _image)
    public returns (uint256)
    {
        // a new campaign of type struct Campaign
        // also storing it in the array campaigns
        // number of campaigns is initially 0 and would be incremented acting as curr index
        Campaign storage campaign = campaigns[numberOfCampaigns];

        //require is used to check and validate things
        // print this is deadline in a past/previous date
        require(campaign.deadline < block.timestamp,"The deadline must a be a future value");

        // initializing the values
        campaign.owner= _owner;
        campaign.title=_title;
        campaign.description=_description;
        campaign.target=_target;
        campaign.deadline=_deadline;
        campaign.amountCollected=0;
        campaign.image=_image;

        numberOfCampaigns++;
        
        //index of the recently made campaign
        return numberOfCampaigns-1;
    }

    function donateToCampaign(){}

    function getDonators(){}

    function getCampaigns(){}

}