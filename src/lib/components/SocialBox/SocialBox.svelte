<script>
  /** @typedef {Object} SocialLink
   * @property {string} platform
   * @property {string} url
   */
  /** @type {SocialLink[]} */
  export let social_links;
</script>

<ul>
  {#each social_links as link}
    <li>
      <a href={link.url} class="social-link" target="_blank">{link.platform}</a>
    </li>
  {/each}
</ul>

<style>
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
