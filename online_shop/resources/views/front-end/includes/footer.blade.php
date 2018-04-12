
<div class="footer-w3l">
    <div class="container">
        <div class="footer-grids">
            <div class="col-md-3 footer-grid">
                <h4>About </h4>
                <p>Lorem ipsum dolor sit amet, euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                <div class="social-icon">
                    <a href="#"><i class="icon"></i></a>
                    <a href="#"><i class="icon1"></i></a>
                    <a href="#"><i class="icon2"></i></a>
                    <a href="#"><i class="icon3"></i></a>
                </div>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>My Account</h4>
                <ul>
                    <li><a href="{{ route('checkout') }}">Checkout</a></li>
                    <li><a href="{{ route('user/login') }}">Login</a></li>
                    <li><a href="registered.html"> Create Account </a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>Information</h4>
                <ul>
                @foreach($brands as $brand)
                    <li><a href="{{ route('brand-product', ['id'=>$brand->id]) }}">{{ $brand->brand_name }}</a></li>
                    @endforeach
                    {{--<li><a href="{{ route('/') }}">Home</a></li>--}}
                    {{--<li><a href="{{route('/female-product')}}">Products</a></li>--}}
                    {{--<li><a href="{{ route('code') }}">Short Codes</a></li>--}}
                    {{--<li><a href="{{ route('mail-us') }}">Mail Us</a></li>--}}
                    {{--<li><a href="{{route('/female-product')}}">products1</a></li>--}}
                {{--</ul>--}}
            </div>
            <div class="col-md-3 footer-grid foot">
                <h4>Contacts</h4>
                <ul>
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><a href="#">Shukrabad, Sher-E-Bangla-Nagar</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><a href="#">+8801710662631</a></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:example@mail.com"> example@mail.com</a></li>

                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>

    </div>
</div>

<!--copy-->
<div class="copy-section">
    <div class="container">
        <div class="copy-left">
            <p>&copy; 2018 Online Shop . All rights reserved | Design by Jamil</p>
        </div>
        <div class="copy-right">
            <img src="{{asset('/')}}/front-end/images/card.png" alt=""/>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!--copy-->