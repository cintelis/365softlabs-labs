import nextra from "nextra";

const withNextra = nextra({
  contentDirBasePath: "/docs"
});

/** @type {import('next').NextConfig} */
const nextConfig = {
  output: "export",
  images: {
    unoptimized: true
  }
};

export default withNextra(nextConfig);
