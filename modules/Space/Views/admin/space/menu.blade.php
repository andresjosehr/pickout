<div class="form-group-item">

    <label class="control-label">{{__('Menu')}}</label>

    <div class="g-items-header">

        <div class="row">

            <div class="col-md-2 text-left">{{__("Image")}}</div>

            <div class="col-md-4 text-left">{{__("Price - Desc")}}</div>

            {{--<div class="col-md-5">{{__('Content')}}</div> --}}

            <div class="col-md-1"></div>

        </div>

    </div>

    <div class="g-items">

        @if(!empty($translation->menu))

            @php if(!is_array($translation->menu)) $translation->menu = json_decode($translation->menu); @endphp

            @foreach($translation->menu as $key=>$menu)

                <div class="item" data-number="{{$key}}">

                    <div class="row">

                        <div class="col-md-2">

                            {!! \Modules\Media\Helpers\FileHelper::fieldUpload('menu['.$key.'][image_id]',$menu['image_id'] ?? '') !!}

                        </div>

                        <div class="col-md-9">

                            <input type="text" name="menu[{{$key}}][title]" class="form-control" value="{{$menu['title'] ?? ""}}" placeholder="{{__('Title')}}">

                            <input type="text" name="menu[{{$key}}][desc]" class="form-control" value="{{$menu['desc'] ?? ""}}" placeholder="Desc">

                        </div>
                        {{--
                        <div class="col-md-5">

                            <textarea name="menu[{{$key}}][content]" class="form-control full-h" placeholder="...">{{$menu['content']}}</textarea>

                        </div>
                        --}}

                        <div class="col-md-1">

                                <span class="btn btn-danger btn-sm btn-remove-item"><i class="fa fa-trash"></i></span>

                        </div>

                    </div>

                </div>

            @endforeach

        @endif

    </div>

    <div class="text-right">

            <span class="btn btn-info btn-sm btn-add-item"><i class="icon ion-ios-add-circle-outline"></i> {{__('Add item')}}</span>

    </div>

    <div class="g-more hide">

        <div class="item" data-number="__number__">

            <div class="row">

                <div class="col-md-2">

                    {!! \Modules\Media\Helpers\FileHelper::fieldUpload('menu[__number__][image_id]','','__name__') !!}

                </div>

                <div class="col-md-4">

                    <input type="text" __name__="menu[__number__][title]" class="form-control" placeholder="$">

                    <input type="text" __name__="menu[__number__][desc]" class="form-control" placeholder="Desc">

                </div>
                            {{--
                <div class="col-md-5">

                    <textarea __name__="menu[__number__][content]" class="form-control full-h" placeholder="..."></textarea>

                </div> --}}

                <div class="col-md-1">

                    <span class="btn btn-danger btn-sm btn-remove-item"><i class="fa fa-trash"></i></span>

                </div>

            </div>

        </div>

    </div>

</div>