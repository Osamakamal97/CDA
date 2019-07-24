<?php

namespace App\Front;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Arpage extends Model
{
    //
    use SoftDeletes;

    protected $table='arpages';
    protected $primaryKey = 'id';

    protected $fillable = ['name','content','meta_key','meta_desc','type']; // type 0 مقال
    //1 اخبار 2 اعلانات


    /*
    * each english page belongs to one item
    */
    public function item(){
        return $this->hasOne('App\Front\Item','arpage_id','id');
    }


    /*
     * each english page belongs to one sub item
     */

    public function subItem(){
        return $this->hasOne('App\Front\Subitem','arpage_id','id');
    }


    /*
     * each arabic page has many images
     */
    public function images(){
        return $this->hasMany('App\Front\Image','arpage_id','id');
    }


    /*
     * each arabic page could have one slider
     */
    public function slider(){
        return $this->hasOne('App\Front\Slider','arpage_id','id');
    }



    public function getLang(){
        return 'ar';
    }

}
