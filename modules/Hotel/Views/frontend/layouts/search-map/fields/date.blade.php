<div class="filter-item">
    <div class="form-group form-date-field form-date-search clearfix  has-icon">
        {{-- <i class="field-icon icofont-wall-clock"></i> --}}
        <div class="filter-title mb-2 d-flex">
          <i class="far fa-calendar-alt text-dark fx-1 mr-2 icon_new_search"></i>
          <span class="float-left w-100" style="font-size: 14px !important;font-weight: 600;color: #4b4b4b;">Fecha de reserva</span>
        </div>
        <div class="date-wrapper clearfix">
            <div class="check-in-wrapper d-flex align-items-center">
                <div class="render check-in-render">{{Request::query('start',display_date(strtotime("today")))}}</div>
                <span> - </span>
                <div class="render check-out-render">{{Request::query('end',display_date(strtotime("+1 day")))}}</div>
            </div>
        </div>
        <input type="hidden" class="check-in-input" value="{{Request::query('start',display_date(strtotime("today")))}}" name="start">
        <input type="hidden" class="check-out-input" value="{{Request::query('end',display_date(strtotime("+1 day")))}}" name="end">
        <input type="text" class="check-in-out input-filter" name="date" value="{{Request::query('date')}}">
    </div>
</div>