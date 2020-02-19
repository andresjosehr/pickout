<div id="hotel-rooms" class="hotel_rooms_form" v-cloak="">
    <h3 class="heading-section">{{__('Available Rooms')}}</h3>
    <div class="form-search-rooms">
        <div class="d-flex form-search-row">
            <div class="col-md-4">
                <div class="form-group form-date-field form-date-search " @click="openStartDate" data-format="{{get_moment_date_format()}}">
                    <i class="fa fa-angle-down arrow"></i>
                    <input type="text" class="start_date" ref="start_date" style="height: 1px; visibility: hidden">
                    <div class="date-wrapper form-content" >
                        <label class="form-label">{{__("Check In - Out")}}</label>
                        <div class="render check-in-render" v-html="start_date_html"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <i class="fa fa-angle-down arrow"></i>
                    <div class="form-content dropdown-toggle" data-toggle="dropdown">
                        <label class="form-label">{{__('Guests')}}</label>
                        <div class="render">
                            <span class="adults" >
                                <span class="one" >@{{adults}}
                                    <span v-if="adults < 2">{{__('Adult')}}</span>
                                    <span v-else>{{__('Adults')}}</span>
                                </span>
                            </span>
                            -
                            <span class="children" >
                                <span class="one" >@{{children}}
                                    <span v-if="children < 2">{{__('Child')}}</span>
                                    <span v-else>{{__('Children')}}</span>
                                </span>
                            </span>
                        </div>
                    </div>
                    <div class="dropdown-menu select-guests-dropdown" >
                        <div class="dropdown-item-row">
                            <div class="label">{{__('Adults')}}</div>
                            <div class="val">
                                <span class="btn-minus2" data-input="adults" @click="minusPersonType('adults')"><i class="icon ion-md-remove"></i></span>
                                <span class="count-display">@{{ adults }}</span>
                                <span class="btn-add2" data-input="adults" @click="addPersonType('adults')"><i class="icon ion-ios-add"></i></span>
                            </div>
                        </div>
                        <div class="dropdown-item-row">
                            <div class="label">{{__('Children')}}</div>
                            <div class="val">
                                <span class="btn-minus2" data-input="children" @click="minusPersonType('children')"><i class="icon ion-md-remove"></i></span>
                                <span class="count-display">@{{children}}</span>
                                <span class="btn-add2" data-input="children" @click="addPersonType('children')"><i class="icon ion-ios-add"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-btn">
                <div class="g-button-submit">
                    <button class="btn btn-primary btn-search" @click="checkAvailability" :class="{'loading':onLoadAvailability}" type="submit">
                        {{__("Check Availability")}}
                        <i v-show="onLoadAvailability" class="fa fa-spinner fa-spin"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="start_room_sticky"></div>
    <div class="hotel_list_rooms" :class="{'loading':onLoadAvailability}">
        <div class="row m-0">
            <div class="col-md-12 room-item room-card p-3 my-3 rounded" v-for="room in rooms">
                <div class="row">
                    <div class="col-md-3 col-attr-room">
                            <h3 class="room-name mb-1">@{{room.title}}</h3>
                            <p class="text-dark mb-1">Precio para hasta: <br> <i class="far fa-user mx-1" v-for="index in room.total_persons" :key="index"></i></p>
                            <p class="text-dark mb-1">Nº de Camas: <br><i class="far fa-bed mx-1" v-for="index in room.beds" :key="index"></i></p>
                    </div>
                    <div class="col-md-3 col-attr-room col-attr-room-comodidades">
                        <h3 class="room-name room-name-comodidades mb-1">Comodidades: </h3>
                        <span class="room-atributos text-dark border border-dark rounded mx-1" v-if="room.size != 0"><i class="far fa-ruler-combined"></i> @{{room.size}} m<sup>2</sup></span>
                        <span v-for='attr in room.attrs[0]' class="room-atributos text-dark border border-dark rounded mx-1">
                            <i :class="attr.icon"></i>  
                            <span v-html='attr.nombre'></span>
                        </span>
                    </div>
                    <div class="col-md-2 col-attr-room">
                            <h3 class="room-name mb-1"></h3>
                            <p class="text-success room-extras mb-1"><i class="far fa-mug-hot"></i> Desayuno incluido</p>
                    </div>
                    <div class="col-md-4 col-attr-room div-precio-aloj" v-if="!room.number">
                        <div class="row p-0">
                            <div class="col-6 col-md-12">
                                <h3 class="room-name mb-1">Precio:</h3>
                                <p class="text-dark room-price mb-1" v-html='room.price_html'></p>  

                                <div class="image image-gallery-aloja" @click="showGallery($event,room.id,room.gallery)">
                                    <div class="count-gallery" v-if="typeof room.gallery !='undefined' && room.gallery && room.gallery.length > 1" style="position: relative;">
                                        <i class="fa fa-picture-o"></i>
                                        @{{room.gallery.length}}
                                    </div>
                                </div>
                            </div>
                            <div class="col-6 col-md-12">
                                <p v-if='room.number_==1' class="alert alert-danger alert-few"><i class="far fa-exclamation-circle mr-1"></i> ¡Solo queda 1 disponible!</p>
                            </div>
                            <div class="col-12">
                                <div class="modal" :id="'modal_room_'+room.id" tabindex="-1" role="dialog">
                                <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">@{{ room.title }}</h5>
                                            <span class="c-pointer" data-dismiss="modal" aria-label="Close">
                                                <i class="input-icon field-icon fa">
                                                    <img src="{{asset('images/ico_close.svg')}}" alt="close">
                                                </i>
                                            </span>
                                        </div>
                                        <div class="modal-body">
                                            <div class="fotorama" data-nav="thumbs" data-width="100%" data-auto="false" data-allowfullscreen="true">
                                                <a v-for="g in room.gallery" :href="g.large"></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div> 
                    <div class="col-md-4 col-attr-room" v-if="room.number">
                        <div class="row p-0">
                            <div class="col-6 col-6 col-md-12">
                                <div class="col-price">
                                    <div class="teºt-center">
                                        <span class="price" v-html="room.price_html"></span>
                                    </div>
                                    <select v-if="room.number" v-model="room.number_selected" class="custom-select">
                                        <option value="0">0</option>
                                        <option v-for="i in (1,room.number)" :value="i">@{{i+' '+ (i > 1 ? i18n.rooms  : i18n.room)}} &nbsp;&nbsp; (@{{formatMoney(i*room.price)}})</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-6 col-6 col-md-12">
                              <p v-if='room.number_==1' class="alert alert-danger alert-few"><i class="far fa-exclamation-circle mr-1"></i> ¡Solo queda 1 disponible!</p>  
                            </div>
                        </div>
                    </div>



                </div>
            </div>
        </div>
    </div>
    <div class="hotel_room_book_status" v-if="total_price">
        <div class="row">
            <div class="col-md-6">
                <div class="extra-price-wrap d-flex justify-content-between">
                    <div class="flex-grow-1">
                        <label>
                            {{__("Total Room")}}:
                        </label>
                    </div>
                    <div class="flex-shrink-0">
                        @{{total_rooms}}
                    </div>
                </div>
                <div class="extra-price-wrap d-flex justify-content-between" v-for="(type,index) in buyer_fees">
                    <div class="flex-grow-1">
                        <label>
                            @{{type.type_name}}
                            <span class="render" v-if="type.price_type">(@{{type.price_type}})</span>
                            <i class="icofont-info-circle" v-if="type.desc" data-toggle="tooltip" data-placement="top" :title="type.type_desc"></i>
                        </label>
                    </div>
                    <div class="flex-shrink-0">@{{formatMoney(type.price)}}
                    </div>
                </div>
                <div class="extra-price-wrap d-flex justify-content-between is_mobile">
                    <div class="flex-grow-1">
                        <label>
                            {{__("Total Price")}}:
                        </label>
                    </div>
                    <div class="total-room-price">@{{total_price_html}}</div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="control-book">
                    <div class="total-room-price">
                        <span> {{__("Total Price")}}:</span> @{{total_price_html}}
                    </div>
                    <button type="button" class="btn btn-primary" @click="doSubmit($event)" :class="{'disabled':onSubmit}" name="submit">
                        <span >{{__("Book Now")}}</span>
                        <i v-show="onSubmit" class="fa fa-spinner fa-spin"></i>
                    </button>
                </div>

            </div>
        </div>
    </div>
    <div class="end_room_sticky"></div>
    <div class="alert alert-warning" v-if="!firstLoad && !rooms.length">
        {{__("No room available with your selected date. Please change your search critical")}}
    </div>
</div>
