import token_registry.aleo;
import credits.aleo;

// The 'shantibdhr_kyc_complaint_token' program.
program shantibdhr_kyc_complaint_token.aleo {
    
    const COMPLAINT_TOKEN_ID: field = 71619063553950105623552field;
    const ADMIN_ADDRESS: address = aleo129yungdw069h3zpzd4qpw5gvmthhja0hfu9w2x3sc7pyhcd26vqsn6e4n2;
    const MAX_SUPPLY: u128 = 1_000_000_000_000_000u128;
    const BLOCKS_IN_A_DAY: u32 = 28_800u32;
    const MAX_SPEND_PER_DAY: u128 = 10_000_000_000u128;
    const MAX_U32: u32 = 4294967295u32;

    record SpendLimit {
        owner: address,
        amount_spent: u128,
        epoch_spent: u32
    }

    mapping has_minted: u8 => bool;
    mapping kyc_aml_status: address => bool;

    async transition initialize() -> Future {
        assert_eq(self.caller, ADMIN_ADDRESS);

        let f0: Future = token_registry.aleo/register_token(
            COMPLAINT_TOKEN_ID, 
            71619063553950105623552u128, 
            71619063553950105623552u128, 
            6u8, 
            MAX_SUPPLY, 
            true, 
            self.address
        );

        return finalize_initialize(f0);
    }
    async function finalize_initialize(f0: Future) {
        f0.await();
    }

    async transition mint_private() -> (token_registry.aleo/Token, Future) {
        assert_eq(self.caller, ADMIN_ADDRESS);

        let (token_record, f0): (token_registry.aleo/Token, Future) = token_registry.aleo/mint_private(
            COMPLAINT_TOKEN_ID, 
            ADMIN_ADDRESS, 
            MAX_SUPPLY, 
            true, 
            MAX_U32
        );

        return (token_record, finalize_mint_private(f0));
    }

    async function finalize_mint_private(f0: Future) {
        f0.await();
        assert(!has_minted.contains(0u8));
        has_minted.set(0u8, true);
    }

    transition issue_limit(owner: address) -> SpendLimit {
        assert_eq(self.caller, ADMIN_ADDRESS);
        return SpendLimit { owner: owner, amount_spent: 0u128, epoch_spent: 0u32 };
    }

    async transition register_kyc_aml(user: address) -> Future {
        assert_eq(self.caller, ADMIN_ADDRESS);
        return finalzie_register_kyc_aml(user);
    }

    async function finalzie_register_kyc_aml(user: address) {
        kyc_aml_status.set(user, true);
    }
}
