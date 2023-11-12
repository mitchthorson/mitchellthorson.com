import adapter from "@sveltejs/adapter-static";

/** @type {import('@sveltejs/kit').Config} */
const config = {
  kit: {
    adapter: adapter({
			pages: "dist",
			assets: "dist",
		}),
    alias: {
      "$components/*": "./src/lib/components/*",
      "$data/*": "./src/data/*",
    },
  },
};

export default config;
