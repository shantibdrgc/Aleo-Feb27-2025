# Getting Started with ALEO:

## Create new project:
- Command:
    ```sh
    leo new santhibhdr_leo_bidder_auction
    ```

- Create 3 accounts. Owner, Bidder1, Bidder2.
- Command:
    ```sh
    snarkos account new
    ```
- So, run above command 3 times in terminal:
    <details><summary> Detailed Output </summary><blockquote>

    ~~~
    $ snarkos account new

    Private Key  <redacted>
        View Key  <redacted>
        Address  aleo129yungdw069h3zpzd4qpw5gvmthhja0hfu9w2x3sc7pyhcd26vqsn6e4n2

    $ snarkos account new

    Private Key  <redacted>
        View Key  <redacted>
        Address  aleo173p0azy977vvf2raexpg9ha54ch4d05a7nkldpnl5a4rk2s0sgrqqny5df

    $ snarkos account new

    Private Key  <redacted>
        View Key  <redacted>
        Address  aleo1wketsnahydy82fe5xry2ahg83q8gfzmf303h5zuly9e6zgv4tuys83yafz
    ~~~
    
    </blockquote></details>

- In above output, suppose 1 a/c with Address `aleo129yungdw069h3zpzd4qpw5gvmthhja0hfu9w2x3sc7pyhcd26vqsn6e4n2` is owner and remaining 2nd and 3rd a/cs are bidders. 
- Make sure `ENDPOINT` in `.env` file is `https://api.explorer.provable.com/v1`.
     
## Deploy To Testnet:
- We need ALEO token in each accounts. So load up before moving any further.
- Now, the value of `PRIVATE_KEY` in `.env` must be replaced with the `PRIVATE_KEY` of the Owner.
- Command:
    ```sh
    leo deploy --network testnet -y
    ```
    <details><summary> Detailed Output </summary><blockquote>

    ~~~
       Leo ✅ Compiled 'santhibhdr_leo_bidder_auction.aleo' into Aleo instructions
        📦 Creating deployment transaction for 'santhibhdr_leo_bidder_auction.aleo'...


        Base deployment cost for 'santhibhdr_leo_bidder_auction.aleo' is 14.504325 credits.

        +------------------------------------+----------------+
        | santhibhdr_leo_bidder_auction.aleo | Cost (credits) |
        +------------------------------------+----------------+
        | Transaction Storage                | 3.641000       |
        +------------------------------------+----------------+
        | Program Synthesis                  | 9.863325       |
        +------------------------------------+----------------+
        | Namespace                          | 1.000000       |
        +------------------------------------+----------------+
        | Priority Fee                       | 0.000000       |
        +------------------------------------+----------------+
        | Total                              | 14.504325      |
        +------------------------------------+----------------+

        Your current public balance is 15.2322 credits.

        ✅ Created deployment transaction for 'santhibhdr_leo_bidder_auction.aleo'

        Broadcasting transaction to https://api.explorer.provable.com/v1/testnet/transaction/broadcast...

        ⌛ Deployment at1xugmshnhpzjtzvrtwxtmj5t9gx7fg9vlm75npvprslxn5qyh2syql9qfvx ('santhibhdr_leo_bidder_auction.aleo') has been broadcast to https://api.explorer.provable.com/v1/testnet/transaction/broadcast.

    ~~~

    </blockquote></details>


