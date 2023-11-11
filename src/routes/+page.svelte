<script>
  import projects from "$data/projects.yml";
  import social from "$data/social.yml";
  import Meta from "$components/Meta.svelte";
  import "$lib/index.css";
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
  <p>
    {#each social as link}
      <a href={link.url} class="social-link" target="_blank">{link.platform}</a>&nbsp;
    {/each}
  </p>
</section>
<main class="main-width">
  <h2 class="site-sub-head">selected work</h2>
  <ul class="project-list">
    {#each projects as project}
      <li class="project-list-item">
        <img src={project.image} alt={project.alt_text} class="project-list-item-thumbnail" />
        <div class="project-list-item-text-wrap">
          <h4 class="project-list-item-date">{project.date}</h4>
          <a href={project.url} class="project-list-item-link" target="_blank">
            <h3 class="project-list-item-title">{project.title}</h3></a
          >
        </div>
      </li>
    {/each}
  </ul>
</main>
<footer class="main-width">&copy;Mitchell Thorson</footer>
