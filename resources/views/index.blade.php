<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="csrf-token" content="{{ csrf_token() }}"> 
  <title>@yield('title')</title>
  <!-- Bootstrap -->
  <link rel="stylesheet" href="{!! asset('css/bootstrap.css') !!}">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="{!! asset('css/style.css') !!}">
  <link rel="stylesheet" href="{!! asset('css/responsive.css') !!}">
  <link rel="stylesheet" href="https://kit-pro.fontawesome.com/releases/v5.9.0/css/pro.min.css">

</head>
<body>
  @include('particals/header')
  @yield('content')

  <!-- footer end -->
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="{!! asset('js/bootstrap.js') !!}"></script>
  
</body>
</html>