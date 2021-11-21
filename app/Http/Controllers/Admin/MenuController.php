<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\Menu\CreateFormRequest;
use App\Http\Services\Menu\MenuService;
use App\Models\Menu;

class MenuController extends Controller
{
    protected $menuService;
    
    public function __construct(MenuService $menuService)
    {
        $this->menuService = $menuService;
    }

    public function create(){

        return view('admin.menu.add', [
            'title' => 'Thêm danh mục',
            'menus' => $this->menuService->getParent()
        ]);
    }


    public function store(CreateFormRequest $request)
    {
      $result = $this->menuService->create($request);


    
    return redirect()->back();
    }

    public function index()
    {
        return view('admin.menu.list',[
            'title' => 'Danh sach danh muc',
            'menus' => $this->menuService->getAll()
        ]);
    }
}
