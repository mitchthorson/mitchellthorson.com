<script>
  import ProjectItem from "./ProjectItem.svelte";

  /** @type {import("./ProjectItem.svelte").Project[]} */
  export let projects = [];

	/** @type {number | null} */
	export let limit = null;

  export let show_images = true;

	export let filter_highlights = false;

	const filtered_projects = projects.filter(p => !filter_highlights || p.highlight);


</script>

<ul class="project-list">
  {#each filtered_projects as project, i}
    {#if !limit || i < limit}
      <ProjectItem {project} {show_images} />
    {/if}
  {/each}
</ul>

<style>
  @media (min-width: 540px) {
    .project-list {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      column-gap: 2rem;
      row-gap: 2rem;
    }
  }
</style>
