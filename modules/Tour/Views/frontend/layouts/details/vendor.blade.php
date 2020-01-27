<?php
//if(!setting_item('tour_enable_inbox')) return;
$vendor = $row->author;
?>
<div class="owner-info widget-box">
    <div class="media">
        <div class="media-left">
            <a href="{{route('user.profile',['id'=>$vendor->id])}}" target="_blank" >
                @if($avatar_url = $vendor->getAvatarUrl())
                    <img class="avatar avatar-96 photo origin round" src="{{$avatar_url}}" alt="{{$vendor->getDisplayName()}}">
                @else
                    <span class="avatar-text" style="font-size: 10px;">{{ucfirst($vendor->getDisplayName())}}</span>
                @endif
            </a>
        </div>
        <div class="media-body">
            <h4 class="media-heading"><a class="author-link" href="{{route('user.profile',['id'=>$vendor->id])}}" target="_blank">{{$vendor->getDisplayName()}}</a>
                @if($vendor->is_verified)
                    <img data-toggle="tooltip" data-placement="top" src="{{asset('icon/ico-vefified-1.svg')}}" title="{{__("Verified")}}" alt="ico-vefified-1">
                @else
                    <img data-toggle="tooltip" data-placement="top" src="{{asset('icon/ico-not-vefified-1.svg')}}" title="{{__("Not verified")}}" alt="ico-vefified-1">
                @endif
            </h4>
            <p>{{ __("Member Since :time",["time"=> date("M Y",strtotime($vendor->created_at))]) }}</p>
            @if((!Auth::id() or Auth::id() != $row->create_user ) and setting_item('inbox_enable'))
                <span class="bc_start_chat btn" data-id="{{$row->id}}" data-type="{{$row->type}}"><i class="icon ion-ios-chatboxes"></i> {{__('Message host')}}</span>
            @endif
        </div>
    </div>
</div>
@if($translation->hours_open)
    <div class="g-overview" style="margin-top: 20px;">
        <div class="hours_open">
        <h3>{{__("Open Hours")}}</h3>
        @foreach($translation->hours_open as $day=>$hours)
        @if($hours['open_am'] && $hours['close_am']) {{__(ucfirst($day))}}: {{$hours['open_am']}} - {{$hours['close_am']}} @else {{__(ucfirst($day))}}: {{__("Closed")}} @endif 
        @if($hours['open_pm'] && $hours['close_pm']) {{$hours['open_pm']}} - {{$hours['close_pm']}} @endif
        
        <br/>
        @endforeach
        </div>
    </div>
@endif
