#!/bin/bash
# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: Apache-2.0

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Meow World!</h2></center>
  Welcome to ${PREFIX}'s random meow app! Nullam placerat, erat in ultrices luctus, libero leo auctor tellus, id congue sapien diam et dolor. Nulla placerat, turpis in lobortis dictum, lacus risus blandit tellus, ac placerat lectus tortor eu eros. Donec arcu eros, tincidunt ultrices suscipit scelerisque, feugiat vitae mauris. Mauris consequat rhoncus leo ac eleifend. Maecenas sollicitudin, dui a fringilla convallis, quam felis ultricies odio, quis interdum ante elit non enim. Etiam commodo elit et vehicula ullamcorper. ..!
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
