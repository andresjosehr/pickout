<div class="bravo_header" id="menutab">
    <div class="{{$container_class ?? 'container'}}" style="z-index:99999 !important">
        <div class="content">
            <div class="header-left">
                <a href="{{url(app_get_locale(false,'/'))}}" class="bravo-logo">
                    @if($logo_id = setting_item("logo_id"))
                        <?php $logo = get_file_url($logo_id,'full') ?>
                        <img class="logo-header" src="{{$logo}}" alt="{{setting_item("site_title")}}">
                    @endif
                </a>
                <div class="bravo-menu">
                    <?php generate_menu('primary') ?>
                </div>
            </div>
            <div class="header-right">
                @if(!empty($header_right_menu))
                    <ul class="topbar-items">
                        @include('Core::frontend.currency-switcher')
                        @include('Language::frontend.switcher')
                        @if(!Auth::id())
                            <li class="login-item">
                                <a href="#login" data-toggle="modal" data-target="#login" class="login">{{__('Login')}}</a>
                            </li>
                            <li class="signup-item">
                                <a href="#register" data-toggle="modal" data-target="#register" class="signup">{{__('Sign Up')}}</a>
                            </li>
                        @else
                            <li class="login-item dropdown">
                                <a href="#" data-toggle="dropdown" class="is_login">
                                    @if($avatar_url = Auth::user()->getAvatarUrl())
                                        <img class="avatar" src="{{$avatar_url}}" alt="{{ Auth::user()->getDisplayName()}}">
                                    @else
                                        <span class="avatar-text">{{ucfirst( Auth::user()->getDisplayName()[0])}}</span>
                                    @endif
                                    {{__("Hi, :Name",['name'=>Auth::user()->getDisplayName()])}}
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu text-left">
                                    @if(Auth::user()->hasPermissionTo('dashboard_vendor_access'))
                                        <li><a href="{{url(app_get_locale().'/user/dashboard')}}"><i class="icon ion-md-analytics"></i> {{__("Vendor Dashboard")}}</a></li>
                                    @endif
                                    <li class="@if(Auth::user()->hasPermissionTo('dashboard_vendor_access')) menu-hr @endif">
                                        <a href="{{url(app_get_locale().'/user/profile')}}"><i class="icon ion-md-construct"></i> {{__("My profile")}}</a>
                                    </li>
                                    <li class="menu-hr"><a href="{{url(app_get_locale().'/user/booking-history')}}"><i class="fa fa-clock-o"></i> {{__("Booking History")}}</a></li>
                                    <li class="menu-hr"><a href="{{url(app_get_locale().'/user/profile/change-password')}}"><i class="fa fa-lock"></i> {{__("Change password")}}</a></li>
                                    @if(Auth::user()->hasPermissionTo('dashboard_access'))
                                        <li class="menu-hr"><a href="{{url('/admin')}}"><i class="icon ion-ios-ribbon"></i> {{__("Admin Dashboard")}}</a></li>
                                    @endif
                                    <li class="menu-hr">
                                        <a  href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class="fa fa-sign-out"></i> {{__('Logout')}}</a>
                                    </li>
                                </ul>
                                <form id="logout-form" action="{{ route('auth.logout') }}" method="POST" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>
                        @endif
                    </ul>
                @endif
                <button class="bravo-more-menu">
                    <i class="fa fa-bars"></i>
                </button>
            </div>
        </div>
    </div>
    <div class="bravo-menu-mobile" style="display:none;">
        <div class="user-profile">
            <div class="b-close">
                    <div class="name-menu-responsive">
                        @if($logo_id = setting_item("logo_id"))
                        <?php $logo = get_file_url($logo_id,'full') ?>
                            <img width="60%" src="{{$logo}}" alt="{{setting_item("site_title")}}">
                        @endif
                    </div>
                    <div class="icon-close"><i class="icofont-scroll-left"></i></div>
            </div>
            <div class="avatar"></div>
            <div class="g-menu">
                <?php generate_menu('primary') ?>
            </div>
            <ul class="menu-mobile-bottom">
                @if(!Auth::id())
                    <li>
                        <a href="#login" data-toggle="modal" data-target="#login" class="login">{{__('Login')}}</a>
                    </li>
                    <li>
                        <a href="#register" data-toggle="modal" data-target="#register" class="signup">{{__('Sign Up')}}</a>
                    </li>
                @else
                    <li>
                        <a href="{{url(app_get_locale().'/user/profile')}}">
                            <i class="icofont-user-suited"></i> {{__("Hi, :Name",['name'=>Auth::user()->getDisplayName()])}}
                        </a>
                    </li>
                    <li>
                        <a href="{{url(app_get_locale().'/user/profile')}}">
                            <i class="icon ion-md-construct"></i> {{__("My profile")}}
                        </a>
                    </li>
                    @if(Auth::user()->hasPermissionTo('dashboard_access'))
                        <li>
                            <a href="{{url('/admin')}}"><i class="icon ion-ios-ribbon"></i> {{__("Dashboard")}}</a>
                        </li>
                    @endif
                    <li>
                        <a  href="#" onclick="event.preventDefault(); document.getElementById('logout-form-mobile').submit();">
                            <i class="fa fa-sign-out"></i> {{__('Logout')}}
                        </a>
                        <form id="logout-form-mobile" action="{{ route('auth.logout') }}" method="POST" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                    </li>

                @endif
            </ul>
            <ul class="multi-lang menu-mobile-bottom-aditional">
                @include('Language::frontend.switcher')
            </ul>
            <ul class="multi-lang menu-mobile-bottom-aditional">
                @include('Core::frontend.currency-switcher')
            </ul>
        </div>
    </div>
</div>

<script>
    window.onload=function(){
        if ($(document).width()<768) {



            var he=$(".b-close").height()+$(".g-menu").height();
            he=he+33;
            console.log(he+"px");
            $("body").append('<style>.avatar:after{height: ' + he + 'px;}</style>');
            $(".g-menu .main-menu.menu-generated .depth-0 .fa.fa-angle-down").first().click();

            $(".g-menu .depth-0 .children-menu.menu-dropdown").first().css("max-height", $(".g-menu").height()+"px");
            $(".g-menu .depth-0 .children-menu.menu-dropdown").first().css("overflow", "auto");

            $(".g-menu .depth-2 i").click(function(e){
            if($(this).parent().parent().find("ul").is(":visible")){
                        $(this).parent().parent().find("ul").hide();
                    } else{
                        $(this).parent().parent().find("ul").show();
                    }
            });

        }

        $(".g-menu .depth-0").click(function(e){
    
                if ($(document).width()<768) {
                    if($(this).find(".children-menu.menu-dropdown").first().length){
                        $(".g-menu .depth-0").each(function(key, b) {
                            $(b).removeClass("active");
                        });
                        $(this).addClass("active");
                    } else{
                        window.location.href=$(this).find("a").first().attr("href");
                        console.log("No existe")
                    }
                }
            });


    }
</script>