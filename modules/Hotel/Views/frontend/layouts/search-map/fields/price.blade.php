<div class="filter-item filter-simple dropdown ">
    <div class="form-group dropdown-toggle" data-toggle="dropdown" >
        <div class="filter-title mb-2">
          <i class="far fa-money-bill-wave text-dark fx-1 mr-2 icon_new_search"></i>
          <span class="float-left w-100" style="font-size: 14px !important;font-weight: 600;color: #4b4b4b;">{{__('Price filter')}}</span>
        </div>
        <div class="filter-dropdown dropdown-menu dropdown-menu-right show price-map-modify pt-0">
        <div class="bravo-filter-price">
            <?php
            $price_min = $pri_from = $hotel_min_max_price[0];
            $price_max = $pri_to = $hotel_min_max_price[1];
            if (!empty($price_range = Request::query('price_range'))) {
                $pri_from = explode(";", $price_range)[0];
                $pri_to = explode(";", $price_range)[1];
            }
            $currency = App\Currency::getCurrency(setting_item('currency_main'))
            ?>
            <input type="hidden" class="filter-price irs-hidden-input" name="price_range"
                   data-symbol=" {{$currency['symbol'] ?? ''}}"
                   data-min="{{$price_min}}"
                   data-max="{{$price_max}}"
                   data-from="{{$pri_from}}"
                   data-to="{{$pri_to}}"
                   readonly="" value="{{$price_range}}">
            {{-- <div class="text-right">
                <br>
                <a href="#" onclick="return false;" class="btn btn-primary btn-sm btn-apply-advances">{{__("APPLY")}}</a>
            </div> --}}
        </div>
    </div>
    </div>
</div>