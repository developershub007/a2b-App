@extends('layouts.settings.default')
@push('css_lib')
<!-- iCheck -->
<link rel="stylesheet" href="{{asset('public/plugins/iCheck/flat/blue.css')}}">
<!-- select2 -->
<link rel="stylesheet" href="{{asset('public/plugins/select2/select2.min.css')}}">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet" href="{{asset('public/plugins/summernote/summernote-bs4.css')}}">
{{--dropzone--}}
<link rel="stylesheet" href="{{asset('public/plugins/dropzone/bootstrap.min.css')}}">
@endpush
@section('settings_title',trans('lang.notification_type_edit'))
@section('settings_content')
  @include('flash::message')
  @include('adminlte-templates::common.errors')
  <div class="clearfix"></div>
  <div class="card">
    <div class="card-header">
      <ul class="nav nav-tabs align-items-end card-header-tabs w-100">
        <li class="nav-item">
          <a class="nav-link" href="{!! url('settings/app/notifications')  !!}"><i class="fa fa-bell mr-2"></i>{{trans('lang.app_setting_notifications')}}</a>
        </li>
        @can('notificationTypes.index')
        <li class="nav-item">
          <a class="nav-link" href="{!! route('notificationTypes.index') !!}"><i class="fa fa-list mr-2"></i>{{trans('lang.notification_type_table')}}</a>
        </li>
        @endcan
        @can('notificationTypes.create')
        <li class="nav-item">
          <a class="nav-link" href="{!! route('notificationTypes.create') !!}"><i class="fa fa-plus mr-2"></i>{{trans('lang.notification_type_create')}}</a>
        </li>
        @endcan
        <li class="nav-item">
          <a class="nav-link active" href="{!! url()->current() !!}"><i class="fa fa-pencil mr-2"></i>{{trans('lang.notification_type_edit')}}</a>
        </li>
      </ul>
    </div>
    <div class="card-body">
      {!! Form::model($notificationType, ['route' => ['notificationTypes.update', $notificationType->id], 'method' => 'patch']) !!}
      <div class="row">
        @include('notification_types.fields')
      </div>
      {!! Form::close() !!}
      <div class="clearfix"></div>
    </div>
  </div>
@include('layouts.media_modal')
@endsection
@push('scripts_lib')
<!-- iCheck -->
<script src="{{asset('public/plugins/iCheck/icheck.min.js')}}"></script>
<!-- select2 -->
<script src="{{asset('public/plugins/select2/select2.min.js')}}"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{asset('public/plugins/summernote/summernote-bs4.min.js')}}"></script>
{{--dropzone--}}
<script src="{{asset('public/plugins/dropzone/dropzone.js')}}"></script>
<script type="text/javascript">
    Dropzone.autoDiscover = false;
    var dropzoneFields = [];
</script>
@endpush