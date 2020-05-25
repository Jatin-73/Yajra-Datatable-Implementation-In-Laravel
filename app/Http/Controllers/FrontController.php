<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\EmailTemplate;
use Validator,Redirect,Response;
use DB;

class FrontController extends Controller
{
    public function dashboard()
	{
		return view('sections.dashboard');
	}

	public function getstatus()
	{
		return view('sections.order');
	}

	public function getemplate()
	{
		return view('sections.email-tamplate');
	}

	public function storetamplate(Request $request)
	{
		$data = DB::table('email_templates')->insert([
			'from'			=>  $request->input('from'),
			'email'			=>  $request->input('email'),
			'phone'			=>  $request->input('phone'),
			'subject'		=>  $request->input('subject'),
			'email_content' =>  $request->input('email_content')
		]);

		if($data){
            return response()->json(['success'=> 'Thank you for contacting us.']);
		}
	}
}
