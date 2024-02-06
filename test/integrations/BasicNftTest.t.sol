//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployBasicNft} from "../../script/DeployBasicNft.s.sol";
import {BasicNft} from "../../src/BasicNft.sol";

 contract TestBasicNft is Test {
    DeployBasicNft public deployer;
    BasicNft public basicNft;
    address public  USER = makeAddr("user");
    string  public constant PUG = "ipfs://bafybeigbhlzjytz2rgcisreev43oylrzyqgzh6uyxwh7u6vfxiv6h7lrem/";


    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft= deployer.run();


    }
    function testNameIsCorrect ()public {
        string memory expectedName = "Dogie";
        string memory actualName = basicNft.name();
        assertEq(keccak256(abi.encodePacked(expectedName)),keccak256(abi.encodePacked(actualName)));

    }
    function testCanMintAndHaveBalance()  public  {
        vm.prank(USER);
        basicNft.mintNft(PUG);
        assert(basicNft.balanceOf(USER) ==1);
      assert(keccak256(abi.encodePacked(PUG))==keccak256(abi.encodePacked(basicNft.tokenURI(0))));


    }

 }