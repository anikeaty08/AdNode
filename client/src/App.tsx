import { Switch, Route } from "wouter";
import { queryClient } from "./lib/queryClient";
import { QueryClientProvider } from "@tanstack/react-query";
import { Toaster } from "@/components/ui/toaster";
import { TooltipProvider } from "@/components/ui/tooltip";
import { WalletProvider } from "@/contexts/WalletContext";
import { ThemeProvider } from "@/contexts/ThemeContext";
import { AuthProvider } from "@/contexts/AuthContext";
import { Navbar } from "@/components/Navbar";
import Landing from "@/pages/Landing";
import Onboarding from "@/pages/Onboarding";
import Marketplace from "@/pages/Marketplace";
import HosterDashboard from "@/pages/HosterDashboard";
import DeveloperDashboard from "@/pages/DeveloperDashboard";
import NotFound from "@/pages/not-found";
import InnovationHub from "@/pages/InnovationHub";
import Docs from "@/pages/Docs";
import Login from "@/pages/Login";
import { RoleGuard } from "@/components/auth/RoleGuard";

function Router() {
  return (
    <Switch>
      <Route path="/" component={Landing} />
      <Route path="/auth/login" component={Login} />
      <Route
        path="/onboarding"
        component={() => (
          <RoleGuard>
            <Onboarding />
          </RoleGuard>
        )}
      />
      <Route path="/marketplace" component={Marketplace} />
      <Route
        path="/hoster/dashboard"
        component={() => (
          <RoleGuard role="hoster">
            <HosterDashboard />
          </RoleGuard>
        )}
      />
      <Route
        path="/developer/dashboard"
        component={() => (
          <RoleGuard role="developer">
            <DeveloperDashboard />
          </RoleGuard>
        )}
      />
      <Route path="/innovation" component={InnovationHub} />
      <Route path="/docs" component={Docs} />
      <Route component={NotFound} />
    </Switch>
  );
}

function App() {
  return (
    <QueryClientProvider client={queryClient}>
      <TooltipProvider>
        <ThemeProvider>
          <AuthProvider>
            <WalletProvider>
              <div className="min-h-screen flex flex-col">
                <Navbar />
                <main className="flex-1">
                  <Router />
                </main>
              </div>
              <Toaster />
            </WalletProvider>
          </AuthProvider>
        </ThemeProvider>
      </TooltipProvider>
    </QueryClientProvider>
  );
}

export default App;
