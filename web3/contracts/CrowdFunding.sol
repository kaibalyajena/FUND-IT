// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//name of the smart contract is crowdfunding
contract CrowdFunding {
    //the structure of each camapain on the website. (what each campaign would contain)
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

    //campaigns will have serveral Campaign inside it which can be accessed like an array 
    //as we have have mapped it with an integer(key value pair)
    mapping(uint256=>Campaign) public campaigns;

    //variable storing total number of campaigns on the website
    uint256 public numberOfCampaigns=0;

    function createCampaign(){}

    function donateToCampaign(){}

    function getDonators(){}

    function getCampaigns(){}

}