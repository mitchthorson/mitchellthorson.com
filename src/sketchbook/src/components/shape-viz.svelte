<script>
  import { onMount } from 'svelte';

  let canvasEl;
  let illustration;
  let isSpinning = true;
  let width = 600;
  let height = 300;

  function animate() {
    illustration.rotate.y = illustration.rotate.y + 0.03;
    illustration.updateRenderGraph();
    if (isSpinning) {
      requestAnimationFrame(animate);
    }
  }

  function draw(el, Zdog) {
    illustration = new Zdog.Illustration({
      element: canvasEl,
      // zoom: 2,
      dragRotate: true,
    });

    new Zdog.Ellipse({
      addTo: illustration,
      diameter: 80,
      stroke: 20,
      color: "tomato"
    });

    illustration.updateRenderGraph();
    animate();
  }

  onMount(async () => {
    const Zdog = await import('zdog');
    draw(canvasEl, Zdog.default);
  })
</script>
<style>
  canvas {
    background: papayawhip;
    margin: 0 auto;
    display: block;
  }
</style>
<canvas width={width} height={height} bind:this={canvasEl}></canvas>