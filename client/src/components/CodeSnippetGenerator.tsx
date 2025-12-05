import { useState } from 'react';
import { Check, Copy } from 'lucide-react';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { Button } from '@/components/ui/button';
import { Card } from '@/components/ui/card';
import Prism from 'prismjs';
import 'prismjs/components/prism-javascript';
import 'prismjs/components/prism-jsx';
import 'prismjs/components/prism-markup';
import 'prismjs/components/prism-python';
import 'prismjs/components/prism-php';
import { useEffect, useRef } from 'react';

interface CodeSnippetGeneratorProps {
  adId: string | number;
}

export function CodeSnippetGenerator({ adId }: CodeSnippetGeneratorProps) {
  const [copiedTab, setCopiedTab] = useState<string | null>(null);
  const codeRefs = useRef<{ [key: string]: HTMLElement | null }>({});
  const idStr = String(adId);

  const snippets = {
    html: `<!-- Add this to your HTML -->
<div id="massa-ad-${idStr}"></div>
<script src="https://deads.massa.net/sdk.js"></script>
<script>
  MassaAds.display('${idStr}', {
    container: 'massa-ad-${idStr}',
    position: 'center'
  });
</script>`,
    
    react: `// Install: npm install @massa-deads/react
import { MassaAd } from '@massa-deads/react';

function MyComponent() {
  return (
    <MassaAd 
      adId="${idStr}"
      position="center"
      onImpression={(data) => console.log('Impression:', data)}
      onClick={(data) => console.log('Click:', data)}
    />
  );
}`,

    nextjs: `// Install: npm install @massa-deads/react
import { MassaAd } from '@massa-deads/react';

export default function Page() {
  return (
    <div>
      <MassaAd 
        adId="${idStr}"
        position="center"
        className="my-4"
      />
    </div>
  );
}`,

    vue: `<!-- Install: npm install @massa-deads/vue -->
<template>
  <MassaAd 
    ad-id="${idStr}"
    position="center"
    @impression="handleImpression"
    @click="handleClick"
  />
</template>

<script>
import { MassaAd } from '@massa-deads/vue';

export default {
  components: { MassaAd },
  methods: {
    handleImpression(data) {
      console.log('Impression:', data);
    },
    handleClick(data) {
      console.log('Click:', data);
    }
  }
};
</script>`,

    python: `# Install: pip install massa-deads
from massa_deads import MassaAds

# Flask example
@app.route('/')
def index():
    ad_widget = MassaAds.get_widget('${idStr}', position='center')
    return render_template('index.html', ad_widget=ad_widget)

# Template (Jinja2)
# {{ ad_widget|safe }}`,

    php: `<?php
// Install: composer require massa-deads/php-sdk
require 'vendor/autoload.php';

use MassaDeads\\Client;

$client = new Client();
$adWidget = $client->getAdWidget('${idStr}', [
    'position' => 'center',
    'className' => 'my-ad'
]);

echo $adWidget;
?>`,
  };

  useEffect(() => {
    Object.keys(snippets).forEach((lang) => {
      const element = codeRefs.current[lang];
      if (element) {
        const code = element.querySelector('code');
        if (code) {
          try {
            // Prefer highlightElement (works with DOM nodes/plugins)
            // but fall back to highlight() if something in Prism plugins
            // isn't available in the runtime.
            Prism.highlightElement(code as HTMLElement);
          } catch (err) {
            try {
              const mappedLang =
                lang === 'html' ? 'markup' : lang === 'nextjs' || lang === 'react' ? 'jsx' : lang;
              const text = code.textContent || code.innerText || '';
              // @ts-ignore - Prism typings are sometimes incomplete
              Prism.highlight(text, (Prism.languages as any)[mappedLang] || Prism.languages.markup, mappedLang);
            } catch (err2) {
              // swallow - highlighting failure should not break the page
              // but log to console for debugging
              // eslint-disable-next-line no-console
              console.error('Prism highlight failed', err2);
            }
          }
        }
      }
    });
  }, [adId]);

  const copyToClipboard = async (text: string, tab: string) => {
    try {
      await navigator.clipboard.writeText(text);
      setCopiedTab(tab);
      setTimeout(() => setCopiedTab(null), 2000);
    } catch (err) {
      console.error('Failed to copy:', err);
    }
  };

  return (
    <Card className="p-6">
      <div className="space-y-4">
        <div>
          <h3 className="font-semibold text-lg">Integration Code</h3>
          <p className="text-sm text-muted-foreground">
            Choose your framework and copy the code snippet
          </p>
        </div>

        <Tabs defaultValue="html" className="w-full">
          <TabsList className="grid w-full grid-cols-3 lg:grid-cols-6">
            <TabsTrigger value="html">HTML/JS</TabsTrigger>
            <TabsTrigger value="react">React</TabsTrigger>
            <TabsTrigger value="nextjs">Next.js</TabsTrigger>
            <TabsTrigger value="vue">Vue</TabsTrigger>
            <TabsTrigger value="python">Python</TabsTrigger>
            <TabsTrigger value="php">PHP</TabsTrigger>
          </TabsList>

          {Object.entries(snippets).map(([lang, code]) => (
            <TabsContent key={lang} value={lang} className="mt-4">
              <div className="relative">
                <Button
                  size="sm"
                  variant="outline"
                  className="absolute right-2 top-2 z-10"
                  onClick={() => copyToClipboard(code, lang)}
                  data-testid={`button-copy-${lang}`}
                >
                  {copiedTab === lang ? (
                    <>
                      <Check className="h-4 w-4 mr-1" />
                      Copied
                    </>
                  ) : (
                    <>
                      <Copy className="h-4 w-4 mr-1" />
                      Copy
                    </>
                  )}
                </Button>
                <pre
                  ref={(el) => (codeRefs.current[lang] = el)}
                  className="rounded-lg bg-muted p-4 overflow-x-auto text-sm"
                >
                  <code className={`language-${lang === 'html' ? 'markup' : lang === 'nextjs' || lang === 'react' ? 'jsx' : lang}`}>
                    {code}
                  </code>
                </pre>
              </div>
            </TabsContent>
          ))}
        </Tabs>
      </div>
    </Card>
  );
}
