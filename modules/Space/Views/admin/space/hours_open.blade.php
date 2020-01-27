<div class="form-group-item" >

    <label class="control-label">{{__('Open Hours')}}</label>

    <div class="g-items-header">

        <div class="row">

            <div class="col-md-2 text-left">{{__("Day")}}</div>

            <div class="col-md-4 text-left">{{__("Open - Closed AM")}}</div>

            <div class="col-md-4 text-left">{{__("Open - Closed PM")}}</div>

            {{--<div class="col-md-5">{{__('Content')}}</div> --}}

            <div class="col-md-1"></div>

        </div>

    </div>

    <div class="g-items" style="display:block;">

        

            @php if(!is_array($translation->hours_open)) $translation->hours_open = json_decode($translation->hours_open); @endphp

            

                <div class="item">

                    <div class="row">

                        <div class="col-md-2">

                            <label>{{__("Mon")}}</label>

                        </div>

                        <div class="col-md-4">

                            <input type="time" name="hours_open[mon][open_am]" class="form-control" value="{{$row->hours_open['mon']['open_am'] ?? ""}}" placeholder="09:00" >

                            <input type="time" name="hours_open[mon][close_am]" class="form-control" value="{{$row->hours_open['mon']['close_am'] ?? ""}}" placeholder="12:00" >

                        </div>
                        
                        <div class="col-md-4">

                            <input type="time" name="hours_open[mon][open_pm]" class="form-control" value="{{$row->hours_open['mon']['open_pm'] ?? ""}}" placeholder="12:00" >

                            <input type="time" name="hours_open[mon][close_pm]" class="form-control" value="{{$row->hours_open['mon']['close_pm'] ?? ""}}" placeholder="02:00" >

                        </div>

                        <!-- <div class="col-md-1">

                                <span class="btn btn-danger btn-sm btn-remove-item"><i class="fa fa-trash"></i></span>

                        </div> -->

                    </div>
                    <div class="row">

                        <div class="col-md-2">

                            <label>{{__("Tue")}}</label>

                        </div>

                        <div class="col-md-4">

                            <input type="time" name="hours_open[tue][open_am]" class="form-control" value="{{$row->hours_open['tue']['open_am'] ?? ""}}" placeholder="09:00" >

                            <input type="time" name="hours_open[tue][close_am]" class="form-control" value="{{$row->hours_open['tue']['close_am'] ?? ""}}" placeholder="12:00" >

                        </div>
                        
                        <div class="col-md-4">

                            <input type="time" name="hours_open[tue][open_pm]" class="form-control" value="{{$row->hours_open['tue']['open_pm'] ?? ""}}" placeholder="12:00" >

                            <input type="time" name="hours_open[tue][close_pm]" class="form-control" value="{{$row->hours_open['tue']['close_pm'] ?? ""}}" placeholder="02:00" >

                        </div>

                        <!-- <div class="col-md-1">

                                <span class="btn btn-danger btn-sm btn-remove-item"><i class="fa fa-trash"></i></span>

                        </div> -->

                    </div>

                    <div class="row">

                        <div class="col-md-2">

                            <label>{{__("Wed")}}</label>

                        </div>

                        <div class="col-md-4">

                            <input type="time" name="hours_open[wed][open_am]" class="form-control" value="{{$row->hours_open['wed']['open_am'] ?? ""}}" placeholder="09:00" >

                            <input type="time" name="hours_open[wed][close_am]" class="form-control" value="{{$row->hours_open['wed']['close_am'] ?? ""}}" placeholder="12:00" >

                        </div>
                        
                        <div class="col-md-4">

                            <input type="time" name="hours_open[wed][open_pm]" class="form-control" value="{{$row->hours_open['wed']['open_pm'] ?? ""}}" placeholder="12:00" >

                            <input type="time" name="hours_open[wed][close_pm]" class="form-control" value="{{$row->hours_open['wed']['close_pm'] ?? ""}}" placeholder="02:00" >

                        </div>

                        <!-- <div class="col-md-1">

                                <span class="btn btn-danger btn-sm btn-remove-item"><i class="fa fa-trash"></i></span>

                        </div> -->

                    </div>

                    <div class="row">

                        <div class="col-md-2">

                            <label>{{__("Thu")}}</label>

                        </div>

                        <div class="col-md-4">

                            <input type="time" name="hours_open[thu][open_am]" class="form-control" value="{{$row->hours_open['thu']['open_am'] ?? ""}}" placeholder="09:00" >

                            <input type="time" name="hours_open[thu][close_am]" class="form-control" value="{{$row->hours_open['thu']['close_am'] ?? ""}}" placeholder="12:00" >

                        </div>
                        
                        <div class="col-md-4">

                            <input type="time" name="hours_open[thu][open_pm]" class="form-control" value="{{$row->hours_open['thu']['open_pm'] ?? ""}}" placeholder="12:00" >

                            <input type="time" name="hours_open[thu][close_pm]" class="form-control" value="{{$row->hours_open['thu']['close_pm'] ?? ""}}" placeholder="02:00" >

                        </div>

                        <!-- <div class="col-md-1">

                                <span class="btn btn-danger btn-sm btn-remove-item"><i class="fa fa-trash"></i></span>

                        </div> -->

                    </div>

                    <div class="row">

                        <div class="col-md-2">

                            <label>{{__("Fri")}}</label>

                        </div>

                        <div class="col-md-4">

                            <input type="time" name="hours_open[fri][open_am]" class="form-control" value="{{$row->hours_open['fri']['open_am'] ?? ""}}" placeholder="09:00" >

                            <input type="time" name="hours_open[fri][close_am]" class="form-control" value="{{$row->hours_open['fri']['close_am'] ?? ""}}" placeholder="12:00" >

                        </div>
                        
                        <div class="col-md-4">

                            <input type="time" name="hours_open[fri][open_pm]" class="form-control" value="{{$row->hours_open['fri']['open_pm'] ?? ""}}" placeholder="12:00" >

                            <input type="time" name="hours_open[fri][close_pm]" class="form-control" value="{{$row->hours_open['fri']['close_pm'] ?? ""}}" placeholder="02:00" >

                        </div>

                        <!-- <div class="col-md-1">

                                <span class="btn btn-danger btn-sm btn-remove-item"><i class="fa fa-trash"></i></span>

                        </div> -->

                    </div>

                    <div class="row">

                        <div class="col-md-2">

                            <label>{{__("Sat")}}</label>

                        </div>

                        <div class="col-md-4">

                            <input type="time" name="hours_open[sat][open_am]" class="form-control" value="{{$row->hours_open['sat']['open_am'] ?? ""}}" placeholder="09:00" >

                            <input type="time" name="hours_open[sat][close_am]" class="form-control" value="{{$row->hours_open['sat']['close_am'] ?? ""}}" placeholder="12:00" >

                        </div>
                        
                        <div class="col-md-4">

                            <input type="time" name="hours_open[sat][open_pm]" class="form-control" value="{{$row->hours_open['sat']['open_pm'] ?? ""}}" placeholder="12:00" >

                            <input type="time" name="hours_open[sat][close_pm]" class="form-control" value="{{$row->hours_open['sat']['close_pm'] ?? ""}}" placeholder="02:00" >

                        </div>

                        <!-- <div class="col-md-1">

                                <span class="btn btn-danger btn-sm btn-remove-item"><i class="fa fa-trash"></i></span>

                        </div> -->

                    </div>

                    <div class="row">

                        <div class="col-md-2">

                            <label>{{__("Sun")}}</label>

                        </div>

                        <div class="col-md-4">

                            <input type="time" name="hours_open[sun][open_am]" class="form-control" value="{{$row->hours_open['sun']['open_am'] ?? ""}}" placeholder="09:00" >

                            <input type="time" name="hours_open[sun][close_am]" class="form-control" value="{{$row->hours_open['sun']['close_am'] ?? ""}}" placeholder="12:00" >

                        </div>
                        
                        <div class="col-md-4">

                            <input type="time" name="hours_open[sun][open_pm]" class="form-control" value="{{$row->hours_open['sun']['open_pm'] ?? ""}}" placeholder="12:00" >

                            <input type="time" name="hours_open[sun][close_pm]" class="form-control" value="{{$row->hours_open['sun']['close_pm'] ?? ""}}" placeholder="02:00" >

                        </div>

                        <!-- <div class="col-md-1">

                                <span class="btn btn-danger btn-sm btn-remove-item"><i class="fa fa-trash"></i></span>

                        </div> -->

                    </div>

                </div>

            

        

    </div>

    

    

</div>