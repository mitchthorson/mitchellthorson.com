<script>
  import social from "$data/social.yml";
	import SocialBox from "$components/SocialBox/SocialBox.svelte";
  import AwardTable from "$components/AwardTable/AwardTable.svelte";
  import awards from "$data/awards.yml";
  
  function cleanAward(rawAward) {
    return {
      award: rawAward.award,
      link: rawAward.award_link,
      year: rawAward.year,
    }
  }
  
  const cleanAwards = awards.map(cleanAward);
</script>

## About

Hello, welcome to my website! My name is Mitchell Thorson, and I'm a data visualization specialist, web developer and information designer based in Brooklyn, New York. 

My work spans disciplines but is almost always centered around organizing and sharing data or other facts and information via the medium of the internet. Currently, I am a Lead Data Visualization Engineer at the <a href="https://www.urban.org" target="_blank">Urban Institute</a>, where I collaborate with public policy experts, data scientists and communications staff to present the organization's research through charts, maps and interactive online tools.

From 2014 – February 2023 I was a part of the <a href="https://www.usatoday.com/graphics" target="_blank">USA Today Graphics team</a>, where my work included a wide variety of [projects](work/). These ranged from working with GIS data to build <a href="https://www.tennessean.com/pages/interactives/news/graphics/march-2020-tornado-path-nashville-cookeville-putnam-tennessee/" target="_blank">custom interactive maps</a>, to building and maintaining automated data scrapers and pipelines that power live-updating <a href="https://www.usatoday.com/in-depth/graphics/2020/03/10/us-coronavirus-map-tracking-united-states-outbreak/4945223002/" target="_blank">online</a> <a href="https://www.usatoday.com/in-depth/graphics/2022/08/18/mass-killings-database-us-events-since-2006/9705311002/" target="_blank">presentations</a>, to analyzing and visualizing <a href="https://www.usatoday.com/in-depth/graphics/2023/02/08/lebron-james-career/11018976002/" target="_blank">27,000 of LeBron James' field goal attempts</a>. I also enjoyed building and maintaining tools and templates that were used by other members of the team to develop and publish custom projects to the web.

When I'm not working or hacking on a side project, I like to spend my time reading books, exploring NYC on foot or bike, hiking in the Hudson Valley and the Catskills, practicing my skills as a home cook and playing video games. 

## Contact

If any of that piques your interest, I'd love to hear from you. You can reach me via email at mitchell@mitchellthorson.com

Or you can find me on the social platforms below:

<SocialBox social_links={social} />

If you'd like to send me an encrypted email, you can find my public PGP key with fingerprint `A2BF 0A9C 7DC8 23D5 6FEF  BF0D 6FA9 5CA2 3F66 8D84` [here](pubkey_ed25519_A2BF0A9C7DC823D56FEFBF0D6FA95CA23F668D84.txt).

## Technical skills

- Designing and building interactive and data-rich front-end web interfaces with component frameworks like [Svelte](https://svelte.dev).
- Custom data visualization with D3.js.
- Digital cartography with command line tools, desktop GIS software, and browser-based vector tile mapping tools.
- Data analysis with R and Python.
- Tinkering with Linux, learning a little bit about a lot of different programming languages, writing bespoke CLI tools and self-hosting as much of my data and digital life as possible...

## Awards

Projects I've contributed to have been recognized with a variety of data visualization and journalism industry awards, including the following:

<AwardTable data={cleanAwards} />

## Colophon

This website is built with <a href="https://kit.svelte.dev" target="_blank">SvelteKit</a> and hosted on <a href="https://pages.cloudflare.com/" target="_blank">Cloudflare</a>. You can view the source code <a href="https://www.github.com/mitchthorson/mitchellthorson.com" target="_blank">on Github</a>.

All text is set in <a href="https://typeof.net/Iosevka/" target="_blank">Iosevka</a>. 

<p class="timestamp">December 2023, Brooklyn New York</p>
