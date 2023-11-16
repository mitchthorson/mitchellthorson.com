<script>
  import projects from "$data/projects.yml";
  import social from "$data/social.yml";
  import Meta from "$components/Meta.svelte";
	import ProjectList from "$components/ProjectList/ProjectList.svelte";
	import SocialBox from "$components/SocialBox/SocialBox.svelte";
	import LinkButton from "$components/LinkButton/LinkButton.svelte";
</script>

<Meta />
<section class="site-description main-width divider-bottom">
  <h2 class="site-subhead">Hi, I'm Mitchell Thorson</h2>
  <p>
	I’m an award winning data visualization specialist, web developer and information designer interested in sharing knowledge and provoking curiosity. I am currently a lead data visualization engineer at the <a href="https://www.urban.org" target="_blank">Urban Institute</a>, where I help translate public policy research into charts, maps and interactive web tools. Previously I was a senior visual journalist on the <a href="https://www.usatoday.com/graphics" target="_blank">USA Today graphics team.</a>
  </p>
	</section>
	<section>
  <h2 class="site-subhead">Find me around the internet:</h2>
	<SocialBox social_links={social}/>
</section>
<main class="main-width">
  <h2 class="site-subhead">Recent work:</h2>
	<ProjectList {projects} show_images filter_highlights limit={6}/>
	<div class="button-wrap">
		<LinkButton href="/work">See more work</LinkButton>
	</div>
</main>
<style>
.button-wrap {
	text-align: center;
	margin: 2rem 0;
}
section {
	margin-bottom: 3rem;
}

</style>
