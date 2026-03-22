import { Layout, Navbar, Footer } from "nextra-theme-docs";
import { Head, getPageMap } from "nextra/components";

export const metadata = {
  title: {
    default: "365Soft Labs",
    template: "%s | 365Soft Labs"
  },
  description: "Installer and docs for 365Soft Labs CLI"
};

export default async function RootLayout({ children }) {
  const pageMap = await getPageMap();

  return (
    <html lang="en">
      <Head />
      <body>
        <Layout
          navbar={<Navbar logo={<b>365Soft Labs</b>} />}
          footer={<Footer>365Soft Labs</Footer>}
          pageMap={pageMap}
          docsRepositoryBase="https://github.com/cintelis/365soft-agent-cli"
        >
          {children}
        </Layout>
      </body>
    </html>
  );
}
