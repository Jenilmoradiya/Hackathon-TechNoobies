<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ include file="seller-header.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>RentIT</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">


    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="h3 mb-3 text-black">Add Product</h2>
          </div>
          
          
         
          
          <div class="col-md-12	">

           <%
          
          if(request.getAttribute("msg")!=null){
        	  out.println(request.getAttribute("msg"));
          }
          
          %>
          

            <form action="ProductController" method="post" enctype="multipart/form-data" >
            
               <input type="hidden"  name="uid" value="<%=u.getUid() %>"  >
              <div  class="p-3 p-lg-10 border">
               
               <div class="form-group row">
                  <div class="col-md-12">
                    <select name="product_category" >
                      <option>----Select category----</option>
                      <option value="electronics" selected="selected">Electronics</option>
                      <option value="clothes">Clothes</option>
                      <option value="cycle" >Cycle</option>
                      <option value="tools">Tools</option>
                      <option value="books" >Books</option>
                      </select>
                  </div>
                </div>
               
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Product Name <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_email" name="product_name" placeholder="">
                  </div>
                </div>
               
               <div class="form-group row">
                  <div class="col-md-12">
                    <label for="password" class="text-black">Product price <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="password" name="product_price" placeholder="">
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Product deposit <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_email" name="product_deposit" placeholder="">
                  </div>
                </div>
              
              <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Product Days <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_email" name="product_day" placeholder="">
                  </div>
                </div>
                
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Product Original price <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_email" name="product_originalprice" placeholder="">
                  </div>
                </div>
               <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Product size <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_email" name="product_size" placeholder="">
                  </div>
                </div>
               
              
                
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Product weight <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_email" name="product_weight" placeholder="">
                  </div>
                </div>
               
               <div class="form-group row">
                  <div class="col-md-12">
                    <label for="password" class="text-black">Product material<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="password" name="product_material" placeholder="">
                  </div>
                </div>
                
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Product color <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_email" name="product_color" placeholder="">
                  </div>
                </div>
               
               <div class="form-group row">
                  <div class="col-md-12">
                    <label for="password" class="text-black">Product location <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="password" name="product_location" placeholder="">
                  </div>
                </div>
                
                
               <div class="form-group row">
                  <div class="col-md-12">
                    <label for="password" class="text-black">Product location url<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="password" name="product_locationurl" placeholder="">
                  </div>
                </div>
                
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Seller number<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="c_email" name="seller_number" placeholder="">
                  </div>
                </div>
               
               <div class="form-group row">
                  <div class="col-md-12">
                    <label for="password" class="text-black">Product image <span class="text-danger">*</span></label>
                    <input type="file" class="form-control" id="password" name="product_image" placeholder="">
                  </div>
                </div>
                
              
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_message" class="text-black">Product description</label>
                    <textarea name="product_desc" id="c_message" cols="30" rows="7" class="form-control"></textarea>
                  </div>
                </div>
         
                </div>
                <div class="form-group row">
                  <div class="col-lg-12">
                    <input type="submit" name="action" value="Add product" class="btn btn-primary btn-lg btn-block" >
                  </div>
                </div>
              </div>
            </form>
          </div>
         
        </div>
      </div>
    </div>


   
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>