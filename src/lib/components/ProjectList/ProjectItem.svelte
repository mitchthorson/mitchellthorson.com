<!-- @component ProjectItem a list item that represents a single project -->
<script context="module">
  /** @typedef {Object} Project
   * @property {string} title
   * @property {Date} date
   * @property {string} url
   * @property {string} image
   * @property {string} alt_text
   * @property {string} organization
   */
</script>

<script>
  import { timeFormat } from "d3-time-format";
  /** @type {Project} */
  export let project;

  export let show_images = true;

  const formatTime = timeFormat("%B %Y");

  const image_base = "https://media.mitchellthorson.com/projects"
</script>

<li class="project-item">
  {#if show_images}
    <picture class="project-item-thumbnail">
      <!-- AVIF image for browsers that support AVIF -->
      <source srcset="{image_base}/{project.image}.avif" type="image/avif">

      <!-- WebP image for browsers that support WebP -->
      <source srcset="{image_base}/{project.image}.webp" type="image/webp">

      <!-- JPEG image for browsers that do not support WebP -->
      <source srcset="{image_base}/{project.image}.jpg" type="image/jpeg">

      <!-- Fallback image for browsers that do not support the <picture> element -->
      <img src="{image_base}/{project.image}.jpg" alt={project.alt_text} width="600" height="600">
    </picture>

    <!-- <img src={project.image} alt={project.alt_text} class="project-item-thumbnail" /> -->
  {/if}
  <div class="project-item-text-wrap">
    <h3 class="project-item-title">
      <a href={project.url} class="project-list-item-link" target="_blank">{project.title}</a>
    </h3>
    <p class="project-item-info">
      {formatTime(project.date)} <span class="project-org">{project.organization}</span>
    </p>
  </div>
</li>

<style>
  li.project-item {
    margin: 0;
    text-indent: 0;
    width: 100%;
  }
  li.project-item::before {
    content: none;
  }
  .project-item-thumbnail {
    width: 100%;
    max-width: 100%
  }
  .project-item-thumbnail img {
    max-width: 100%;
    height: auto;
  }
	.project-item-text-wrap {
		margin-top: 1rem;
		font-size: 0.8em;
		line-height: 1.4;
	}
  .project-item-title {
    font-weight: bold;
		margin-bottom: 0.5em;
  }
  .project-org {
    font-style: italic;
  }
  .project-item-info {
    margin: 0;
  }
</style>
