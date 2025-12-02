import { useEffect, useState } from 'react';
import { useLocation } from 'wouter';
import { motion } from 'framer-motion';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { Badge } from '@/components/ui/badge';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';
import { Form, FormControl, FormField, FormItem, FormLabel, FormMessage } from '@/components/ui/form';
import { useWallet } from '@/contexts/WalletContext';
import { useAuth } from '@/contexts/AuthContext';
import { Megaphone, Code2, ArrowRight, CheckCircle2 } from 'lucide-react';
import { useToast } from '@/hooks/use-toast';
import type { UserRole, AdCategory } from '@shared/schema';
import {
  registerDeveloperOnChain,
  registerHosterOnChain,
} from '@/lib/massa-contract';

const categories: AdCategory[] = ['Tech', 'AI', 'Crypto', 'Gaming', 'Finance', 'Education', 'Health', 'Entertainment'];

const onboardingSchema = z.object({
  name: z.string().min(2, 'Name must be at least 2 characters'),
  email: z.string().email('Invalid email address').optional().or(z.literal('')),
  website: z.string().url('Invalid URL').optional().or(z.literal('')),
  businessName: z.string().optional(),
  categories: z.array(z.string()).min(1, 'Select at least one category'),
});

type OnboardingForm = z.infer<typeof onboardingSchema>;

