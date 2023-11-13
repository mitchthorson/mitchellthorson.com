<script>
  import Nav from "$components/Nav/Nav.svelte";
  import "$styles/index.css";
</script>

<Nav />
<div class="content-wrap">
  <slot />
	<footer class="main-width">&copy;2023 Mitchell Thorson</footer>
</div>

<style>
  .content-wrap {
    padding: 20px;
    margin: 0 auto;
    max-width: var(--content-width);
  }
</style>
