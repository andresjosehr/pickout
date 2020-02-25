<style type="text/css">
    .bravo_wrap .bravo_form-search .g-field-search{
        flex: 0 0 80%;
        max-width: 80%;
    }

    .bravo_wrap .bravo_form-search .g-field-search{
        flex: 0 0 80%;
        max-width: 80%;
    }
    .bravo_wrap .bravo_form-search .g-button-submit {
        flex: 0 0 20%;
        max-width: 20%;
        margin-right: -1px;
    }
    .bravo_form-search{
        display: block !important;
    }
    .bravo_form-search .g-field-search,.search-hostelworld-design-hotel .g-button-submit{
        flex: none !important;
        max-width: 100% !important;
    }
    .bravo_form-search .g-button-submit{
        margin: 21px auto !important;
    }
    .bravo_form-search .g-button-submit button{
        border-radius: 3px !important;
        width: fit-content !important;
        padding: 12.8px 24px !important;
    }
    .bravo_wrap .bravo_form-search{
        background: transparent;
    }
    .bravo_wrap .bravo_form-search .g-field-search{
        background: #00000063 !important;
        padding: 8px 21px;
        border-radius: 3px;
    }
    .tab-content:before{
        display: none;
    }
    .bravo_form-search .form-content{
        background: white;
        border-radius: 3px;
    }
    .bravo_wrap .bravo_form-search .form-content{
        padding: 9.5px 15px !important;
        margin-bottom: 0px;
    }

    .bravo_form-search .label-search{
        color: white;
        font-size: 10.4px;
        text-transform: uppercase;
        font-weight: 600;
        margin-bottom: 6px;
    }

    .bravo_form-search input::placeholder {
        color: #6c6c6c !important;
        font-size: 11px !important;
        font-weight: 600;
        opacity: 1; /* Firefox */
    }

    .bravo_form-search input:-ms-input-placeholder { /* Internet Explorer 10-11 */
        color: #6c6c6c !important;
        font-size: 11px !important;
        font-weight: 600;
    }

    .bravo_form-search input::-ms-input-placeholder { /* Microsoft Edge */
        color: #6c6c6c !important;
        font-weight: 600;
        font-size: 11px !important;
    }

    .bravo_form-search .render{
        color: #6c6c6c !important;
        font-size: 11px !important;
        font-weight: 600;
    }
    .bravo_form-search .check-in-wrapper{
        max-height: 16px;
    }
    .bravo_wrap .page-template-content .bravo-form-search-all .g-form-control .nav-tabs{
        margin-top: -37px;
    }
    .bravo_wrap .bravo_form-search .dropdown-toggle:after{
        top: 19px !important;
    }

</style>

