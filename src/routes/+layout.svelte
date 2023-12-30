<script>
  import Nav from "$components/Nav/Nav.svelte";
  import "$styles/index.css";
</script>

<Nav />
<div class="content-wrap">
  <slot />
  <footer class="main-width site-footer">
    <p>&copy;2023 Mitchell Thorson</p>
  </footer>
</div>

<style>
  .content-wrap {
    padding: 30px;
    margin: 0 auto;
    max-width: var(--content-width);
  }

  footer {
    margin-top: 2rem;
    padding-top: 2rem;
    display: flex;
    justify-content: space-between;
    border-top: solid 1px var(--color-accent);
  }

  @media(min-width: 768px) {
    .content-wrap {
      padding: 20px;
    }
  }
    
</style>
