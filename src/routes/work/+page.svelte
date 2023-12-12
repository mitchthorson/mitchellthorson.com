<script>
  import ProjectList from "$components/ProjectList/ProjectList.svelte";
  import Meta from "$components/Meta.svelte";
	import projects from "$data/projects.yml";
</script>
<Meta title="Mitchell Thorson - work" description="See selected projects and published work." url="https://mitchellthorson.com/work"/>
<main class="main-width">
	<h2 class="site-subhead">Selected work</h2>
	<ProjectList {projects} show_images />
</main>
