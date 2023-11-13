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
</script>

<li class="project-item">
  {#if show_images}
    <img src={project.image} alt={project.alt_text} class="project-item-thumbnail" />
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
  .project-item-thumbnail {
    width: 100%;
  }
	.project-item-text-wrap {
		margin-top: 1rem;
		font-size: 0.8em;
		line-height: 1.2;
	}
  .project-item-title {
    font-weight: bold;
		margin-bottom: 0.5em;
  }
  .project-org {
    font-style: italic;
  }
</style>
