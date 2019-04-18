<?php

namespace App\Http\Controllers;

use Caffeinated\Shinobi\Models\Role;
use Caffeinated\Shinobi\Models\Permission;
use Illuminate\Http\Request;

class RoleController extends Controller
{

    public function __construct()
    {
        $this->middleware('permission:roles.create')->only(['create', 'store']);
        $this->middleware('permission:roles.index')->only(['index']);
        $this->middleware('permission:roles.edit')->only(['edit', 'update']);
        $this->middleware('permission:roles.show')->only(['show']);
        $this->middleware('permission:roles.destroy')->only(['destroy']);
    }

    public function index()
    {
        $roles = Role::paginate();
        return view('roles.index', compact('roles'));
    }

    public function create()
    {
        $permissions = Permission::get();
        return view('roles.create', compact('permissions'));
    }

    public function store(Request $request)
    {
        $role = Role::create($request->all());

        // Atualizar permissions
        $role->permissions()->sync($request->get('permissions'));

        return redirect()->route('roles.edit', $role->id)
        ->with('info', 'Role gravado com sucesso!');
    }

    public function show(Role $role)
    {
        return view('roles.show', compact('role'));
    }

    public function edit(Role $role)
    {
        $permissions = Permission::get();
        return view('roles.edit', compact('role', 'permissions'));
    }

    public function update(Request $request, Role $role)
    {
        // Atualizar role
        $role->update($request->all());

        // Atualizar permissions
        $role->permissions()->sync($request->get('permissions'));

        return redirect()->route('roles.edit', $role->id)
        ->with('info', 'Role atualizado com sucesso!');
    }

    public function destroy(Role $role)
    {
        $role->delete();
        return back()->with('info', 'Role eliminado com sucesso!');
    }
}
