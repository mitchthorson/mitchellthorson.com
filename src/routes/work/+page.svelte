<script>
  import ProjectList from "$components/ProjectList/ProjectList.svelte";
	import projects from "$data/projects.yml";
</script>
<main class="main-width">
	<h2 class="site-subhead">Selected work</h2>
	<ProjectList {projects} show_images />
</main>
