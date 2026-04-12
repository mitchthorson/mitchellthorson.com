<script>
  import { timeFormat } from "d3-time-format";
  import { IMAGE_BASE_URL } from "$lib/utils/consts.js";
  import Meta from "$components/Meta.svelte";
  import ProjectGallery from "$components/ProjectGallery/ProjectGallery.svelte";

  /** @type {import('./$types').PageData} */
  export let data;

  $: ({ project, content, meta } = data);

  const formatTime = timeFormat("%B %Y");
</script>

<Meta
  title="Mitchell Thorson - {project.title}"
  description={project.alt_text}
  url="https://mitchellthorson.com/work/{project.slug}"
  social_image="{IMAGE_BASE_URL}/{project.image}.jpg"
/>

<main class="main-width project-page">
  <header class="project-header">
    <h2 class="site-subhead">{project.title}</h2>
    <p class="project-meta">
      {formatTime(project.date)}
      <span class="project-org">{project.organization}</span>
    </p>
    <p><a href={project.url} target="_blank" class="project-external-link">View project</a></p>
  </header>

  {#if meta.skills && meta.skills.length}
    <ul class="project-skills">
      {#each meta.skills as skill}
        <li class="project-skill-tag">{skill}</li>
      {/each}
    </ul>
  {/if}

  {#if meta.gallery && meta.gallery.length}
    <ProjectGallery images={meta.gallery} alt_text={project.alt_text} />
  {/if}

  <div class="project-body">
    <svelte:component this={content} />
  </div>

</main>

<style>
  .project-header {
    margin-bottom: 2rem;
  }
  .project-meta {
    font-size: 0.8em;
    margin-bottom: 0.5rem;
  }
  .project-org {
    font-style: italic;
  }
  .project-external-link {
    font-size: 0.8em;
  }
  .project-skills {
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
    margin-bottom: 2rem;
    list-style: none;
    padding: 0;
  }
  .project-skill-tag {
    margin: 0;
    text-indent: 0;
    font-size: 0.7em;
    padding: 0.2em 0.6em;
    border: 1px solid var(--color-accent);
    color: var(--color-accent);
  }
  .project-skill-tag::before {
    content: none;
  }
  .project-body {
    margin-bottom: 2rem;
  }
</style>
