@extends('layout.main')
@section('content')
    @if (session()->has('not_permitted'))
        <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert"
                aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
    @endif
    @if (session()->has('message'))
        <div class="alert alert-success alert-dismissible text-center"><button type="button" class="close"
                data-dismiss="alert" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button>{{ session()->get('message') }}</div>
    @endif
    <div class="row">
        <div class="container-fluid">
            <div class="col-md-12">
                <div class="brand-text float-left mt-4">
                    <h3>{{ ucfirst(trans('file.welcome')) }} <span>{{ strtoupper(Auth::user()->last_name) }}
                            {{ ucfirst(Auth::user()->first_name) }}</span> </h3>
                </div>
                <div class="filter-toggle btn-group">
                    <button class="btn btn-secondary date-btn" data-start_date="{{ date('Y-m-d') }}"
                        data-end_date="{{ date('Y-m-d') }}">{{ trans('file.Today') }}</button>
                    <button class="btn btn-secondary date-btn" data-start_date="{{ date('Y-m-d', strtotime(' -7 day')) }}"
                        data-end_date="{{ date('Y-m-d') }}">{{ trans('file.Last 7 Days') }}</button>
                    <button class="btn btn-secondary date-btn active"
                        data-start_date="{{ date('Y') . '-' . date('m') . '-' . '01' }}"
                        data-end_date="{{ date('Y-m-d') }}">{{ trans('file.This Month') }}</button>
                    <button class="btn btn-secondary date-btn" data-start_date="{{ date('Y') . '-01' . '-01' }}"
                        data-end_date="{{ date('Y') . '-12' . '-31' }}">{{ trans('file.This Year') }}</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Counts Section -->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 form-group">
                    <div class="row">
                        <!-- Count item widget-->
                        <div class="col-sm-3">
                            <div class="wrapper count-title text-center">
                                <div class="icon"><i class="dripicons-graph-bar" style="color: #733686"></i></div>
                                <div class="name"><strong
                                        style="color: #733686">{{ trans('file.Total Orders') }}</strong></div>
                                <div class="count-number total-order-data"><strong
                                        style="color: #733686">{{ number_format((float) $total_sales, 0, '.', ' ') }}</strong>
                                </div>
                            </div>
                        </div>
                        <!-- Count item widget-->
                        <div class="col-sm-3">
                            <div class="wrapper count-title text-center">
                                <div class="icon"><i class="dripicons-return" style="color: #00c689"></i></div>
                                <div class="name"><strong style="color: #00c689">{{ trans('file.Delivered') }}</strong>
                                </div>
                                <div class="count-number delivered-data"><strong
                                        style="color: #00c689">{{ number_format((float) $livre, 0, '.', ' ') }}</strong>
                                </div>
                            </div>
                        </div>
                        <!-- Count item widget-->
                        <div class="col-sm-3">
                            <div class="wrapper count-title text-center">
                                <div class="icon"><i class="dripicons-media-loop" style="color: #ff8952"></i></div>
                                <div class="name"><strong style="color: #ff8952">{{ trans('file.In progress') }}</strong>
                                </div>
                                <div class="count-number in-progress-data"><strong
                                        style="color: #ff8952">{{ number_format((float) $en_cours, 0, '.', ' ') }}</strong>
                                </div>
                            </div>
                        </div>
                        <!-- Count item widget-->
                        <div class="col-sm-3">
                            <div class="wrapper count-title text-center">
                                <div class="icon"><i class="dripicons-media-loop" style="color: red"></i></div>
                                <div class="name"><strong style="color: red">{{ trans('file.Returned') }}</strong></div>
                                <div class="count-number in-progress-data"><strong
                                        style="color: red">{{ number_format((float) $returned, 0, '.', ' ') }}</strong>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- Count item widget-->
                        <div class="col-sm-{{ $profit_row }}">
                            <div class="wrapper count-title text-center">
                                <div class="icon"><i class="dripicons-trophy" style="color: #297ff9"></i></div>
                                <div class="name"><strong style="color: #297ff9">{{ trans('file.Profit') }}</strong>
                                </div>
                                <div class="count-number total-profit-data">
                                    {{ number_format((float) $profit, 2, '.', ' ') }}</div>
                            </div>
                        </div>
                        <!-- Count item widget-->
                        <div class="col-sm-{{ $profit_row }}">
                            <div class="wrapper count-title text-center">
                                <div class="icon"><i class="dripicons-trophy" style="color: #297ff9"></i></div>
                                <div class="name"><strong style="color: #297ff9">{{ trans('file.paid') }}</strong></div>
                                <div class="count-number profit-claimed-data">
                                    {{ number_format((float) $total_withdraws, 2, '.', ' ') }}
                                    <span
                                        style="display: inline-flex; font-size: 0.65em;">({{ $demande_withdraws }})</span>
                                </div>
                            </div>
                        </div>
                        <!-- Count item widget-->
                        <div class="col-sm-{{ $profit_row }}">
                            <div class="wrapper count-title text-center">
                                <div class="icon"><i class="dripicons-trophy" style="color: #297ff9"></i></div>
                                <div class="name"><strong style="color: #297ff9">{{ trans('file.Remaining') }}</strong>
                                </div>
                                <div class="count-number profit-remain-data">
                                    {{ number_format((float) $reste, 2, '.', ' ') }}</div>
                            </div>
                        </div>
                        @if (Auth::user()->role_id == 1)
                            <!-- Count item widget-->
                            <div class="col-sm-{{ $profit_row }}">
                                <div class="wrapper count-title text-center">
                                    <div class="icon"><i class="dripicons-trophy" style="color: #297ff9"></i></div>
                                    <div class="name"><strong
                                            style="color: #297ff9">{{ trans('file.Remaining') }}</strong></div>
                                    <div class="count-number profit-remain-data">
                                        {{ number_format((float) $reste, 2, '.', ' ') }}</div>
                                </div>
                            </div>
                        @endif
                    </div>
                    <div class="row">
                        <!-- Count item widget-->
                        <div class="col-sm-{{ $profit_row }}">
                            <div class="wrapper count-title text-center">
                                <div class="icon"><i class="dripicons-trophy" style="color: #297ff9"></i></div>
                                <div class="name"><strong style="color: #297ff9">{{ trans('file.Profit') }}</strong>
                                </div>
                                <div class="count-number total-profit-data">
                                    {{ number_format((float) $total_v_referral, 2, '.', ' ') }}</div>
                            </div>
                        </div>
                        <!-- Count item widget-->
                        <div class="col-sm-{{ $profit_row }}">
                            <div class="wrapper count-title text-center">
                                <div class="icon"><i class="dripicons-trophy" style="color: #297ff9"></i></div>
                                <div class="name"><strong style="color: #297ff9">{{ trans('file.paid') }}</strong>
                                </div>
                                <div class="count-number profit-claimed-data">
                                    {{ number_format((float) $total_w_referral, 2, '.', ' ') }}</div>
                            </div>
                        </div>
                        <!-- Count item widget-->
                        <div class="col-sm-{{ $profit_row }}">
                            <div class="wrapper count-title text-center">
                                <div class="icon"><i class="dripicons-trophy" style="color: #297ff9"></i></div>
                                <div class="name"><strong style="color: #297ff9">{{ trans('file.Remaining') }}</strong>
                                </div>
                                <div class="count-number profit-remain-data">
                                    {{ number_format((float) $total_r_referral, 2, '.', ' ') }}</div>
                            </div>
                        </div>
                        @if (Auth::user()->role_id == 1)
                            <!-- Count item widget-->
                            <div class="col-sm-{{ $profit_row }}">
                                <div class="wrapper count-title text-center">
                                    <div class="icon"><i class="dripicons-trophy" style="color: #297ff9"></i></div>
                                    <div class="name"><strong
                                            style="color: #297ff9">{{ trans('file.Remaining') }}</strong></div>
                                    <div class="count-number profit-remain-data">
                                        {{ number_format((float) $total_v_referral, 2, '.', ' ') }}</div>
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script type="text/javascript">
        // Show and hide color-switcher
        $(".color-switcher .switcher-button").on('click', function() {
            $(".color-switcher").toggleClass("show-color-switcher", "hide-color-switcher", 300);
        });

        // Color Skins
        $('a.color').on('click', function() {
            /*var title = $(this).attr('title');
            $('#style-colors').attr('href', 'css/skin-' + title + '.css');
            return false;*/
            $.get('setting/general_setting/change-theme/' + $(this).data('color'), function(data) {});
            var style_link = $('#custom-style').attr('href').replace(/([^-]*)$/, $(this).data('color'));
            $('#custom-style').attr('href', style_link);
        });

        $(".date-btn").on("click", function() {
            $(".date-btn").removeClass("active");
            $(this).addClass("active");
            var start_date = $(this).data('start_date');
            var end_date = $(this).data('end_date');
            alert("Start : " + start_date + "\nEnd : " + end_date);
            $.get('dashboard-filter/' + start_date + '/' + end_date, function(data) {
                dashboardFilter(data);
            });
        });

        function dashboardFilter(data) {
            $('.revenue-data').hide();
            $('.revenue-data').html(parseFloat(data[0]).toFixed(2));
            $('.revenue-data').show(500);

            $('.return-data').hide();
            $('.return-data').html(parseFloat(data[1]).toFixed(2));
            $('.return-data').show(500);

            $('.profit-data').hide();
            $('.profit-data').html(parseFloat(data[2]).toFixed(2));
            $('.profit-data').show(500);

            $('.purchase_return-data').hide();
            $('.purchase_return-data').html(parseFloat(data[3]).toFixed(2));
            $('.purchase_return-data').show(500);
        }
    </script>
@endsection
