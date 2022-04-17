require("@nomiclabs/hardhat-waffle");
require("dotenv").config({ path: ".env" });


const ALCHEMY_API_KEY_URL = 'https://eth-rinkeby.alchemyapi.io/v2/ZzYn5jUuPVANgRzJa6DlIhGXs_hb15eN';
const RINKEBY_PRIVATE_KEY = process.env['RINKEBY_PRIVATE_KEY'];

console.log(process.env)


module.exports = {
  solidity: "0.8.4",
  networks: {
    rinkeby: {
      url: ALCHEMY_API_KEY_URL,
      accounts: [RINKEBY_PRIVATE_KEY],
    },
  },
};
