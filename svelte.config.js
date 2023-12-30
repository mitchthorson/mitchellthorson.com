import adapter from "@sveltejs/adapter-static";
import { mdsvex } from "mdsvex";

/** @type {import('@sveltejs/kit').Config} */
const config = {
  extensions: [".svelte", ".md", ".svx"],
  preprocess: mdsvex({ extensions: [".md", "svx"] }),
  kit: {
    adapter: adapter({
      pages: "dist",
      assets: "dist",
    }),
    alias: {
      "$components/*": "./src/lib/components/*",
      "$data/*": "./src/data/*",
      "$styles/*": "./src/lib/styles/*",
    },
  },
};

export default config;
