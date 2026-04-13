<!-- @component ProjectGallery - accessible image carousel with filmstrip thumbnails -->
<script>
  import { IMAGE_BASE_URL } from "$lib/utils/consts.js";

  /** @type {string[]} */
  export let images = [];

  /** @type {string} */
  export let alt_text = "";

  let selectedIndex = 0;

  $: selected = images[selectedIndex];
  $: hasMultiple = images.length > 1;

  function prev() {
    selectedIndex = (selectedIndex - 1 + images.length) % images.length;
  }

  function next() {
    selectedIndex = (selectedIndex + 1) % images.length;
  }

  /** @param {KeyboardEvent} e */
  function handleKeydown(e) {
    if (e.key === "ArrowLeft") {
      e.preventDefault();
      prev();
    } else if (e.key === "ArrowRight") {
      e.preventDefault();
      next();
    }
  }
</script>

<div
  class="gallery"
  role="region"
  aria-roledescription="carousel"
  aria-label={alt_text}
  on:keydown={hasMultiple ? handleKeydown : undefined}
  tabindex={hasMultiple ? 0 : undefined}
>
  <div aria-live="polite" aria-atomic="false">
    <div
      role="group"
      aria-roledescription="slide"
      aria-label="Slide {selectedIndex + 1} of {images.length}"
      class="gallery-selected-container"
      class:single-image={!hasMultiple}
    >
      <picture class="gallery-selected">
        <source srcset="{IMAGE_BASE_URL}/{selected}.avif" type="image/avif">
        <source srcset="{IMAGE_BASE_URL}/{selected}.webp" type="image/webp">
        <source srcset="{IMAGE_BASE_URL}/{selected}.jpg" type="image/jpeg">
        <img src="{IMAGE_BASE_URL}/{selected}.jpg" alt={alt_text} />
      </picture>
    </div>
  </div>

  {#if hasMultiple}
    <div class="gallery-controls">
      <button class="gallery-nav" on:click={prev} aria-label="Previous slide">&#x2190;</button>
      <span class="gallery-counter">{selectedIndex + 1} / {images.length}</span>
      <button class="gallery-nav" on:click={next} aria-label="Next slide">&#x2192;</button>
    </div>

    <div class="gallery-filmstrip" role="group" aria-label="Choose slide">
      {#each images as image, i}
        <button
          class="gallery-thumb"
          class:active={i === selectedIndex}
          on:click={() => selectedIndex = i}
          aria-label="Show slide {i + 1} of {images.length}"
          aria-current={i === selectedIndex ? "true" : undefined}
        >
          <picture>
            <source srcset="{IMAGE_BASE_URL}/{image}.avif" type="image/avif">
            <source srcset="{IMAGE_BASE_URL}/{image}.webp" type="image/webp">
            <source srcset="{IMAGE_BASE_URL}/{image}.jpg" type="image/jpeg">
            <img src="{IMAGE_BASE_URL}/{image}.jpg" alt="" />
          </picture>
        </button>
      {/each}
    </div>
  {/if}
</div>

<style>
  .gallery {
    --border-radius-small: 8px;
    --border-radius-large: 16px;
  }
  .gallery:focus {
    outline: 2px solid var(--color-accent);
    outline-offset: 4px;
    border-radius: var(--border-radius-large);
  }
  .gallery:focus:not(:focus-visible) {
    outline: none;
  }
  .gallery-selected-container.single-image {
    margin-block-end: 2rem;
  }
  .gallery-selected img {
    width: 100%;
    height: auto;
    display: block;
    border-radius: var(--border-radius-large);
  }
  .gallery-controls {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 1rem;
    margin-top: 0.5rem;
  }
  .gallery-nav {
    background: none;
    border: none;
    cursor: pointer;
    font-size: 1.2em;
    color: var(--color-text);
    padding: 0.25em 0.5em;
  }
  .gallery-nav:hover {
    color: var(--color-accent);
  }
  .gallery-counter {
    font-size: 0.75em;
  }
  .gallery-filmstrip {
    display: flex;
    gap: 0.5rem;
    margin-block: 2rem;
    overflow-x: auto;
    scrollbar-width: thin;
    scrollbar-color: var(--color-accent-light) var(--color-background);
  }
  .gallery-filmstrip::-webkit-scrollbar {
    height: 6px;
  }
  .gallery-filmstrip::-webkit-scrollbar-track {
    background: var(--color-background);
  }
  .gallery-filmstrip::-webkit-scrollbar-thumb {
    background: var(--color-accent-light);
    border-radius: 3px;
  }
  .gallery-thumb {
    flex-shrink: 0;
    width: 175px;
    aspect-ratio: 1 / 1;
    padding: 0;
    border: 2px solid transparent;
    background: none;
    cursor: pointer;
    opacity: 0.5;
    transition: opacity 0.15s ease;
    border-radius: var(--border-radius-small);
    overflow: hidden;
  }
  .gallery-thumb:hover {
    opacity: 0.8;
  }
  .gallery-thumb.active {
    border-color: var(--color-accent);
    border-width: 2px;
    opacity: 1;
  }
  .gallery-thumb picture {
    display: block;
    width: 100%;
    height: 100%;
  }
  .gallery-thumb img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    object-position: center;
    display: block;
    border-radius: var(--border-radius-small);
  }
</style>
