<ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>

        <li>
          <a href="{{ route('home') }}">
            <i class="fa fa-th"></i> <span>Home</span>
            <span class="pull-right-container">
              
            </span>
          </a>
        </li>
        @if(Auth::user()->level == 'admin')
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Master</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ route('user.index') }}"><i class="fa fa-circle-o"></i> User</a></li>
            <li><a href="{{ route('pegawai.index') }}"><i class="fa fa-circle-o"></i> Pegawai</a></li>
            <li><a href="{{ route('kategori.index') }}"><i class="fa fa-circle-o"></i> Provider</a></li>
            <li><a href="{{ route('produk.index') }}"><i class="fa fa-circle-o"></i> Produk</a></li>
            
          </ul>
        </li>
        @endif
        <li>
          <a href="{{ route('transaksi_masuk.index') }}">
            <i class="fa fa-th"></i> <span>Transaksi</span>
            <span class="pull-right-container">
              
            </span>
          </a>
        </li>


        <li>
          <a href="{{ route('report_penjualan') }}">
            <i class="fa fa-th"></i> <span>Report Penjualan</span>
            <span class="pull-right-container">
              
            </span>
          </a>
        </li>

      </ul>