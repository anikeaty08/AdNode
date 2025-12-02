import { Wallet, Loader2, AlertCircle } from 'lucide-react';
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Alert, AlertDescription } from '@/components/ui/alert';
import { useWallet } from '@/contexts/WalletContext';
import { useEffect } from 'react';

interface WalletConnectionModalProps {
  open: boolean;
  onClose: () => void;
}

export function WalletConnectionModal({ open, onClose }: WalletConnectionModalProps) {
  const { connectWallet, isConnecting, error, isConnected } = useWallet();

  useEffect(() => {
    if (isConnected) {
      onClose();
    }
  }, [isConnected, onClose]);

  const handleConnect = async () => {
    await connectWallet();
  };

  return (
    <Dialog open={open} onOpenChange={onClose}>
      <DialogContent className="sm:max-w-md" data-testid="modal-wallet-connection">
        <DialogHeader>
          <DialogTitle className="font-display text-2xl">Connect Wallet</DialogTitle>
          <DialogDescription>
            Connect your Massa wallet to access the platform
          </DialogDescription>
        </DialogHeader>

        <div className="space-y-4 py-4">
          {error && (
            <Alert variant="destructive">
              <AlertCircle className="h-4 w-4" />
              <AlertDescription>{error}</AlertDescription>
            </Alert>
          )}

          <div className="space-y-3">
            <Button
              onClick={handleConnect}
              disabled={isConnecting}
              className="w-full h-auto flex-col gap-3 py-6 hover-elevate active-elevate-2"
              variant="outline"
              data-testid="button-connect-massastation"
            >
              <div className="flex items-center gap-3 w-full">
                <div className="h-12 w-12 rounded-lg bg-primary/10 flex items-center justify-center">
                  <Wallet className="h-6 w-6 text-primary" />
                </div>
                <div className="flex-1 text-left">
                  <div className="font-semibold">MassaStation / Bearby</div>
                  <div className="text-sm text-muted-foreground">
                    Connect with your Massa wallet
                  </div>
                </div>
                {isConnecting && <Loader2 className="h-5 w-5 animate-spin" />}
              </div>
            </Button>
          </div>

          <div className="text-center text-sm text-muted-foreground">
            Don't have a wallet?{' '}
            <a
              href="https://massa.net"
              target="_blank"
              rel="noopener noreferrer"
              className="text-primary hover:underline"
            >
              Get MassaStation
            </a>
          </div>
        </div>
      </DialogContent>
    </Dialog>
  );
}
