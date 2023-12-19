<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<?= base_url("vendor/stint/style/login_page_style.css")?>" rel="stylesheet">
    <title>Login</title>
</head>
<body>
<div class="container">
        <div class="input-container">
            <h4 class="login_heading">Login</h4>

            <label class="login_text">How to i get started lorem ipsum dolor at?</label>

            <div class="login_input_div_1">
                <img src="<?= base_url("vendor/stint/media/Frame(1).png")?>" style="width: 24px; height: 24px; flex-shrink: 0; margin-left: 3%;" alt=""/>
                <input type="text" class="login_input_field" id="fname" name="user_name" placeholder="Username"/>
            </div>

            <div class="login_input_div_2">
                <img src="<?= base_url("vendor/stint/media/Frame.png")?>" style="width: 24px; height: 24px; flex-shrink: 0; margin-left: 3%;" alt=""/>
                <input type="password" class="login_input_field" id="fpassword" name="password" placeholder="password"/>
            </div>

            <button type="button" class="login_button"><span class="login_button_text" style="color: #fff;">Login Now</span></button>

            <label class="login_with_others"><span class="login_others_text">Login</span> with others</label>
            
            <div class="conn_with_google">
                <img src="<?=base_url("vendor/stint/media/google_logo.png")?>" style="width: 30px; height: 30px; flex-shrink: 0" alt=""/>
                <label class="login_with_google" for="">login with <span>Google</span></label>
            </div>
        </div>
        <div class="image-container">
            <img src="<?=base_url("vendor/stint/media/Untitled_design__1_-removebg.png")?>" alt="Your Image">
        </div>
    </div>

</body>
</html>