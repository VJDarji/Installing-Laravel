<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Foodvilla Web app</title>

    <!-- Bootstrap core CSS -->
    
    {!!Html::style('./resources/vendor/bootstrap/css/bootstrap.min.css')!!}
    <style type="text/css">
      .row{line-height: 40px;}
    </style>
  </head>

  <body>




    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                
                <a href="{{url('/')}}" style="margin-top: 10px;" class="btn btn-primary">Home</a>&nbsp;&nbsp;
                <a href="{{url('/about')}}" style="margin-top: 10px;" class="btn btn-primary">About You</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->

            
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>



    <!-- Page Content -->
    <div class="container">
     
     <div class="modal fade"  id="dynamic_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static"></div>
     
      <p>
        Demo Content For About You page<br>
        
        Demo Content For About You page<br>
        
        Demo Content For About You page<br>
        
        Demo Content For About You page<br>

      <br>
      
      <div class="col-md-12"><hr style="border: 1px solid black;"></div>
      
      <div align="center" class="col-md-12 col-sm-12 col-xs-12"><h2></h2></div><br><br><br>

      @include('footer');
    </div>
    <!-- /.container -->

    <!-- Bootstrap core JavaScript -->

    {!!Html::script('./resources/vendor/jquery/jquery.min.js')!!}
   
    {!!Html::script('https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js')!!} 

    {!!Html::script('./resources/vendor/bootstrap/js/bootstrap.bundle.min.js')!!} 
   
    {!!Html::script('./resources/vendor/bootstrap/js/bootstrap.min.js')!!} 


  
    <script type="text/javascript" language="javascript">

</script>
  </body>

</html>
