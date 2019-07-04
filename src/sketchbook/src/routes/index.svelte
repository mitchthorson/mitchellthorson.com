<script context="module">
	export async function preload(page) {
		const res = await this.fetch("./entries.json");
		const entries = await res.json();
		return { entries };
	}
</script>

<script>
	export let entries;
</script>

<style>
	.entry__list {
		list-style: none;
		padding: 0;
	}
</style>

<svelte:head>
	<title>Sketchbook index</title>
</svelte:head>

<h1>Sketches</h1>

<ul class="entry__list">
	{#each entries as entry}
		<li><a href={entry.slug}>{entry.title}</a></li>
	{/each}
</ul>