<form action="{{ route("hotel.search") }}" class="form bravo_form bravo_form-search search-hostelworld-design-hotel" method="get">
    <div class="g-field-search my-2">
        <div class="row">
            <div class="col-md-12 mx-0 px-0">
                <div class="form-group">
                    <i class="field-icon fa icofont-map d-none"></i>
                    <div class="form-content">
                        {{--<label>{{__("Location")}}</label>--}}
                        <?php
                        $location_name = "";
                        $list_json = [];
                        $traverse = function ($locations, $prefix = '') use (&$traverse, &$list_json , &$location_name) {
                            foreach ($locations as $location) {
                                $translate = $location->translateOrOrigin(app()->getLocale());
                                if (Request::query('location_id') == $location->id){
                                    $location_name = $translate->name;
                                }
                                $list_json[] = [
                                    'id' => $location->id,
                                    'title' => $prefix . ' ' . $translate->name,
                                ];
                                $traverse($location->children, $prefix . '-');
                            }
                        };
                        $traverse($list_location);
                        ?>
                        <div class="smart-search">
                            <input onchange="MostrarCamposSearch()" type="text" class="smart-search-location parent_text form-control" {{ ( empty(setting_item("hotel_location_search_style")) or setting_item("hotel_location_search_style") == "normal" ) ? "readonly" : ""  }} placeholder="{{__("Where are you going?")}}" value="{{ $location_name }}" data-onLoad="{{__("Loading...")}}"
                                   data-default="{{ json_encode($list_json) }}">
                            <input type="hidden" class="child_id" name="location_id" value="{{Request::query('location_id')}}">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 mx-0 pr-md-2 px-0 input-search-mit" style="display: none;">
                <div class="form-group">
                    <i class="field-icon icofont-wall-clock d-none"></i>
                    <label class="label-search">{{__("Check In - Out")}}</label>
                    <div class="form-content mb-0">
                        <div class="form-date-search-hotel">
                            <div class="date-wrapper">
                                <div class="check-in-wrapper">
                                    <div class="render check-in-render">{{Request::query('start',display_date(strtotime("today")))}}</div>
                                    <span> - </span>
                                    <div class="render check-out-render">{{Request::query('end',display_date(strtotime("+1 day")))}}</div>
                                </div>
                            </div>
                            <input type="hidden" class="check-in-input" value="{{Request::query('start',display_date(strtotime("today")))}}" name="start">
                            <input type="hidden" class="check-out-input" value="{{Request::query('end',display_date(strtotime("+1 day")))}}" name="end">
                            <input type="text" class="check-in-out" name="date" value="{{Request::query('date',date("Y-m-d")." - ".date("Y-m-d",strtotime("+1 day")))}}">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 mx-0 pl-md-2 px-0 dropdown form-select-guests input-search-mit" style="display: none;">
                <div class="form-group">
                    <i class="field-icon icofont-travelling d-none"></i>
                    <label class="label-search">{{__('Guests')}}</label>
                    <div class="form-content dropdown-toggle mb-0" data-toggle="dropdown">
                        <div class="wrapper-more">
                            @php
                                $adults = request()->query('adults',1);
                                $children = request()->query('children',0);
                            @endphp
                            <div class="render">
                                <span class="adults" ><span class="one @if($adults >1) d-none @endif">{{__('1 Adult')}}</span> <span class="@if($adults <= 1) d-none @endif multi" data-html="{{__(':count Adults')}}">{{__(':count Adults',['count'=>request()->query('adults',1)])}}</span></span>
                                -
                                <span class="children" >
                            <span class="one @if($children >1) d-none @endif" data-html="{{__(':count Child')}}">{{__(':count Child',['count'=>request()->query('children',0)])}}</span>
                            <span class="multi @if($children <=1) d-none @endif" data-html="{{__(':count Children')}}">{{__(':count Children',['count'=>request()->query('children',0)])}}</span>
                        </span>
                            </div>
                        </div>
                    </div>
                    <div class="dropdown-menu select-guests-dropdown" >
                        <input type="hidden" name="adults" value="{{request()->query('adults',1)}}" min="1" max="20">
                        <input type="hidden" name="children" value="{{request()->query('children',0)}}" min="0" max="20">
                        <input type="hidden" name="room" value="{{request()->query('room',1)}}" min="1" max="20">
                        <div class="dropdown-item-row">
                            <div class="label">{{__('Rooms')}}</div>
                            <div class="val">
                                <span class="btn-minus" data-input="room"><i class="icon ion-md-remove"></i></span>
                                <span class="count-display">{{request()->query('room',1)}}</span>
                                <span class="btn-add" data-input="room"><i class="icon ion-ios-add"></i></span>
                            </div>
                        </div>
                        <div class="dropdown-item-row">
                            <div class="label">{{__('Adults')}}</div>
                            <div class="val">
                                <span class="btn-minus" data-input="adults"><i class="icon ion-md-remove"></i></span>
                                <span class="count-display">{{request()->query('adults',1)}}</span>
                                <span class="btn-add" data-input="adults"><i class="icon ion-ios-add"></i></span>
                            </div>
                        </div>
                        <div class="dropdown-item-row">
                            <div class="label">{{__('Children')}}</div>
                            <div class="val">
                                <span class="btn-minus" data-input="children"><i class="icon ion-md-remove"></i></span>
                                <span class="count-display">{{request()->query('children',0)}}</span>
                                <span class="btn-add" data-input="children"><i class="icon ion-ios-add"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="g-button-submit text-center">
        <button class="btn btn-primary btn-search" type="submit">{{__("Search")}}</button>
    </div>
</form>