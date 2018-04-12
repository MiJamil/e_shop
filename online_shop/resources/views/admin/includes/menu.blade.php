<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            <li class="sidebar-search">
                <div class="input-group custom-search-form">
                    <input type="text" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                </div>
                <!-- /input-group -->
            </li>
            <li>
                <a href="{{ route('home') }}"><i class="fa fa-dashboard fa-fw"></i> Dashboard </a>
            </li>
            <li>
                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Category <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('add-category') }}">Add Category</a>
                    </li>
                    <li>
                        <a href="{{ route('manage-category') }}">Manage Category</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Brands <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('add-brand') }}">Add Brand</a>
                    </li>
                    <li>
                        <a href="{{ route('manage-brand') }}">Manage Brands</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Product <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('add-product') }}">Add Product</a>
                    </li>
                    <li>
                        <a href="{{ route('manage-product') }}">Manage Product</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="{{ route('manage-order') }}"><i class="fa fa-table fa-fw"></i> Manage Order</a>
            </li>

        </ul>
    </div>
    <!-- /.sidebar-collapse -->
</div>