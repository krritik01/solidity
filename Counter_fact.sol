contract Counterfact is LiveFactory {
  function addressForNonce(uint8 nonce) constant returns (address) {
    if (nonce > 127) throw;
    return address(sha3(0xd6, 0x94, address(this), nonce));
  }

  function Counterfact() payable {
    firstDeployment = addressForNonce(uint8(1));
    bool b = firstDeployment.send(msg.value);
  }

  address public firstDeployment;
}
