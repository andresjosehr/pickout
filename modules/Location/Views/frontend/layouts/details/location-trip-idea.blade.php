@if($translation->trip_ideas)
    <div class="g-trip-ideas">
        <h3 class="pt-3 text-center">{{__("Trip Ideas")}}</h3>
        @if(!empty($translation->trip_ideas))
            @php if(!is_array($translation->trip_ideas)) $translation->trip_ideas = json_decode($translation->trip_ideas); @endphp
            <div class="row justify-content-center">
                @foreach($translation->trip_ideas as $key=>$trip_idea)
                    <div class="col-md-3 col-6 my-2 px-2 py-2">
                        <div class="cuadro-trip-div" data-url='{{$trip_idea['link']}}'>
                            <div class="div-icon">
                                <i class="{{$trip_idea['icon']}}"></i>
                            </div>
                            <div class="div-title">
                                <span>{{@$trip_idea['title']}}</span>
                            </div>
                            <div class="info-tooltip-trip">
                                <span>{{$trip_idea['content']}}</span>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            </div>
        @endif
@endif