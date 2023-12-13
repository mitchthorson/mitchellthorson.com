<script>
  export let data = [];
</script>

<table>
  <thead>
    <tr>
      <th>Year</th>
      <th>Award</th>
    </tr>
  </thead>
  <tbody>
    {#each data as row}
      <tr>
        <td>{row.year}</td>
        <td><a href={row.link} target="_blank">{row.award}</a></td>
      </tr>
    {/each}
  </tbody>
</table>

<style>
  table {
    width: 100%;
    font-family: var(--font-family-alt);
    margin: 0 auto 2rem 0;
  }
  thead th {
    border-bottom: solid 1px var(--color-accent);
  }
  thead th, tbody td {
    text-align: left;
    padding: 0.75rem;
    font-size: 1.2rem;
  }

  thead th {
    font-weight: bold;
  }

  tr:last-child td {
    border-bottom: solid 1px var(--color-accent);
  }

  tbody tr td a {
    color: var(--color-main);
    text-decoration: underline;
  }

</style>
