<!DOCTYPE html>
<html lang="en">
<head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Bloggerspot</title>
      <link rel="stylesheet" href="css/index_style.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>
<body>
      <div class="wrapper">
            <header>

                  <nav>

                        <div class="menu-icon">
                              <i class="fa fa-bars fa-2x"></i>
                        </div>

                        <div class="logo">
                              BLOGGERSPOT
                        </div>

                        <div class="menu">
                              <ul>
                                    <li><a href="contact.jsp">Contact</a></li>
                                    <li><a href="login.jsp">Login / Signup</a></li>
                                    <li><a href="#">Explore</a>
                                    	<ul>
										<li><a href = "fashion.jsp">Fashion</a></li>
										<li><a href = "food.jsp">Food</a></li>
										<li><a href = "wildlife.jsp">Wildlife</a></li>
										<li><a href = "nature.jsp">Nature</a></li>
										</ul>
										</li>
                                    <li><a href="#">Home</a></li>
                              </ul>
                        </div>
                  </nav>

            </header>

            <div class="content">
                  <p>
                        Bloggerspot is a space for you to explore different genres of photography. Here you'll find the photographs from the award winning photographers from around the world. We have a combined collection of over 1000 pictures fine pictures of every category, every nominated photographer, and from the budding photographers. Interested in this field, want to show the world your hidden talent of photography? Or have any exquisite pictures that fascinates everyone? <a href=register.jsp>Signup</a> now and upload all your pictures and show the world what you're capable of. Your pictures might even get selected in our featured collection and library. have a chance to get your name on the hall of fame along side young budding photographers, and some lucky people will get a chance to get mentored by some of the award winning photographers themselves!
                  </p>
                  
            </div>
      </div>

      <script type="text/javascript">

      // Menu-toggle button

      $(document).ready(function() {
            $(".menu-icon").on("click", function() {
                  $("nav ul").toggleClass("showing");
            });
      });

      // Scrolling Effect

      $(window).on("scroll", function() {
            if($(window).scrollTop()) {
                  $('nav').addClass('black');
            }

            else {
                  $('nav').removeClass('black');
            }
      })


      </script>

</body>
</html>
