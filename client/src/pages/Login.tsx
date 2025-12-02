import { useState } from 'react';
import { useLocation } from 'wouter';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Badge } from '@/components/ui/badge';
import { cn } from '@/lib/utils';
import { useToast } from '@/hooks/use-toast';
import { useAuth } from '@/contexts/AuthContext';
import type { UserRole } from '@shared/schema';

const roleMeta: Record<
  UserRole,
  {
    label: string;
    description: string;
    dashboard: string;
  }
> = {
  hoster: {
    label: 'Hoster / Advertiser',
    description: 'Upload creatives, manage bids, and automate payouts.',
    dashboard: '/hoster/dashboard',
  },
  developer: {
    label: 'Developer / Publisher',
    description: 'Integrate snippets, monitor earnings, and manage sites.',
    dashboard: '/developer/dashboard',
  },
};

export default function Login() {
  const { login, user } = useAuth();
  const { toast } = useToast();
  const [location, setLocation] = useLocation();
  const params = new URLSearchParams(typeof window !== 'undefined' ? window.location.search : '');
  const next = params.get('next');

  const [role, setRole] = useState<UserRole>('hoster');
  const [name, setName] = useState(user?.name ?? '');
  const [email, setEmail] = useState(user?.email ?? '');
  const [company, setCompany] = useState('');

  const handleLogin = () => {
    if (!name.trim() || !email.trim()) {
      toast({
        title: 'Missing information',
        description: 'Please fill in your name and email.',
        variant: 'destructive',
      });
      return;
    }
    login({ name: name.trim(), email: email.trim(), role, company });
    toast({
      title: 'Welcome back!',
      description: `Redirecting to your ${roleMeta[role].label} workspace.`,
    });
    setLocation(next || roleMeta[role].dashboard);
  };

  return (
    <div className="min-h-screen flex items-center justify-center bg-gradient-to-br from-background via-muted/40 to-background px-4 py-16">
      <Card className="w-full max-w-3xl shadow-lg">
        <CardHeader className="space-y-2">
          <Badge className="w-fit">Secure Access</Badge>
          <CardTitle className="text-3xl font-display">Sign in to AdNode</CardTitle>
          <CardDescription>
            Choose your role to unlock the dashboards and automation tools described in the hackathon spec.
          </CardDescription>
        </CardHeader>
        <CardContent className="grid gap-8 md:grid-cols-2">
          <div className="space-y-4">
            <Label>Choose your role</Label>
            <div className="grid gap-3">
              {Object.entries(roleMeta).map(([roleKey, meta]) => (
                <button
                  key={roleKey}
                  type="button"
                  onClick={() => setRole(roleKey as UserRole)}
                  className={cn(
                    'rounded-xl border p-4 text-left transition hover:border-primary',
                    role === roleKey ? 'border-primary bg-primary/5' : 'border-muted',
                  )}
                >
                  <p className="font-semibold">{meta.label}</p>
                  <p className="text-sm text-muted-foreground">{meta.description}</p>
                </button>
              ))}
            </div>
          </div>

          <div className="space-y-4">
            <div className="space-y-2">
              <Label htmlFor="name">Name</Label>
              <Input
                id="name"
                placeholder="Massa Builder"
                value={name}
                onChange={(e) => setName(e.target.value)}
              />
            </div>
            <div className="space-y-2">
              <Label htmlFor="email">Email</Label>
              <Input
                id="email"
                type="email"
                placeholder="you@project.dev"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
              />
            </div>
            <div className="space-y-2">
              <Label htmlFor="company">{role === 'hoster' ? 'Company / Brand' : 'Site / dApp Name'}</Label>
              <Input
                id="company"
                placeholder={role === 'hoster' ? 'DeAds Studios' : 'Orbit Media'}
                value={company}
                onChange={(e) => setCompany(e.target.value)}
              />
            </div>
            <Button className="w-full" onClick={handleLogin}>
              Continue to {roleMeta[role].label}
            </Button>
            <p className="text-xs text-muted-foreground text-center">
              By continuing you agree to the platform terms and privacy policy.
            </p>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}


