
[comment]: # (Convert this to PDF using vscode markdown-pdf.  Disable display header footer and include default styles in extension settings.)

<style>
  :root {
    --primary-header  : rgb(80, 140, 125);
    --secondary-header: #aaa;
    --subheading-bg   : #444;
    --subheading-color: #555;
  }

  html {
    box-sizing      : border-box;
  }

  *,
  *::before,
  *::after {
    box-sizing      : inherit;
  }

  body {
    margin          : 0;
    font-size       : 0.5rem;
    font-family     : "Lato", sans-serif!important;
  }

  h1,
  h3,
  h4,
  h5 {
    margin          : 0.5rem 0 0.25rem 0;
    font-weight     : bold;
    color           : var(--subheading-bg);
  }

  h2 {
    color           : var(--primary-header);
    border-bottom   : 1px solid lightgrey;
  }

  h4 {
    margin-left: 0.5rem;
  }

  #header-container {
    display         : flex;
    flex-direction  : column;
    align-items     : center;
  }

  #header-name {
    color           : var(--primary-header);
    letter-spacing  : 1rem;
    text-transform  : uppercase;
    margin          : 0;
    padding         : 0;
    border          : none;
  }

  #header-title {
    color           : var(--secondary-header);
    letter-spacing  : 0.1rem;
    text-transform  : uppercase;
    font-size       : 1rem;
    margin          : 1rem 0 1.1rem 0;
    padding         : 0;
    border          : none;
  }

  #subheader {
    display         : flex;
    justify-content : center;
    margin          : 0 0 1rem 0;
    padding         : 0.5rem 0;
    width           : 100%;
    font-size       : 0.7rem;
    background-color: whitesmoke;
  }

  #subheader a {
    color           : var(--subheading-color);
  }

  #body-container {
    display         : flex;
  }

  #side-panel {
    padding         : 1rem;
    flex            : 0;
    min-width       : 200px;
    display         : flex;
    flex-direction  : column;
    border-right    : 1px solid lightgrey;
    line-height     : 0.75rem;
  }

  #main-content {
    padding         : 1rem;
    flex            : 1;
    display         : flex;
    flex-direction  : column;
    margin-right    : 10px;
  }

  .sidebar-list {
    margin          : 0;
    padding         : 0;
    list-style-type : none;
  }

  .sidebar-list li {
    margin          : 0.25rem 0;
  }

  .details {
    margin          : 0;
    line-height     : 0.9rem;
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
      <ul class="sidebar-list">
        <li>Adobe Suite Deployment & Configuration</li>
        <li>Ansible</li>
        <li>CircleCI</li>
        <li>Docker</li>
        <li>Git</li>
        <li>GitHub/Gitlab</li>
        <li>JAMF</li>
        <li>JIRA</li>
        <li>MySQL</li>
        <li>NewRelic</li>
        <li>Rollbar</li>
        <li>Sidekiq</li>
        <li>Zendesk (Administration & Ticket Triage)</li>
      </ul>
      <h2>Languages</h2>
      <ul class="sidebar-list">
        <li>Google Apps Script</li>
        <li>HTML/CSS</li>
        <li>JavaScript</li>
        <li>Ruby on Rails</li>
        <li>Shell/Bash/Zsh Scripting</li>
        <li>SQL</li>
        <li>VBScript</li>
      </ul>
      <h2>Platforms</h2>
      <ul class="sidebar-list">
        <li>Apple MacOS</li>
        <li>GNU/Linux (Fedora, Debian)</li>
        <li>Microsoft Windows</li>
      </ul>
    </div>
    <div>
      <h2>Education</h2>
      <ul class="sidebar-list">
        <li>Bachelor of Fine Arts in Game Art &amp; Design</li>
        <li>The Art Institute of Washington | 2012</li>
      </ul>
    </div>
    <div>
      <h2>Awards & Achievements</h2>
      <ul class="sidebar-list">
        <li>10x nominated for internal "Inkademy" awards for Innovation at Custom Ink.</li>
        <li>Graduated Magna Cum Laude with Highest Achievement distinction.</li>
      </ul>
    </div>
  </div>
  <div id="main-content">
    <div id="experience">
      <h2>Professional Experience</h2>
      <h3>2013-Present | Custom Ink - Fairfax, VA</h3>
      <h4>October 2023-Present &bullet; Software Engineer</h4>
      <h4>April 2023-October 2023 &bullet; Associate Software Engineer</h4>
      <ul class="details">
        <li>
          Perform full-stack Ruby on Rails & Javascript development on from-scratch applications, microservices, & monoliths.
        </li>
        <li>
          Develop and improve automated routines that streamlined complex business processes, reducing manual efforts up to 90% in some cases, to increase operational efficiency.
        </li>
        <li>
          Help spearhead initiative to directly integrate with industry suppliers via PromoStandards-compliant APIs.
        </li>
        <li>
          Improved security and user management by migrating various applications away from bespoke authentication/authorization mechanisms to a consistent experience using Auth0 & OKTA.
        </li>
        <li>
          Use tools such as Rollbar and NewRelic to identify and resolve system performance bottlenecks.
        </li>
        <li>
          Actively participate in code reviews (pull requests), providing constructive feedback to enhance code quality and encourage continuous improvement within the development team.
        </li>
        <li>
          Use Git/GitHub for software version control, collaboration, and continuous integration/continuous deployment pipelines.
        </li>
      </ul>
      <h4>2020-April 2023 &bullet; Technology Manager</h4>
      <h4>2015-2020 &bullet; Technology Specialist</h4>
      <h4>2014-2015 &bullet; Production Art Development Coordinator</h4>
      <ul class="details">
        <li>
          Fostered the Customer Care Technology Analyst's growth and skill development through regular one-on-one meetings, performance reviews, and project assignments.
        </li>
        <li>
          Maintained and organized our internal knowledgebase and produced weekly, informational summaries of tech/process changes for team member benefit. Helped improve knowledge retention through guided demos, in-person presentations, and regular knowledge quizzes.
        </li>
        <li>
          Developed comprehensive project proposals backed by detailed Return on Investment and Risk Analyses.  These were achieved using business intelligence tools (Metabase), custom SQL queries, and visual aids to support decision-making and inform project prioritization in alignment with company goals.
        </li>
        <li>
          Collaborated closely with cross-functional teams, including Product Managers, UI/UX designers, Software Engineers, Quality Assurance engineers, and Business Stakeholders to improve customer and team member satisfaction with site features and internal tools.
        </li>
        <li>
          Supported and championed organizational change from Waterfall to Agile Development Methodology.
        </li>
        <li>
          Support MacOS and Windows hardware/software for ~500 team members in an Enterprise environment, working with IT Security to ensure latest security updates and OS standards are maintained on JAMF Pro/Dell KACE/P9-managed endpoint devices.
        </li>
        <li>
          Created and championed a remote-work program which later allowed for rapid response to workforce management needs during early Covid spread.
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
          Helped lead new team member training/onboarding by provisioning hardware, software, and accounts, alongside on-site classroom support.
        </li>
      </ul>
      <h4>2013-2014 &bullet; Production Artist</h4>
      <ul class="details">
        <li>
          Processed customer designs to meet printability requirements while consistently exceeding productivity and accuracy targets.
        </li>
        <li>
          Provided merchandising and Adobe Suite support to department Technology Specialist.
        </li>
      </ul>
      <h3>2011-2013 | Freelance Multimedia Artist - Fairfax, VA</h3>
      <h4>2011-2013 &bullet; Firesabre Consulting, LLC</h4>
      <h4>Jun 2012-Jul 2012 &bullet; Fiteeze</h4>
      <h4>Oct 2012 &bullet; Ave Media, LLC</h4>
      <ul class="details">
        <li>
          Environment and Level Design contracting for Fortune 500 companies.
        </li>
        <li>
          Performed 3D terrain, architecture, prop, and character modeling, including texturing, uv unwrapping, and rigging.
        </li>
        <li>
          Created cross-platform graphical interfaces and user experience design for computers, consoles, and mobile devices.
        </li>
        <li>
          Created and managed patent applications for UI/UX designs.
        </li>
        <li>
          Completed level layout, look development, and 2D Art for the video game "Elite vs. Freedom".
        </li>
      </ul>
    </div>
  </div>
</div>

