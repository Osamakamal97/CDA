@extends('admin.index')
@section('content')


    @component('back-end.shared.create',['modelSingleName'=>$modelSingleName,'modelPageDesc'=>$modelPageDesc])

        @slot('createForm')

            <form action="{{route($modelPluralName.'.store')}}" method="POST">
                @csrf
                @include('back-end.'.$modelPluralName.'.form')


            </form>
            @endslot
    @endcomponent




@endsection
