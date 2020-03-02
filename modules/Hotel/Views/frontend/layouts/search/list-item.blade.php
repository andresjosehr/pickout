<div class="row">
    <div class="col-lg-3 col-md-12">
        @include('Hotel::frontend.layouts.search.filter-search')
    </div>
    <div class="col-lg-9 col-md-12">
        <div class="bravo-list-item">
            <div class="topbar-search">
                <div class="text">
                    @if($rows->total() > 1)
                        {{ __(":count hotels found",['count'=>$rows->total()]) }}
                    @else
                        {{ __(":count hotel found",['count'=>$rows->total()]) }}
                    @endif
                </div>
                <div class="control">

                </div>
            </div>
            <div class="list-item">
                <div class="row">
                    @if($rows->total() > 0)
                        @foreach($rows as $row)
                            @php $layout = setting_item("hotel_layout_item_search",'list') @endphp
                            @if($layout == "list")
                                <div class="col-lg-12 col-md-12">
                                    @include('Hotel::frontend.layouts.search.loop-list')
                                </div>
                            @else
                                <div class="col-lg-4 col-md-12">
                                    @include('Hotel::frontend.layouts.search.loop-grid')
                                </div>
                            @endif
                        @endforeach
                    @else
                        <div class="col-lg-12">
                            {{__("Hotel not found")}}
                        </div>
                    @endif
                </div>
            </div>
            <div class="bravo-pagination">
                {{$rows->appends(request()->query())->links()}}
                @if($rows->total() > 0)
                    <span class="count-string">{{ __("Showing :from - :to of :total Hotels",["from"=>$rows->firstItem(),"to"=>$rows->lastItem(),"total"=>$rows->total()]) }}</span>
                @endif
            </div>
        </div>
    </div>

    <div class="col-12 d-block d-md-none" style="position: fixed;bottom: 0px;background:#106fef;z-index: 9;padding: 10px 20px;text-align: center;color:white;">
        <i class="far fa-map-marked-alt fx-1 mr-2 icon_new_search" data-toggle="modal" data-target="#exampleModal" style="cursor: pointer;" onclick="OpenMapIframe()"></i>
    </div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="height: 100%;padding: 0px !important;width: 100%;left: 0;margin-left: 0px;margin-top: 0px;">
    <div class="modal-content" style="height: 100%">
      <div class="modal-header" style="height: 100%">
        <div>
            <button style="position: absolute;" type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div style="height: 100%">
            <iframe src="https://pickout.cl/alojamientos?_layout=map" height="100%" width="100%" frameborder="0"></iframe>
        </div>
      </div>
    </div>
  </div>
</div>


</div>