<script>
  // all the props

  /** @type {string} */
  export let title = "Mitchell Thorson";
  /** @type {string} */
  export let url = "https://mitchellthorson.com";
  /** @type {string} */
  export let social_image = "https://media.mitchellthorson.com/projects/project-promo.jpg";
  /** @type {string} */
  export let description = "Mitchell is a data visualization specialist, web developer and information designer."



  $: schema_meta = {
    "@context": "http://schema.org",
    "@type": "CreativeWork",
    "author": { "@type": "Person", "name": "Mitchell Thorson" },
    "image": social_image
  };

  $: schema_meta_markup = `<script type="application/ld+json">${JSON.stringify(
    schema_meta
  )}<\/script>`;
</script>

<svelte:head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>{title}</title>

  <!-- Main meta tags -->
  <meta name="title" content={title}/>
  <meta
    name="description"
    content={description}
  />
  <meta name="author" content="Mitchell Thorson" />
  <meta name="canonical" content={url} />

  <!-- OG meta tags -->
  <meta name="og:type" content="website" />
  <meta name="og:title" content={title}/>
  <meta name="og:url" content={url}/>
  <meta
    name="og:description"
    content={description}
  />
  <meta name="og:image" content={social_image}/>
  <meta property="og:image:width" content="1080" />
  <meta property="og:image:height" content="585" />

  <!-- Twitter meta tags -->
  <meta name="twitter:card" content="summary" />
  <meta name="twitter:url" content={url}/>
  <meta name="twitter:title" content={title}/>
  <meta
    name="twitter:description"
    content={description}
  />
  <meta name="twitter:site" content="@mitchthorson" />
  <meta name="twitter:creator" content="@mitchthorson" />
  <meta name="twitter:image" content={social_image}/>

  <!-- Mastodon verification -->
  <link rel="me" href="https://mastodon.social/@mitchthorson" />

  <!-- schema.org metadata -->
  {@html schema_meta_markup}
  <!-- End shema.org metadata -->
</svelte:head>
