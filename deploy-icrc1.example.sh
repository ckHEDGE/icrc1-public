NETWORK="ic"
OWNER=$(dfx --identity firstid identity get-principal)
echo "Deploying on $NETWORK, owner is set as : $OWNER"

dfx deploy icrc1 --network $NETWORK --argument "record {
  initArgs = record {
    totalSupply=10000000000000000;
    decimals=8;
    fee=1000;
    name=opt \"ckHEDGE\";
    symbol=opt \"ckHGE\";
    metadata=opt vec {record { name=\"logo\"; content=\"https://i.ibb.co/XLhJM7J/Vector.png\"}};
    owner=principal \"3j4f7-7bysv-nk7j6-mwd6g-vbkw5-ebvlj-r6lrc-xnb4s-etkhb-4ag2b-oqe\";
  };
  upgradeArgs=null
}"