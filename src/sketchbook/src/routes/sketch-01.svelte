<script context="module">
	export async function preload(page, session) {
    const pageData = { page, session };
    return { pageData };
	}
</script>
<script>
  import ShapeViz from '../components/shape-viz.svelte';
  export let pageData;
</script>
<div>
  <ShapeViz />
</div>