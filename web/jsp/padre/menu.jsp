<%-- 
    Document   : menu
    Created on : 05-sep-2016, 20:15:57
    Author     : jsaravia
--%>

<div class="panel" id="menuPadre" style="width: 200px; margin-top: -20px; margin-right: 0px; background-color: #2c3e50;">
    <div class="panel-body" >
            <ul class="nav nav-pills nav-stacked">
                <li role="presentation" class="active"><a href="#" class="text-danger">HOME</a></li>
                <li role="presentation"><a href="#" class="text-blue">PROFILE</a></li>
                <li role="presentation" ><a href="#" class="dropdown-toggle btn" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id="drop_menu">DROPDOWN <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
    </div>
</div>

<div class="dropdown hidden" id="menuPadreMovil">
    <a href="#" class="dropdown-toggle btn btn-info btn-fab btn-fab-mini" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id="btn-menuPadre" onclick="saludar();"><i class="material-icons"><i class="fa fa-eye" aria-hidden="true"></i></i></a>
    <ul class="dropdown-menu">
        <li><a href="#">Action</a></li>
        <li><a href="#">Another action</a></li>
        <li><a href="#">Something else here</a></li>
        <li role="separator" class="divider"></li>
        <li><a href="#">Separated link</a></li>
    </ul>

</div>
