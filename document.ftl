<!-- HTML for static distribution bundle build -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Swagger UI</title>
    <link rel="stylesheet" type="text/css" href="dependents/swagger-ui.css" >
    <link rel="icon" type="image/png" href="dependents/favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="dependents/favicon-16x16.png" sizes="16x16" />
    <style>
      html
      {
        box-sizing: border-box;
        overflow: -moz-scrollbars-vertical;
        overflow-y: scroll;
      }

      *,
      *:before,
      *:after
      {
        box-sizing: inherit;
      }

      body
      {
        margin:0;
        background: #fafafa;
      }
    </style>
  </head>

  <body>
    <div id="swagger-ui"></div>

    <script src="dependents/swagger-ui-bundle.js"> </script>
    <script src="dependents/swagger-ui-standalone-preset.js"> </script>
    <script>
    window.onload = function() {
      var spec = ${swagger}

      // Build a system
      const ui = SwaggerUIBundle({
        url: "http://localhost/swagger.json",
	spec: spec,
        dom_id: '#swagger-ui',
	enableCORS: true,
        deepLinking: true,
        presets: [
          SwaggerUIBundle.presets.apis,
          SwaggerUIStandalonePreset
        ],
        plugins: [
          SwaggerUIBundle.plugins.DownloadUrl
        ],
        layout: "StandaloneLayout",
	supportedSubmitMethods: []
      })

      window.ui = ui
    }
  </script>
  </body>
</html>