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
  <p>
	Hi, I’m Mitchell Thorson! I’m an award winning data visualization specialist, programmer and information designer. I am currently a lead data visualization engineer at the <a href="https://www.urban.org" target="_blank">Urban Institute</a>, where I help translate public policy research into charts, maps and interactive web tools. Previously I was a senior visual journalist on the <a href="https://www.usatoday.com/graphics" target="_blank">USA Today graphics team.</a>
  </p>
	<SocialBox social_links={social}/>
</section>
<main class="main-width">
  <h2 class="site-sub-head">recent work:</h2>
	<ProjectList {projects} show_images filter_highlights limit={6}/>
	<div class="button-wrap">
		<LinkButton href="/work">See more projects</LinkButton>
	</div>
</main>
<style>
.button-wrap {
	text-align: center;
	margin: 2rem 0;
}
</style>
