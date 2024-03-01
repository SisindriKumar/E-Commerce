 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Website</title>
    <style>
        /* Styles for demonstration purposes */
        .images-box {
            height: 100px;
            width: 100%;
            margin-top: 20px;
            text-align: center;
            padding-top: 50px;
           border-radius: 20px;
        }
        .overall-background {
            height: 150px;
            width: 100%;
            margin-top: 20px;
            text-align: center;
            padding-top: 50px;
            border-radius: 20px;
        }
        footer {
        background-color: #34495e;
        color: #ffffff;
        margin-top: 20px; /* Adding margin-top for space */
    }
    </style>
</head>
<body>
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #2c3e50; font-family: Arial, sans-serif; color: #ffffff;">
        <div class="container">
            <a class="navbar-brand" href="index.jsp" style="color: #ffffff;">BUY PRODUCTS</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="index.jsp" style="color: #ffffff;">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="cart.jsp" style="color: #ffffff;">Cart <span class="badge badge-warning">${cart_list.size()}</span> </a></li>
                    <%
                    if (auth != null) {
                    %>
                    <li class="nav-item"><a class="nav-link" href="orders.jsp" style="color: #ffffff;">Orders</a></li>
                    <li class="nav-item"><a class="nav-link" href="log-out" style="color: #ffffff;">Logout</a></li>
                    <%
                    } else {
                    %>
                    <li class="nav-item"><a class="nav-link" href="login.jsp" style="color: #ffffff;">Login</a></li>
                    <%
                    }
                    %>
                </ul>
            </div>
        </div>
    </nav>
 <!--    
    
Content Area
<div class="container">
    Your content here
    <div class="images-box" style="background-color: #2c3e50; color: #ffffff;">
       <marquee behavior="scroll" direction="left" scrollamount="5">
           Explore the contents within the Images Box.
       </marquee>
    </div>

    <div class="overall-background" style="background-color: #34495e; color: #ffffff;">
        <marquee behavior="scroll" direction="left" scrollamount="5">
            Head to the website and search for the products you require.
        </marquee>
    </div>
</div>
 -->
 <!-- Content Area -->
<div class="container">
    <!-- Your content here -->
    <div class="images-box" style="background-color: #2c3e50; color: #ffffff;">
        <marquee behavior="scroll" direction="left" scrollamount="5">
            <img src="download.jpg" alt="Image 1">
            <img src="handbag.jpg" alt="Image 2">
            <img src="men suit.jpg" alt="Image 3">
            Explore the contents within the Images Box.
        </marquee>
    </div>

    <div class="overall-background" style="background-color: #34495e; color: #ffffff;">
        <marquee behavior="scroll" direction="left" scrollamount="5">
            <img src="image4.jpg" alt="Image 4">
            <img src="image5.jpg" alt="Image 5">
            <img src="image6.jpg" alt="Image 6">
            Head to the website and search for the products you require.
        </marquee>
    </div>
</div>




    <!-- Footer -->
    <footer style="background-color: #34495e; color: #ffffff;">
        <div class="container">
            Footer Content
        </div>
    </footer>

    <!-- Bootstrap and JavaScript CDN links for Navbar toggle functionality -->
    <!-- Make sure to include Bootstrap and JavaScript CDN links -->

</body>
</html>



 