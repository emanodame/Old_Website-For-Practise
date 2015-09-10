<!DOCTYPE html>
<html>
  <head>
    <title>Example 26</title>
    <style>
      div.container {
        width: 100%;
        margin: 0px;
        border: 1px solid gray;
        line-height: 150%;
      }

      div.header, div.footer {
        padding: 0.5em;
        color: white;
        background-color: gray;
        clear: left;
        text-align: left;
      }

      h1.header {
        padding: 0;
        margin: 0;
        text-align: left;
      }

      div.left {
        float: left;
        width: 160px;
        margin: 0;
        padding: 1em;
        text-align: center;
      }

      div.content {
        margin-left: 190px;
        border-left: 1px solid gray;
        padding: 1em;
        text-align: left;
        height: 600px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="header">
        <h1 class="header">
          The Header Which Stretches Right Across the Page
        </h1>
      </div>

      <div class="left">
        <p>
          The <br/>left <br/>area <br/>e.g. <br/>for <br/>buttons.
        </p>
      </div>

      <div class="content">
        <h2>The content area</h2>
        <p>This is for the main content of the page.</p>
      </div>

      <div class="footer">
        This is a footer which also goes right across the page.
      </div>
    </div><!><h1>
 Now logged in as:
 <%= session.getAttribute( "username" ) %>
 </h1>
  </body>
</html>
