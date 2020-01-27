<div class="container" style="max-width: 100%;background: #111;position: relative;">
	<div class="triangle-4" style="width: 60px;height: 30px;border-top: solid 30px rgb(255,255,255);border-left: solid 30px transparent;border-right: solid 30px transparent;position: absolute;top: -1px;right: 0;left: 0;margin: auto !important;"></div>
    <div class="bravo-text {{$class ?? ''}}" style="padding: 60px 0 30px; color: #ff6a3a;font-weight: bold;">
        {!! clean($content ?? '') !!}
    </div>
</div>