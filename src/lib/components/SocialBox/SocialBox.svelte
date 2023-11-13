<script>
  /** @typedef {Object} SocialLink
   * @property {string} platform
   * @property {string} url
   */
  /** @type {SocialLink[]} */
  export let social_links;
</script>

<section class="social-link-box">
  <div class="inner-wrap">
    <p>Find me around the internet:</p>
    <ul>
      {#each social_links as link}
        <li>
          <a href={link.url} class="social-link" target="_blank">{link.platform}</a>
        </li>
      {/each}
    </ul>
  </div>
</section>

<style>
  .social-link-box {
    margin: 3rem 0;
    /* max-width: 200px; */
    /*border: solid 1px var(--color-accent); */
    /* padding: 1rem;*/
  }
  li {
    margin: 0 0 0 2rem;
		text-indent: -1rem;
  }
  li::before {
    display: inline-block;
    content: "-";
    width: 1em;
  }
</style>
