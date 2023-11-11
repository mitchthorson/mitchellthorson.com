import { sveltekit } from "@sveltejs/kit/vite";
import yaml from "@rollup/plugin-yaml";
import { defineConfig } from "vite";

export default defineConfig({
  plugins: [sveltekit(), yaml()],
});