- On-Chain Outputs: 
    - Deployment ID: `at1xugmshnhpzjtzvrtwxtmj5t9gx7fg9vlm75npvprslxn5qyh2syql9qfvx`
    - Aleo Program: [https://testnet.aleo.info/program/santhibhdr_leo_bidder_auction.aleo](https://testnet.aleo.info/program/santhibhdr_leo_bidder_auction.aleo)
    - Deploy Txn: [https://testnet.aleo.info/transaction/at1xugmshnhpzjtzvrtwxtmj5t9gx7fg9vlm75npvprslxn5qyh2syql9qfvx](https://testnet.aleo.info/transaction/at1xugmshnhpzjtzvrtwxtmj5t9gx7fg9vlm75npvprslxn5qyh2syql9qfvx) 


## Execution Details:
- 1st Bidder Execution:
    - Transition ID: `at1g84tstd9cmq20g54q4y3pudy0upp4hq3pumvxg6syhe393xt6crqpeqpjh`
    - Output Record: `record1qyqsqy8zdvekjdtww46wnfwcrv3qkx3yj5qfqgvydtxf8khrz7eqgrg9qvrxy6tyv3jhyscqqgpqqar6mtunpsarax8aq535tejy5a9unhtfc8yyspwr7j6ugzjyp9swqc5yqyc5x63ea8d4xseudzgc9fmxggaqty5cz5s3g0tcsw82auqqvctdda6kuaprqqpqzqpmahu43qewrkqu2axhmenhgeu23jvuqxw28hux02ke003ampjwpvykju6lwa5kumn9wg3sqqspqryvsw4ja7mr5h5ahsdeal0n6z0a5pttpeylc09x0jazy4fj0p8sw3myvga8nhegnpe3wy27m8zhxq6wfuxuy60zz7slpglc2ykxwlqtux76rk`

- 2nd Bidder Execution:
    - Transition ID: `at1a9ma6j72242jtfn6pkmy7mrksvn65eyy7udulka6ehefk3hcgypsryd8mk`
    - Output Record: `record1qyqsp8u3mfw4ek8fmpujugj3nc0a6tdqtqf6d07vj38sygfn8fg4akcrqvrxy6tyv3jhyscqqgpqqzk9u0sj430l0c67nvul9l388a36l4fvan73wmjk02x80lk7qgs0y83yfhkc4wdwexwkl480f5lr5zfleym037k0rkz92fdhvr6ahy8qvctdda6kuaprqqpqzqzsnkx7nvn6gry0hh95xp48d2mwy5zsfsz578gmy8ye9f2sf59sqsykju6lwa5kumn9wg3sqqspqznrd0vdm33uxj3x4a9yf8qjkrgwsdhk82d6ynalgv0zsc0rfkfsxyn20kv74gywr537nnq0teezkcrx8542d76xezjspmmqntpklks262qtk6`

- Decrypt Record using:
    ```sh
    snarkos developer decrypt -v <VIEW_KEY> -c <RECORD_CIPHERTEXT>
    ```

- Resolve Bid:
    - Transition ID: `at10hsvaa6rmlp8x6nhmcjq5cxkcaea75tj69rk5nzs5aad70y2fggquxuypv`
    - Output Record: `record1qyqsqzarky43fkwxvzm8c9n2fk5da2lelq8gqkexmcnrvajx0gws5fc0qvrxy6tyv3jhyscqqgpqqkyg8vx4dpnmu4rlx69xh6myvq5z4m7hscs50e4vxjqrsh0qrhsrlj9umg2xt3kykx8wfc5xr4x3g0706d5jc6jsslgqduc4npdz5cxsvctdda6kuaprqqpqzq89xcc0vc5zkk65zkue5afkr98exqr3ry92k9k6mm804adte0jfpuykju6lwa5kumn9wg3sqqspqzgw6s3rktrpxs824zffwflg9f770xvu9m2090hkcxgz4v2thwtq2ltgt9f5r2x0ufagynetjmmw5ht6489w6l8hd950q57yc976nxqse42nt5`

- Finish Bid:
    - Transition ID: `at1507fhvmfhyv4yzed39wfrtgm423ncrngsd0tzs762chf8vwwnvrsvhq25e`
    - Output Record: `record1qyqspuqua6z285v2swx0ss3gsexnqykerpskcjrdkhdnn5jk6acdwrq3qvrxy6tyv3jhyscqqgpqpw09htxvs7nrqd63xn3p5fyahxwekg56328kmapd4h3e7p5lcncvnf9n3mhctd4zna7zgcv9rr3k9mvu6fjpjszpzgagmzcmunkphsxqvctdda6kuaprqqpqzqyj09tyupj2ldcj45p6suymyn8uvel8ra7q93g97vlhezj7hgv6qyykju6lwa5kumn9wg3sqqspqrn7cu33fmlzgqw4v5g4qlvd3rkjhny5mntht44kggjztu4md36sztjyjtsqelqahlvfk4y5zpm8vk52fjrfpm68w434wg5jyx90skgq7qda3j`

- Claim Bid:
    - Transition ID: `at1zcwke82j44qd2e65hmr7z4qj5f5my9scu0s8jcnpekvfj2cd2qyq9hqmpq`
    - Output Record: `record1qyqsqvlcfl2syzqydqprk447lt7kzd65skl9z43y4qjzxdq645zzj0qtqyrxzmt0w4h8ggcqqgqsp7cz9wtxmqmhn7w7wuntum5gggzjxvedtemtzwzczyr3400amtsve3a8s2f3lxchyulaj9k7ymqtf6s5nyt4975vvsxmu5xzjx4vh5zshglw6u`

# Signature:
## Sign with `true`:
- Command:
    ```sh
    leo account sign --private-key <redacted> --message true
    ```

- Output:
    ```sh
    sign1vgm68v88zgte0kc2wt674x4lp4h73kg4dmwsejkljuqcqy8w5cp3cay7ey0q575c5ygpn8cpln2q4aa5eypzc8xmp9srzlv66fvkyqg4ffacle92zstq39ee3p0rhs0e72s82347njy46syj48qndudpq6qcgetyt3lfr2zxcmm00r3p4azwpm09vch658vnf9g9v5g56rz3qtvpnax
    ```

## Sign with `Transaction ID`:
- For me, program deployed Transaction ID is: `at1xugmshnhpzjtzvrtwxtmj5t9gx7fg9vlm75npvprslxn5qyh2syql9qfvx`. Command:
    ```sh
    leo account sign -d --private-key <redacted> --message "at1xugmshnhpzjtzvrtwxtmj5t9gx7fg9vlm75npvprslxn5qyh2syql9qfvx" --raw
    ```
- Output:
    ```sh
    sign1tk8n0ggvpwfwp9mdl5g9045f54heendhqnu06rhr9celgmxgqvqfc6zjyk3x2epm8hjwyhnl5twdx3cqrm4fy3ekx4hswketffrfcpq4ffacle92zstq39ee3p0rhs0e72s82347njy46syj48qndudpq6qcgetyt3lfr2zxcmm00r3p4azwpm09vch658vnf9g9v5g56rz3qzh8r40
    ```