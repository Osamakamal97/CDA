@php
    $angle = Session::get('lang') == "ar" ? "left" : "right"
@endphp
<header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>A</b>LT</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Admin</b>LTE</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        @include('admin.layouts.menu')
    </nav>
</header>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="{{ url('design/adminlte') }}/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>{{--}}{{ admin()->user()->name }}{{--}}</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
          <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
          </button>
        </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header"></li>

            <li class="treeview {{ active_menu('')[0] }}">
                <a href="{{route('admin.home')}}">
                    <i class="fa fa-list"></i> <span>{{ trans('admin.dashboard') }}</span>
                    <span class="pull-{{ $angle }}-container">
            <i class="fa fa-angle-{{ $angle }} pull-{{ $angle }}"></i>
          </span>
                </a>
                <ul class="treeview-menu" style="{{ active_menu('admin')[1] }}">
                    <li class=""><a href="{{ aurl('/') }}">
                            <i class="fa fa-cog"></i> <span>{{ trans('admin.dashboard') }}</span>
                            <span class="pull-{{ $angle }}-container">
            </span>
                        </a>
                    </li>
                    <li class=""><a href="{{ aurl('settings') }}">
                            <i class="fa fa-cog"></i> <span>{{ trans('admin.settings') }}</span>
                            <span class="pull-{{ $angle }}-container">
          </span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="treeview {{ active_menu('admin')[0] }}">
                <a href="#">
                    <i class="fa fa-users"></i> <span>{{ trans('admin.admin') }}</span>
                    <span class="pull-{{ $angle }}-container">
        <i class="fa fa-angle-{{ $angle }} pull-{{ $angle }}"></i>
      </span>
                </a>
                <ul class="treeview-menu" style="{{ active_menu('admin')[1] }}">
                    <li class=""><a href="{{ aurl('admin') }}"><i class="fa fa-users"></i> {{ trans('admin.admin') }}
                        </a></li>
                </ul>
            </li>

            <li class="treeview {{ active_menu('cities')[0] }}">
                <a href="#">
                    <i class="fa fa-building"></i> <span>{{ trans('admin.menus') }}</span>
                    <span class="pull-right-container">
        <i class="fa fa-angle-{{ $angle }} pull-{{ $angle }}"></i>
      </span>
                </a>

                <ul class="treeview-menu" style="{{ active_menu('cities')[1] }}">
                    <li class=""><a href="{{route('menus.index')}}"><i
                                    class="fa fa-building"></i> {{ trans('admin.Menus index') }}</a></li>
                    <li class=""><a href="{{route('menus.create')}}"><i
                                    class="fa fa-plus"></i> {{ trans('admin.create Menu') }}</a></li>

                    @foreach(\App\Front\Menu::all() as $menu)
                        <li class="treeview {{ active_menu('cities')[0] }}">
                            <a href="#">
                                <i class="fa fa-building"></i>
                                <span>{{app()->getLocale()=='ar'?$menu->ar_name : $menu->en_name}}</span>
                                <span class="pull-right-container">
                                <i class="fa fa-angle-{{ $angle }} pull-{{ $angle }}"></i></span></a>
                            <ul class="treeview-menu" style="{{ active_menu('cities')[1] }}">
                                <li class="">
                                    <a href="{{route('items.index',$menu->id)}}"><i class="fa fa-building"></i>Show All
                                        Items</a>
                                    <a href="{{route('items.create',$menu->id)}}"><i class="fa fa-building"></i>Add
                                        Item</a>
                                    @foreach($menu->items as $item)
                                        <a href="{{route('items.edit',[$item->menu->id,$item->id])}}"><i
                                                    class="fa fa-plus"></i>
                                            <span>{{app()->getLocale()=='ar'?$item->ar_name : $item->en_name}}</span>

                                        </a>

                                @if($item->subitems->count())
                                    @foreach($item->subitems as $subitem)
                                        <li class=""><a
                                                    href="{{route('subitems.edit',[$subitem->item->id,$subitem->id])}}"><i
                                                        class="fa fa-search"></i> {{$subitem->ar_name}}</a>

                                        </li>
                                    @endforeach
                                @endif

                                @endforeach

                                {{--                                            </ul>--}}
                            </ul>

                            @endforeach

                        </li>
                </ul>

                <!-- show all menus  and if press any menu display create item form-->
            </li>

            <li class="treeview {{ active_menu('admin')[0] }}">
                <a href="#">
                    <i class="fa fa-users"></i> <span>@lang('admin.arabic pages')</span>
                    <span class="pull-{{ $angle }}-container">
        <i class="fa fa-angle-{{ $angle }} pull-{{ $angle }}"></i>
      </span>
                </a>
                <ul class="treeview-menu" style="{{ active_menu('admin')[1] }}">
                    <li class=""><a href="{{route('arpages.create')}}"><i class="fa fa-users"></i>@lang('admin.create')
                    <li class=""><a href="{{route('arpages.index')}}"><i class="fa fa-users"></i>@lang('admin.show all')
                        </a></li>
                </ul>
            </li>

            <li class="treeview {{ active_menu('admin')[0] }}">
                <a href="#">
                    <i class="fa fa-users"></i> <span>@lang('admin.english pages')</span>
                    <span class="pull-{{ $angle }}-container">
        <i class="fa fa-angle-{{ $angle }} pull-{{ $angle }}"></i>
      </span>
                </a>
                <ul class="treeview-menu" style="{{ active_menu('admin')[1] }}">
                    <li class=""><a href="{{route('enpages.create')}}"><i class="fa fa-users"></i>@lang('admin.create')
                    <li class=""><a href="{{route('enpages.index')}}"><i class="fa fa-users"></i>@lang('admin.show all')
                        </a></li>
                </ul>
            </li>

            <li class="treeview {{ active_menu('admin')[0] }}">
                <a href="#">
                    <i class="fa fa-users"></i> <span>@lang('admin.messages')</span>
                    <span class="pull-{{ $angle }}-container">
        <i class="fa fa-angle-{{ $angle }} pull-{{ $angle }}"></i>
      </span>
                </a>
                <ul class="treeview-menu" style="{{ active_menu('admin')[1] }}">
                    <li class=""><a href="{{route('messages.index')}}"><i
                                    class="fa fa-users"></i>@lang('admin.show all Contact Message')
                        </a></li>
                    <li class=""><a href="{{route('applications.index')}}"><i
                                    class="fa fa-users"></i>@lang('admin.show all Applications')
                        </a></li>
                </ul>
            </li>

            <li class="treeview {{ active_menu('admin')[0] }}">
                <a href="#">
                    <i class="fa fa-users"></i> <span>@lang('admin.settings')</span>
                    <span class="pull-{{ $angle }}-container">
        <i class="fa fa-angle-{{ $angle }} pull-{{ $angle }}"></i>
      </span>
                </a>
                @isset($setting)
                    <ul class="treeview-menu" style="{{ active_menu('admin')[1] }}">
                        @php $setting = \App\Front\Setting::first(); @endphp
                        <li class=""><a href="{{route('settings.edit',$setting->id)}}"><i
                                        class="fa fa-users"></i>@lang('admin.settings')
                            </a></li>

                    </ul>
                @endisset
            </li>

        </ul>

    </section>
    <!-- /.sidebar -->
</aside>
