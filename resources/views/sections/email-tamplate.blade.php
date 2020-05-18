@extends('index')

@section('title','Email-templates')
@section('content')
<script>
  
</script>
<div class="page-inner-info">
    <div class="container-fluid">
        <div class="email-tamplate">
            <div class="row">
                <div class="col-md-4">
                    <div class="email-description">
                        <div class="description-column">
                            <h5>Section Title</h5>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                        </div>
                        <div class="description-column">
                            <h5>Conatct Nomber</h5>
                            <p>+91 1234567890</p>
                            <p>+91 1234567890</p>
                        </div>
                        <div class="description-column">
                            <h5>Email Id</h5>
                            <p>Test123@gmail.com</p>
                            <p>Test123@gmail.com</p>
                        </div>
                        <div class="description-column">
                            <h5>Address</h5>
                            <p>Akshya Nagar 1st Block 1st Cross, Rammurthy nagar, Bangalore-560016</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <!-- <form id="contact" action="{!! route('template-store') !!}" method="post" class="email-form"> -->
                    {!!Former::horizontal_open()->method('post')->action( route('template-store'))->class('email-form')->id('contact') !!}

                        <h3>Email Tamplate form</h3>
                        <h4>Contact us today, and get reply with in 24 hours!</h4>
                        @if(session('success'))
                          <div class="alert alert-success">
                            <h6>{{ session('success') }}<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></h6>
                          </div>
                        @endif
                      <fieldset>
                          <input placeholder="Your name" type="text" name="from" 
                          id="from" tabindex="1" autofocus required>
                      </fieldset>
                      <fieldset>
                          <input placeholder="Your Email Address" type="email" 
                          name="email" id="email" tabindex="2" required>
                      </fieldset>
                      <fieldset>
                          <input placeholder="Your Phone Number" type="tel" 
                          name="phone" id="phone" tabindex="3" required>
                      </fieldset>
                      <fieldset>
                          <input placeholder="Your Web Site starts with http://" 
                          type="url" name="subject" id="subject" tabindex="4" required>
                      </fieldset>
                      <fieldset>
                          <textarea placeholder="Type your Message Here...." 
                          tabindex="5" name="email_content" id="email_content" required></textarea>
                      </fieldset>
                      <fieldset>
                          <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
                      </fieldset><br>
                  {!!Former::close()!!}
              </div>
          </div>
      </div>
  </div>
</div>
@endsection