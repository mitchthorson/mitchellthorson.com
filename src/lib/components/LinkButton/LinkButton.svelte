<script>
	/** @type {string} */
  export let href;
</script>

<button class="link-button">
  <a {href} >
    <slot />
  </a>
</button>

<style>
.link-button {
	appearance: none;
	background: none;
	border-radius: 7px;
	border: solid 1px var(--color-accent);
	padding: 1rem 0.5rem;
	cursor: pointer;
}
.link-button:hover {
	background: var(--color-accent);
	color: var(--color-background);
}
.link-button:hover, .link-button:hover a {
	color: var(--color-background);
}
</style>
