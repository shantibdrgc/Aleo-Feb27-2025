# KYC Complaint Token:

## Create leo Project:
- Command:
    ```sh
    leo new shantibdhr_kyc_complaint_token
    ```

## Install dependencies:
- Command:
    ```sh
    cd shantibdhr_kyc_complaint_token
    leo add token_registry
    leo add credits
    ```

## Compiled Program:
- Command:
    ```sh
    leo build
    ```

## Deploy to testnet:
- Value of Endpoint must be changed with: `https://api.explorer.provable.com/v1` in `.env` file.
- Now, the value of `PRIVATE_KEY` in `.env` must be replaced.
- We will require some token to deploy our program into testnet.

- Command:
    ```sh
    leo deploy --network testnet
    ```
    
    <details><summary> Detailed Output </summary><blockquote>

    ~~~sh
       Leo ✅ Compiled 'shantibdhr_kyc_complaint_token.aleo' into Aleo instructions
    📦 Creating deployment transaction for 'shantibdhr_kyc_complaint_token.aleo'...

    Base deployment cost for 'shantibdhr_kyc_complaint_token.aleo' is 10.22365 credits.

    +-------------------------------------+----------------+
    | shantibdhr_kyc_complaint_token.aleo | Cost (credits) |
    +-------------------------------------+----------------+
    | Transaction Storage                 | 4.433000       |
    +-------------------------------------+----------------+
    | Program Synthesis                   | 4.790650       |
    +-------------------------------------+----------------+
    | Namespace                           | 1.000000       |
    +-------------------------------------+----------------+
    | Priority Fee                        | 0.000000       |
    +-------------------------------------+----------------+
    | Total                               | 10.223650      |
    +-------------------------------------+----------------+

    Your current public balance is 11.458064 credits.

    ✅ Created deployment transaction for 'shantibdhr_kyc_complaint_token.aleo'

    Broadcasting transaction to https://api.explorer.provable.com/v1/testnet/transaction/broadcast...

    ⌛ Deployment at17fzgn3553umh8hcet4sp0vn0sdkcygdn90m9w5p5x4k8nza2yu8qn7a6sd ('shantibdhr_kyc_complaint_token.aleo') has been broadcast to https://api.explorer.provable.com/v1/testnet/transaction/broadcast.
    ~~~

    </blockquote></details>

- On-Chain Outputs: 
    - Transaction ID: `at17fzgn3553umh8hcet4sp0vn0sdkcygdn90m9w5p5x4k8nza2yu8qn7a6sd`
    - Aleo Program: [https://testnet.aleo.info/program/shantibdhr_kyc_complaint_token.aleo](https://testnet.aleo.info/program/shantibdhr_kyc_complaint_token.aleo)
    - Deploy Txn: [https://testnet.aleo.info/transaction/at17fzgn3553umh8hcet4sp0vn0sdkcygdn90m9w5p5x4k8nza2yu8qn7a6sd](https://testnet.aleo.info/transaction/at17fzgn3553umh8hcet4sp0vn0sdkcygdn90m9w5p5x4k8nza2yu8qn7a6sd) 

# Signature:

## Sign with `Transaction ID`:
- For me, program deployed Transaction ID is: `at17fzgn3553umh8hcet4sp0vn0sdkcygdn90m9w5p5x4k8nza2yu8qn7a6sd`. Command:
    ```sh
    leo account sign -d --private-key <redacted> --message "at17fzgn3553umh8hcet4sp0vn0sdkcygdn90m9w5p5x4k8nza2yu8qn7a6sd" --raw
    ```
- Output:
    ```sh
    sign13zguftmtrwcqa0na9cw9rgrhx6kznjdqswsuqk6wnul6n40tucpgl6frw893p0xgvgmkreedgqtjlezznj6zaq3mvexks9hq8yy4gqg4ffacle92zstq39ee3p0rhs0e72s82347njy46syj48qndudpq6qcgetyt3lfr2zxcmm00r3p4azwpm09vch658vnf9g9v5g56rz3q6mc0y9
    ```