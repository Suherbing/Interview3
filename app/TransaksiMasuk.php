<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TransaksiMasuk extends Model
{
    protected $table = 'transaksi_masuk';
    protected $primaryKey = 'kd_transaksi_masuk';
    protected $fillable = [
        'kd_produk',
        'no_hp',
        'tgl_transaksi',
        'harga'
    ];

    public function produk()
    {
        return $this->belongsTo('App\Produk','kd_produk');
    }
    
    public function pelanggan()
    {
        return $this->belongsTo('App\Pelanggan','no_hp');
    }

    public function getTglTransaksiAttribute()
    {
        return \Carbon\Carbon::parse($this->attributes['tgl_transaksi'])->format('d-F-Y');
    }
}
