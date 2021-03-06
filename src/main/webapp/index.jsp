<!DOCTYPE html>
<html style="height: 100%">
  <head>
    <meta charset="UTF-8">
    <title>Document Preview</title>
    
    
    <link rel="stylesheet" href="css/reset.css">

    <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Open+Sans:100,300,400,500,700|Montserrat:700'>
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>
    <link rel="stylesheet" href="css/style.css">

    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

  </head>

  <body>

    
<header>
  <div class="container">
    <div class="row">
      <div class="column">
        <div class="logo">
          <image class="icon" src="docpre.png"></image>
          <div>DocumentPreview<span> <i class='fa fa-code-fork'></i> me on <a target="_blank" href="https://github.com/DocumentPreview/DocumentPreview">Github</a></span></div>
        </div>
      </div>
      <%--<div class="column">--%>
        <%--<ul class="nav">--%>
          <%--<li><a href="#">Support</a></li>--%>
          <%--<li><a href="#">Download Free Guide</a></li>--%>
        <%--</ul>--%>
      <%--</div>--%>
    </div>
  </div>
</header>
<section class="hero">
  <div class="container">
    <div class="row">
      <div class="column">
        <h1>The free, fast way to preview docment online</h1>
        <p>DocumentPreview is an opensource service based on openoffice and imagemagick that provide document preview service online!</p>
        <a target="_blank" href="https://github.com/DocumentPreview/DocumentPreview" class="button">Get DocumentPreview Now - Yes It's Free</a>
        <form method="post" target="foo" enctype="multipart/form-data" action="convert">
          <div class="file-field input-field">
            <div class="btn">
              <span>File</span>
              <input name="inputDocument" type="file">
            </div>
            <div class="file-path-wrapper">
              <input data-target="modal1" class="file-path validate" type="text">
            </div>
          </div>
          <a class="waves-effect waves-light btn modal-trigger" onclick="preview()" href="#modal1">Preview</a>
          <%--<input class="btn" type="submit" value="Preview">--%>
        </form>
        <!-- Modal Trigger -->

        <!-- Modal Structure -->
      </div>
    </div>
  </div>
</section>

<footer class="footer">
  <div class="container">
    <div class="row">
      <div class="column">
        <p><br>DocumentPreview &copy; 2016</p>
      </div>
    </div>
  </div>
</footer>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>

    <script src="js/index.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
        $('.modal-trigger').leanModal();
      });

      function preview() {
        $('iframe').contents().find('body').html('<div style="width:100%;padding-top: 10%;color: white" align="center">Loading...</div>');
        $('form').submit();
      }
    </script>
    <div id="modal1" class="modal" style="height: 90%;">
      <iframe name="foo" style="height: 100%;width: 100%"></iframe>
    </div>
  </body>
</html>
