<script>
  import projects from "$data/projects.yml";
  import social from "$data/social.yml";
  import Meta from "$components/Meta.svelte";
	import ProjectList from "$components/ProjectList/ProjectList.svelte";
	import SocialBox from "$components/SocialBox/SocialBox.svelte";
	import "$styles/index.css";
</script>

<Meta />
<header class="main-width divider-bottom">
  <h2 class="site-header">Mitchell Thorson</h2>
</header>
<section class="site-description main-width divider-bottom">
  <h2 class="site-sub-head">programmer, designer, journalist</h2>
  <p>
    I write code and use data to make charts, maps and other pieces of internet. Currently I am a
    lead data visualization engineer at the <a href="https://www.urban.org/" target="_blank"
      >Urban Institute</a
    >.
  </p>
	<SocialBox social_links={social}/>
</section>
<main class="main-width">
  <h2 class="site-sub-head">selected work</h2>
	<ProjectList {projects} show_images={false}/>
</main>
<footer class="main-width">&copy;Mitchell Thorson</footer>
