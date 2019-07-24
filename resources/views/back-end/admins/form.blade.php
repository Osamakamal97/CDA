    <div class="form-group">
        <label for="name"> {{trans($modelSingleName.'.name')}}</label>
        <input type="text" class="form-control" id="name" placeholder="Name" name="name">
    </div>

{{--    <div id="addI"></div>--}}
{{--    <button class="btn btn-primary" type="button" id="btnPH" >{{ trans('admin.addPH') }}</button>--}}


    <div class="form-group">
        <label for="email">{{ trans($modelSingleName.'.email') }} </label>
        <input type="email" class="form-control"  name="email" id="email" placeholder=" email">
    </div>


    <div class="form-group">
        <label for="location"> {{ trans($modelSingleName.'.password') }}</label>
        <input type="password" class="form-control" id="password" placeholder="location" name="password">
    </div>


    <div class="form-group">
        <label>{{trans($modelSingleName.'.active')}}</label>
        <select name="active" class="form-control">
            <option value="1">Active</option>
            <option value="0">Disabled</option>

        </select>
    </div>

    <div class="form-group">
        <label for="image"> {{ trans($modelSingleName.'.image') }} </label>
        <input type="text" class="form-control" id="image" placeholder=" image" name="image">

    </div>


    <div class="box-footer">
        <button type="submit" class="btn btn-primary">{{$modelSingleName}} Submit</button>

    </div>





    <div class="clearfix"></div>

