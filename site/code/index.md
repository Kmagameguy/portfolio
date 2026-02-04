---
layout: home
permalink: /code/
---

<div class="row justify-content-center align-items-center mt-2 px-4 py-2">
  <div class="page-subtitle">
    <p>
      All of my projects can be found at
      <a href="https://github.com/kmagameguy">my GitHub profile.</a><br />
      Below are some demonstrations of those projects.
    </p>
  </div>
</div>

<div class="card mb-4">
  <div class="card-body">
    <h4 class="card-title">This portfolio site!</h4>
    <div class="card-subtitle mb-4">
      <a class="card-link" href="https://github.com/kmagameguy/portfolio" target="_blank">Repository Link</a>
    </div>
    <div class="card-text mb-4">
      <h5 class="card-subtitle">Overview</h5>
      <p>Just a simple, static website to host my stuff on the internet.  I've been maintaining/re-inventing it since 2017.</p>
    </div>
    <div class="card-text mb-4">
      <h5 class="card-subtitle">Tech Stack</h5>
      <ul>
        <li><a href="https://www.ruby-lang.org">Ruby</a></li>
        <li><a href="https://jekyllrb.com">Jekyll</a></li>
        <li><a href="https://getbootstrap.com">Bootstrap</a></li>
        <li><a href="https://docs.github.com/en/actions">GitHub Actions</a></li>
        <li><a href="https://docs.github.com/en/pages">GitHub Pages</a></li>
      </ul>
    </div>
    <div class="card-text">
      <h5 class="card-subtitle">Project Status</h5>
      <p>
        This project is always evolving.  The latest change to the underlying stack was to migrate away from the `github-pages` gem-based deployment and over to a Jekyll-native build & deployment process inside GitHub Actions.  I've also written some ruby-based helper scripts to make blog post management a bit less manual.
      </p>
    </div>
  </div>
</div>

<div class="card mb-4">
  <div class="card-body">
    <h4 class="card-title">Internet Games Database Client</h4>
    <div class="card-subtitle mb-4">
      <a class="card-link" href="https://github.com/Kmagameguy/igdb_client">Repository Link</a>
    </div>
    <div class="card-text mb-4">
      <h5 class="card-subtitle">Overview</h5>
      <p>
        A ruby gem designed around the <a href="https://www.igdb.com">IGDB API</a>.  It helps facilitate data retrieval from the API by abstracting some of the more complex query parameters the API expects.
      </p>
    </div>
    <div class="card-text mb-4">
      <h5 class="card-subtitle">Tech Stack</h5>
      <ul>
        <li><a href="https://www.ruby-lang.org">Ruby</a></li>
        <li><a href="https://rubocop.org/">RuboCop</a></li>
        <li><a href="https://docs.seattlerb.org/minitest/">Minitest</a></li>
      </ul>
      <p>
        This was the (first?) ruby gem I've built outside of my day job.  While working on a project related to game-tracking I decided to spin this code off as a compartmentalized gem.
      </p>
    </div>
    <div class="card-text mb-4">
      <h5 class="card-subtitle">Project Status</h5>
      <p>
        This project is basically complete and receives maintenace mostly to keep up with the IGDB API updates.  At some point I may decide to publish it to rubygems.org but I haven't had the time to set up an account and build out the publishing pipeline yet.
      </p>
    </div>
  </div>
</div>

<div class="card mb-4">
  <div class="card-body">
    <h4 class="card-title">Ocarina of Time Collectibles</h4>
    <div class="card-subtitle mb-4">
      <a class="card-link" href="https://kmagameguy.github.io/oot-collectibles/">Live Project Link</a>
    </div>
    <div class="card-text mb-4">
      <h5 class="card-subtitle">Overview</h5>
      <p>
        A simple static site to help make Heart Piece collection in The Legend of Zelda: Ocarina of Time a bit more organized.  While playing through the game recently I was having a hard time keeping track of the Heart Piece collectibles.  I wanted some kind of tracking system to make it easier to see which Heart Pieces I'd already collected, and a grouping of Heart Pieces by region (to optimize a collection run).  I created this simple static site with those goals in mind.
      </p>
    </div>
    <div class="card-text mb-4">
      <h5 class="card-subtitle">Tech Stack</h5>
      <ul>
        <li><a href="https://www.typescriptlang.org/">TypeScript</a></li>
        <li><a href="https://vite.dev/">Vite</a></li>
        <li><a href="https://react.dev/">React</a></li>
        <li><a href="https://docs.github.com/en/actions">GitHub Actions</a></li>
        <li><a href="https://docs.github.com/en/pages">GitHub Pages</a></li>s
      </ul>
      <p>
        Most of my (current) programming is done in ruby or ruby on rails so this project seemed like a good opportunity to get acquainted with TypeScript, Vite, and React.  Those technologies are definitely overkill for this but since I knew what the "vanilla" HTML/CSS/JS code could look like it made it a bit easier to approach/translate those concepts into this specific tech stack.  The project uses the localStorage browser API as a bonus so you can actually leave and come back to the site between sessions and it will remember where you left off with your collection.
      </p>
    </div>
    <div class="card-text mb-4">
      <h5 class="card-subtitle">Project Status</h5>
      <p>
        This project has effectively achieved my original goals.  However, there's opportunity to expand it for other collectibles, like the Gold Skulltula tokens, which I might take on at a later time.
      </p>
    </div>
  </div>
</div>
