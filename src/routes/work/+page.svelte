<script>
  import ProjectList from "$components/ProjectList/ProjectList.svelte";
	import projects from "$data/projects.yml";
</script>
<main class="main-width">
	<h1>Selected work</h1>
	<ProjectList {projects} show_images />
</main>
