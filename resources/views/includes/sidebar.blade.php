<div class="sidebar sidebar-style-2">

    <div class="sidebar-wrapper scrollbar scrollbar-inner">
        <div class="sidebar-content">

            <div class="user">
                <div class="avatar-sm float-left mr-2">
                    <img src="{{ asset('back/img/profile.jpg')}}" alt="..." class="avatar-img rounded-circle">
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
                        <span>
                            Rifqi Afif Fauzan
                            <span class="user-level">Admin</span>
                            <span class="caret"></span>
                        </span>
                    </a>
                    <div class="clearfix"></div>

                    <div class="collapse in" id="collapseExample">
                        <ul class="nav">
                            {{-- <li>
                                <a href="#profile">
                                    <span class="link-collapse">My Profile</span>
                                </a>
                            </li>
                            <li>
                                <a href="#edit">
                                    <span class="link-collapse">Edit Profile</span>
                                </a>
                            </li>
                            <li>
                                <a href="#settings">
                                    <span class="link-collapse">Settings</span>
                                </a>
                            </li> --}}
                            <li>
                                <a class="link" href="{{ route('logout') }}"
                                onclick="event.preventDefault();
                                              document.getElementById('logout-form').submit();">
                                {{-- <i class="fas fa-undo"></i> --}}
                                {{ __('Logout') }}
                             </a>

                             <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                 @csrf
                             </form>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <ul class="nav nav-primary">
                {{-- <li class="nav-item active">
                    <a data-toggle="collapse" href="#dashboard" class="collapsed" aria-expanded="false">
                        <i class="fas fa-home"></i>
                        <p>Dashboard</p>
                        <span class="caret"></span>
                    </a>
                    <div class="collapse" id="dashboard">
                        <ul class="nav nav-collapse">
                            <li>
                                <a href="../demo1/index.html">
                                    <span class="sub-item">Dashboard 1</span>
                                </a>
                            </li>
                            <li>
                                <a href="../demo2/index.html">
                                    <span class="sub-item">Dashboard 2</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li> --}}
                {{-- <li class="nav-section">
                    <span class="sidebar-mini-icon">
                        <i class="fa fa-ellipsis-h"></i>
                    </span>
                    <h4 class="text-section">Components</h4>
                </li> --}}

                {{-- <li class="nav-item">
                    <a href="{{ route('back.dashboard') }}">
                        <i class="fas fa-tachometer"></i>
                        <p>Dashboard</p>
                    </a>
                </li> --}}
                <li class="nav-item">
                    <a href="{{ route('dashboard') }}">
                        <i class="fas fa-home"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('review.index') }}">
                        <i class="fas fa-glasses"></i>
                        <p>Review</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('news.index') }}">
                        <i class="fas fa-newspaper"></i>
                        <p>News</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('slide.index') }}">
                        <i class="fas fa-desktop"></i>
                        <p>Slide Banner</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('genre.index') }}">
                        <i class="fas fa-camera"></i>
                        <p>Genre</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/">
                        <i class="fas fa-home"></i>
                        <p>Back to Home</p>
                    </a>
                </li>
            </ul>
        </div>

    </div>
</div>