export default function Onboarding() {
  const [, setLocation] = useLocation();
  const { accountProvider } = useWallet();
  const { user } = useAuth();
  const { toast } = useToast();
  const [step, setStep] = useState<'role' | 'details'>(user?.role ? 'details' : 'role');
  const [selectedRole, setSelectedRole] = useState<UserRole | null>(user?.role ?? null);
  const [selectedCategories, setSelectedCategories] = useState<string[]>([]);

  const form = useForm<OnboardingForm>({
    resolver: zodResolver(onboardingSchema),
    defaultValues: {
      name: user?.name ?? '',
      email: user?.email ?? '',
      website: '',
      businessName: '',
      categories: [],
    },
  });

  useEffect(() => {
    if (user?.role) {
      setSelectedRole(user.role);
      setStep('details');
    }
  }, [user]);

  const handleRoleSelect = (role: UserRole) => {
    setSelectedRole(role);
    setStep('details');
  };

  const toggleCategory = (category: string) => {
    const newCategories = selectedCategories.includes(category)
      ? selectedCategories.filter(c => c !== category)
      : [...selectedCategories, category];
    
    setSelectedCategories(newCategories);
    form.setValue('categories', newCategories);
  };

  const onSubmit = async (data: OnboardingForm) => {
    try {
      if (!selectedRole) {
        throw new Error('Select a role before continuing.');
      }
      if (selectedRole === 'hoster') {
        await registerHosterOnChain(accountProvider, {
          name: data.name,
          businessName: data.businessName ?? '',
          categories: selectedCategories,
        });
      } else {
        await registerDeveloperOnChain(accountProvider, {
          name: data.name,
          website: data.website ?? '',
          categories: selectedCategories,
        });
      }
      
      toast({
        title: 'Profile created successfully!',
        description: 'Redirecting to your dashboard...',
      });

      setTimeout(() => {
        setLocation(selectedRole === 'hoster' ? '/hoster/dashboard' : '/developer/dashboard');
      }, 1500);
    } catch (error) {
      toast({
        title: 'Error',
        description: 'Failed to create profile. Please try again.',
        variant: 'destructive',
      });
    }
  };

  return (
    <div className="min-h-screen flex items-center justify-center p-4 bg-gradient-to-br from-background via-muted/30 to-background">
      <div className="w-full max-w-4xl">
        {step === 'role' ? (
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5 }}
          >
            <div className="text-center mb-10">
              <h1 className="font-display font-bold text-4xl mb-3">Welcome to AdNode</h1>
              <p className="text-base sm:text-lg text-muted-foreground">
                Choose your role to get started in just a few steps.
              </p>
            </div>

            <div className="grid md:grid-cols-2 gap-6">
              <Card
                className="cursor-pointer hover-elevate active-elevate-2 transition-all duration-200 hover:shadow-xl"
                onClick={() => handleRoleSelect('hoster')}
                data-testid="card-role-hoster"
              >
                <CardHeader className="text-center pb-4">
                  <div className="mx-auto h-20 w-20 rounded-full bg-primary/10 flex items-center justify-center mb-4">
                    <Megaphone className="h-10 w-10 text-primary" />
                  </div>
                  <CardTitle className="text-2xl font-display">I'm a Hoster</CardTitle>
                  <CardDescription className="text-base">
                    Create and manage advertising campaigns
                  </CardDescription>
                </CardHeader>
                <CardContent className="space-y-3">
                  <div className="flex items-start gap-2">
                    <CheckCircle2 className="h-5 w-5 text-primary shrink-0 mt-0.5" />
                    <p className="text-sm text-muted-foreground">
                      Upload ads with images, videos, or HTML
                    </p>
                  </div>
                  <div className="flex items-start gap-2">
                    <CheckCircle2 className="h-5 w-5 text-primary shrink-0 mt-0.5" />
                    <p className="text-sm text-muted-foreground">
                      Set budget and payment models (CPC/CPM)
                    </p>
                  </div>
                  <div className="flex items-start gap-2">
                    <CheckCircle2 className="h-5 w-5 text-primary shrink-0 mt-0.5" />
                    <p className="text-sm text-muted-foreground">
                      Track real-time analytics and performance
                    </p>
                  </div>
                </CardContent>
              </Card>

              <Card
                className="cursor-pointer hover-elevate active-elevate-2 transition-all duration-200 hover:shadow-xl"
                onClick={() => handleRoleSelect('developer')}
                data-testid="card-role-developer"
              >
                <CardHeader className="text-center pb-4">
                  <div className="mx-auto h-20 w-20 rounded-full bg-primary/10 flex items-center justify-center mb-4">
                    <Code2 className="h-10 w-10 text-primary" />
                  </div>
                  <CardTitle className="text-2xl font-display">I'm a Developer</CardTitle>
                  <CardDescription className="text-base">
                    Integrate ads and earn from your website
                  </CardDescription>
                </CardHeader>
                <CardContent className="space-y-3">
                  <div className="flex items-start gap-2">
                    <CheckCircle2 className="h-5 w-5 text-primary shrink-0 mt-0.5" />
                    <p className="text-sm text-muted-foreground">
                      Browse and select high-paying ad campaigns
                    </p>
                  </div>
                  <div className="flex items-start gap-2">
                    <CheckCircle2 className="h-5 w-5 text-primary shrink-0 mt-0.5" />
                    <p className="text-sm text-muted-foreground">
                      Easy integration with code snippets
                    </p>
                  </div>
                  <div className="flex items-start gap-2">
                    <CheckCircle2 className="h-5 w-5 text-primary shrink-0 mt-0.5" />
                    <p className="text-sm text-muted-foreground">
                      Automatic daily payouts to your wallet
                    </p>
                  </div>
                </CardContent>
              </Card>
            </div>
          </motion.div>
        ) : (
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5 }}
          >
            <Card>
              <CardHeader>
                <CardTitle className="font-display text-3xl">Complete Your Profile</CardTitle>
                <CardDescription>
                  Tell us about yourself to get started as a {selectedRole}
                </CardDescription>
              </CardHeader>
              <CardContent>
                <Form {...form}>
                  <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-6">
                    <FormField
                      control={form.control}
                      name="name"
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Name *</FormLabel>
                          <FormControl>
                            <Input placeholder="Your name" {...field} data-testid="input-name" />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />

                    <FormField
                      control={form.control}
                      name="email"
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Email (Optional)</FormLabel>
                          <FormControl>
                            <Input type="email" placeholder="your@email.com" {...field} data-testid="input-email" />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />

                    {selectedRole === 'developer' && (
                      <FormField
                        control={form.control}
                        name="website"
                        render={({ field }) => (
                          <FormItem>
                            <FormLabel>Website (Optional)</FormLabel>
                            <FormControl>
                              <Input placeholder="https://yourwebsite.com" {...field} data-testid="input-website" />
                            </FormControl>
                            <FormMessage />
                          </FormItem>
                        )}
                      />
                    )}

                    {selectedRole === 'hoster' && (
                      <FormField
                        control={form.control}
                        name="businessName"
                        render={({ field }) => (
                          <FormItem>
                            <FormLabel>Business Name (Optional)</FormLabel>
                            <FormControl>
                              <Input placeholder="Your business name" {...field} data-testid="input-business" />
                            </FormControl>
                            <FormMessage />
                          </FormItem>
                        )}
                      />
                    )}

                    <FormField
                      control={form.control}
                      name="categories"
                      render={() => (
                        <FormItem>
                          <FormLabel>Categories * (Select at least one)</FormLabel>
                          <div className="flex flex-wrap gap-2 mt-2">
                            {categories.map((category) => (
                              <Badge
                                key={category}
                                variant={selectedCategories.includes(category) ? 'default' : 'outline'}
                                className="cursor-pointer px-4 py-2 hover-elevate active-elevate-2"
                                onClick={() => toggleCategory(category)}
                                data-testid={`badge-category-${category.toLowerCase()}`}
                              >
                                {category}
                              </Badge>
                            ))}
                          </div>
                          <FormMessage />
                        </FormItem>
                      )}
                    />

                    <div className="flex gap-4 pt-4">
                      <Button
                        type="button"
                        variant="outline"
                        onClick={() => setStep('role')}
                        className="flex-1"
                      >
                        Back
                      </Button>
                      <Button type="submit" className="flex-1 gap-2" data-testid="button-complete-profile">
                        Complete Profile
                        <ArrowRight className="h-4 w-4" />
                      </Button>
                    </div>
                  </form>
                </Form>
              </CardContent>
            </Card>
          </motion.div>
        )}
      </div>
    </div>
  );
}
