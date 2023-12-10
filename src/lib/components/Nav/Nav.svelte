<script>
  const nav_links = [
    { label: "home", url: "/" },
    { label: "about", url: "/about" },
    { label: "work", url: "/work" },
    // { label: "photos", url: "/blog" },
  ];
</script>

<nav>
  {#each nav_links as link}
    <p><a href={link.url}>{link.label}</a></p>
  {/each}
</nav>

<style>
  nav {
    display: flex;
    justify-content: flex-end;
		max-width: var(--content-width);
		margin: 0 auto;
		padding: 20px;
  }
  nav p {
    margin-right: 10px;
  }
  nav a {
    text-decoration: none;
  }
  nav a:hover {
    text-decoration: underline;
  }
</style>
