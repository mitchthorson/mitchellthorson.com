<script>
  /** @type {string} */
  export let href;
</script>

<a {href}>
  <button class="link-button">
    <slot />
  </button>
</a>

<style>
  .link-button {
    appearance: none;
    background: none;
    border-radius: 3px;
    border: solid 1px var(--color-accent);
    padding: 1.5rem 1rem;
    cursor: pointer;
		font-size: 1.2rem;
		font-weight: bold;
  }
	a .link-button {
		color: var(--color-accent);
	}
  .link-button:hover {
    background: var(--color-accent);
    color: var(--color-background);
  }
  .link-button:hover,
  a:hover .link-button:hover {
    color: var(--color-background);
  }
</style>
