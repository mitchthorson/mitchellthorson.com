import { error } from "@sveltejs/kit";
import projects from "$data/projects.yml";

const modules = import.meta.glob("/src/content/projects/*.md");

/** @type {import('./$types').PageLoad} */
export async function load({ params }) {
  const project = projects.find((p) => p.slug === params.slug);
  if (!project) error(404);

  const path = `/src/content/projects/${params.slug}.md`;
  const resolver = modules[path];
  if (!resolver) error(404);

  const mod = await resolver();

  return {
    project,
    content: mod.default,
    meta: mod.metadata,
  };
}

export function entries() {
  return projects.filter((p) => p.slug).map((p) => ({ slug: p.slug }));
}
