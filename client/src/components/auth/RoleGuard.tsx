import { ReactNode } from 'react';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { useLocation } from 'wouter';
import { useAuth } from '@/contexts/AuthContext';
import type { UserRole } from '@shared/schema';

interface RoleGuardProps {
  role?: UserRole;
  children: ReactNode;
  message?: string;
}

export function RoleGuard({ role, children, message }: RoleGuardProps) {
  const { user } = useAuth();
  const [, setLocation] = useLocation();

  if (!user) {
    return (
      <Card className="max-w-lg mx-auto my-16">
        <CardHeader>
          <CardTitle>Sign in required</CardTitle>
          <CardDescription>
            {message ??
              'Please log in so we can tailor the dashboard, as described in the MASSA DeAds workflow.'}
          </CardDescription>
        </CardHeader>
        <CardContent className="flex justify-end">
          <Button onClick={() => setLocation(`/auth/login?next=${encodeURIComponent(window.location.pathname)}`)}>
            Go to sign-in
          </Button>
        </CardContent>
      </Card>
    );
  }

  if (role && user.role !== role) {
    return (
      <Card className="max-w-lg mx-auto my-16 border-destructive/50">
        <CardHeader>
          <CardTitle>Access limited to {role === 'hoster' ? 'Hoster' : 'Developer'} accounts</CardTitle>
          <CardDescription>
            You are currently logged in as {user.role}. Switch roles to explore this dashboard or continue using your own portal.
          </CardDescription>
        </CardHeader>
        <CardContent className="flex gap-3 justify-end">
          <Button variant="outline" onClick={() => setLocation(`/${user.role}/dashboard`)}>
            Go to my dashboard
          </Button>
          <Button onClick={() => setLocation(`/auth/login?next=${encodeURIComponent(window.location.pathname)}`)}>
            Switch role
          </Button>
        </CardContent>
      </Card>
    );
  }

  return <>{children}</>;
}


