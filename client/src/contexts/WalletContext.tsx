import {
  createContext,
  useContext,
  useState,
  useEffect,
  ReactNode,
} from 'react';
import { getWallets } from '@massalabs/wallet-provider';
import type { Provider } from '@massalabs/massa-web3';

interface WalletContextType {
  wallet: any | null;
  accountProvider: Provider | null;
  account: { address: string; name?: string } | null;
  isConnecting: boolean;
  isConnected: boolean;
  error: string | null;
  connectWallet: () => Promise<void>;
  disconnectWallet: () => void;
}

const WalletContext = createContext<WalletContextType | undefined>(undefined);

const isBrowser = typeof window !== 'undefined';

export function WalletProvider({ children }: { children: ReactNode }) {
  const [wallet, setWallet] = useState<any | null>(null);
  const [accountProvider, setAccountProvider] = useState<Provider | null>(null);
  const [account, setAccount] = useState<{ address: string; name?: string } | null>(null);
  const [isConnecting, setIsConnecting] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const connectWallet = async () => {
    if (!isBrowser) {
      setError('Wallet connections are only available in the browser.');
      return;
    }

    setIsConnecting(true);
    setError(null);

    try {
      const wallets = await getWallets();

      if (wallets.length === 0) {
        throw new Error('No Massa wallet detected. Install MassaStation or Bearby and refresh.');
      }

      const selectedWallet = wallets[0];
      const connected = await selectedWallet.connect();
      if (!connected) {
        throw new Error('Failed to connect to wallet');
      }

      const accounts = await selectedWallet.accounts();
      if (accounts.length === 0) {
        throw new Error('No accounts found in wallet');
      }

      const primaryAccount = accounts[0];

      setWallet(selectedWallet);
      setAccountProvider(primaryAccount);
      setAccount({
        address: primaryAccount.address,
        name: primaryAccount.accountName,
      });
      if (isBrowser) {
        localStorage.setItem('walletConnected', 'true');
      }
    } catch (err) {
      const errorMessage = err instanceof Error ? err.message : 'Failed to connect wallet';
      setError(errorMessage);
      console.error('Wallet connection error:', err);
    } finally {
      setIsConnecting(false);
    }
  };

  const disconnectWallet = async () => {
    if (wallet && typeof wallet.disconnect === 'function') {
      await wallet.disconnect();
    }
    setWallet(null);
    setAccountProvider(null);
    setAccount(null);
    if (isBrowser) {
      localStorage.removeItem('walletConnected');
    }
  };

  useEffect(() => {
    if (!isBrowser) {
      return;
    }
    const wasConnected = localStorage.getItem('walletConnected');
    if (wasConnected === 'true') {
      connectWallet();
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return (
    <WalletContext.Provider
      value={{
        wallet,
        accountProvider,
        account,
        isConnecting,
        isConnected: !!account,
        error,
        connectWallet,
        disconnectWallet,
      }}
    >
      {children}
    </WalletContext.Provider>
  );
}

export function useWallet() {
  const context = useContext(WalletContext);
  if (context === undefined) {
    throw new Error('useWallet must be used within a WalletProvider');
  }
  return context;
}
