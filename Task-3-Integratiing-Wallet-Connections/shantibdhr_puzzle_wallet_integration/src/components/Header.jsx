import React, {useState} from "react";
import WalletModal from "./WalletModal";

const Header = () => {
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [selectedWallet, setSelectedWallet] = useState(null);

    const handleWalletSelect = (walletId) => {
        setSelectedWallet(walletId);
        setIsModalOpen(false);

        console.log('Connecting to ${walletId}...');
    };

    return (
        <header className="app-header">
            <div className="logo">Arcane Finace</div>
            { /*Nav Bar Item */ }
            <nav>
                {/* */}
            </nav>

            <div className="header-actions">
                <button className="mint-nft-button">Mint NFT</button>
                <button
                    className="connect-wallet-button"
                    onClick={() => setIsModalOpen(true)}               
                >
                    Connect Wallet
                </button>
            </div>

            <WalletModal
                isOpen={isModalOpen}
                onClose={() => setIsModalOpen(false)}
                onWalletSelect={handleWalletSelect}
            />
        </header>
    );
};

export default Header;