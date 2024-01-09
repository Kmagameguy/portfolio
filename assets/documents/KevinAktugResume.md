<style>
  html {
    box-sizing    : border-box;
  }

  *,
  *::before,
  *::after {
    box-sizing    : inherit;
  }

  body {
    margin        : 0;
    font-size     : 0.5rem;
    font-family   : "Lato", sans-serif!important;
  }

  h1,
  h2,
  h3,
  h4,
  h5 {
    margin        : 0.2rem 0;
  }

  h2 {
    border-bottom: 1px solid grey;
  }

  #header-container {
    display       : flex;
    width         : 100%;
    flex-direction: column;
    align-items   : center;
  }
  
  #header-name {
    color: #444;
    letter-spacing: 1rem;
    text-transform: uppercase;
    margin        : 0;
    padding       : 0;
    border        : none;
  }

  #header-title {
    color         : #aaa;
    letter-spacing: 0.1rem;
    text-transform: uppercase;
    font-size     : 1rem;
    margin        : 1rem 0 1.1rem 0;
    padding       : 0;
    border        : none;
  }

  #subheader {
    display       : flex;
    justify-content: center;
    margin        : 0 0 1rem 0;
    padding       : 0.5rem 0;
    width         : 100%;
    font-size     : 0.7rem;
    background-color: whitesmoke;
  }

  #subheader a {
    color         : #555;
  }

  #body-container {
    display       : flex;
  }

  #side-panel {
    padding       : 1rem;
    flex          : 0;
    min-width: 200px;
    display       : flex;
    flex-direction: column;
    border-right  : 1px solid lightgrey;
  }

  #main-content {
    padding       : 1rem;
    flex          : 1;
    display       : flex;
    flex-direction: column;
    margin-right  : 10px;
  }

  .skills {
    margin        : 0;
    padding       : 0;
    list-style-type: none;
  }

  .details {
    margin: 0;
    line-height: 0.9rem;
  }

  .skills li {
    margin        : 0.25rem 0;
  }
</style>

<div id="header-container">
  <h1 id="header-name">Kevin Aktug</h1>
  <h1 id="header-title">Software Engineer</h1>
  <p  id="subheader">
    <a href="mailto:linkedin@mailontheinternet.com">linkedin@mailontheinternet.com</a>
  </p>
</div>

<div id="body-container">
  <div id="side-panel">
    <div>
      <h2>Software</h2>
      <ul class="skills">
        <li>Adobe Suite Deployment & Configuration</li>
        <li>Ansible</li>
        <li>CircleCI</li>
        <li>Docker</li>
        <li>Git</li>
        <li>GitHub/Gitlab</li>
        <li>JAMF</li>
        <li>JIRA</li>
        <li>pfSense</li>
        <li>Zendesk (Administration & Ticket Triage)</li>
      </ul>
      <h2>Languages</h2>
      <ul class="skills">
        <li>Google Apps Script</li>
        <li>JavaScript</li>
        <li>Ruby on Rails</li>
        <li>Shell</li>
        <li>VBScript</li>
      </ul>
      <h2>Platforms</h2>
      <ul class="skills">
        <li>Apple MacOS</li>
        <li>GNU/Linux (Fedora, Debian)</li>
        <li>Microsoft Windows</li>
      </ul>
    </div>
    <div>
      <h2>Education</h2>
      <p>Bachelor of Fine Arts in Game Art &amp; Design</p>
      <p>The Art Institute of Washington | 2012</p>
    </div>
    <div>
      <h2>Awards & Achievements</h2>
      <p>10x nominated for internal "Inkademy" awards for Innovation at Custom Ink.</p>
      <p>Graduated Magna Cum Laude with Highest Achievement distinction</p>
    </div>
  </div>
  <div id="main-content">
    <div id="experience">
      <h2>Professional Experience</h2>
      <h3>2013-Present | Custom Ink - Fairfax, VA</h3>
      <h4>2023-Present &bullet; Software Engineer</h4>
      <ul class="details">
        <li>
          Develop, test, and document code changes in support of company goals
        </li>
        <li>
          Participated in code reviews and provided notes to improve code quality
        </li>
        <li>
          Worked with Ruby on Rails and JavaScript
        </li>
        <li>
          Use Git/GitHub for software version control
        </li>
      </ul>
      <h4>2020-2023 &bullet; Technology Manager</h4>
      <ul class="details">
        <li>
          Complete project proposals and ROI/Risk Analyses in pursuit of company goals.
        </li>
        <li>
          Supported organizational change from Waterfall to Agile Development Methodology
        </li>
        <li>
          Advise on development efforts in coordination with product management and software engineering.
        </li>
        <li>
          Supervisor to the Customer Care Technology Analyst.
        </li>
        <li>
          Support MacOS in an Enterprise environment, working with IT Security to ensure latest security updates and OS standards are maintained on JAMF Pro-managed endpoint devices.
        </li>
        <li>
          Maintained all responsibilities from Technology Specialist role.
        </li>
      </ul>
      <h4>2015-2020 &bullet; Technology Specialist</h4>
      <ul class="details">
        <li>
          Prototyped and led initiatives that drove 20-60% automation rates within team workflows.
        </li>
        <li>
          Created a remote-work program which later allowed for rapid adaptation to workforce management needs during early Covid spread.
        </li>
        <li>
          Cross-trained to perform Jr-level rails and nodeJS software engineering tasks.
        </li>
        <li>
          Developed and maintained Art & Licensing team web & desktop applications.
        </li>
        <li>
          Performed in-depth QA support for tech changes across departments.
        </li>
        <li>
          Supported launch and integration of 6 new lines of business.
        </li>
        <li>
          Supported new merchandise additions within Custom Ink's catalog.
        </li>
        <li>
          Wrote and maintained Bash/Shell and Powershell scripts that automated workflows and assisted with system deployments and other maintenance.
        </li>
        <li>
          Led desktop hardware and software support for ~200 team members.
        </li>
        <li>
          Prepared hardware and software for team member onboarding.
        </li>
      </ul>
      <h4>2014-2015 &bullet; Production Art Development Coordinator</h4>
      <ul class="details">
        <li>
          Maintained knowledge resources and sent weekly communication summarizing upcoming tech/process changes.
        </li>
        <li>
          Coordinated cross-functionally to reduce process friction across teams.
        </li>
      </ul>
      <h4>2013-2014 &bullet; Production Artist</h4>
      <ul class="details">
        <li>
          Processed customer designs to meet printability requirements.
        </li>
        <li>
          Consistently exceeded productivity targets and maintained high accuracy.
        </li>
        <li>
          Provided merchandising and Adobe Suite support to Art Technology Specialist.
        </li>
      </ul>
      <h3>2011-2013 | Freelance Multimedia Artist - Fairfax, VA</h3>
      <h4>2011-2013 &bullet; Firesabre Consulting, LLC</h4>
      <ul class="details">
        <li>
          Environment and Level Design contracting for Fortune 500 companies.
        </li>
      </ul>
      <h4>Jun 2012-Jul 2012 &bullet; Fiteeza</h4>
      <ul class="details">
        <li>
          Terrain, Architectural, Prop, and Character modeling, texturing, unwrapping, and rigging.
        </li>
        <li>
          Graphical interface and user experience design for computers, consoles, and mobile devices.
        </li>
        <li>
          Created and managed patent applications for UI/UX designs.
        </li>
      </ul>
      <h4>Oct 2012 &bullet; Ave Media, LLC</h4>
      <ul class="details">
        <li>
          Level Layout, Look Development, and 2D Art for the video game "Elite vs. Freedom".
        </li>
      </ul>
    </div>
  </div>
</div>

