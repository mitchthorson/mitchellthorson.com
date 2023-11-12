
<script>
  import ProjectItem from "./ProjectItem.svelte";

  /** @type {import("./ProjectItem.svelte").Project[]} */
  export let projects = [];

	export let show_images = true;
</script>

<ul class="project-list">
  {#each projects as project}
    <ProjectItem {project} {show_images}/>
  {/each}
</ul>
