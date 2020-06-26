@extends('layouts.template')

@section('title')
Tambah Data Transaksi Masuk
@endsection

@section('content')
<div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header with-border">
                @include('alert.error')
            </div>
            <div class="box-body">
            <form class="form-horizontal" method="post" action="{{ route('transaksi_masuk.store') }}">
              @csrf
              <div class="box-body">

                <div class="form-group">
                  <label for="kd_produk" class="col-sm-2 control-label">Produk</label>
                  <div class="col-sm-10">
                    <select name="kd_produk" id="kd_produk" class="form-control">
                      @foreach($produk as $row)
                        <option value="{{ $row->kd_produk }}">{{ $row->nama_produk }}</option>
                      @endforeach
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <label for="no_hp" class="col-sm-2 control-label">No. HP</label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control" name="no_hp" id="no_hp" value="{{ old('no_hp') }}"/>
                  </div>
                </div>

                <div class="form-group">
                  <label for="nama" class="col-sm-2 control-label">Nama</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="nama" id="nama" value="{{ old('nama') }}"/>
                  </div>
                </div>

                <div class="form-group">
                  <label for="jk" class="col-sm-2 control-label">Jenis Kelamin</label>
                    <div class="col-sm-10">
                      <select name="jk" id="jk" class="form-control">
                        <option value="PRIA">Pria</option>
                        <option value="WANITA">Wanita</option>
                      </select>
                    </div>
                </div>

                <div class="form-group">
                  <label for="tgl_transaksi" class="col-sm-2 control-label">Tanggal Transaksi</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control datepicker" name="tgl_transaksi" id="tgl_transaksi" value="{{ old('tgl_transaksi') }}" readonly/>
                  </div>
                </div>

                <div class="form-group">
                  <label for="harga" class="col-sm-2 control-label">Harga</label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control" name="harga" id="harga" value="{{ old('harga') }}"/>
                  </div>
                </div>
                
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" name="tombol" class="btn btn-info pull-right">Save</button>
              </div>
              <!-- /.box-footer -->
            </form>
            </div>
          </div>
        </div>
</div>
@endsection