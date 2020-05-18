@extends('index')

@section('title','Dashboard')
@section('content')
<div class="dashboard-section">
  <div class="container-fluid">
    <div class="dashboard-buttons">
      <ul>
        <li>
          <a href="{!! route('front.order') !!}">
            <span><img src="{!! asset('images/orders.png') !!}" class="img-fluid"></span>
            <p>Orders</p>
          </a>
        </li>
        <li>
          <a href="{!! route('manage-status.index') !!}">
            <span><img src="{!! asset('images/manage-status.png') !!}" class="img-fluid"></span>
            <p>Manage Status</p>
          </a>
        </li>
        <li>
          <a href="{!! route('front.email-tamplate') !!}">
            <span><img src="{!! asset('images/email-template.png') !!}" class="img-fluid"></span>
            <p>Email Templates</p>
          </a>
        </li>
        <li>
          <a href="#">
            <span><img src="{!! asset('images/settings.png') !!}" class="img-fluid"></span>
            <p>Settings</p>
          </a>
        </li>
      </ul>
    </div>
  </div>
</div>
@endsection