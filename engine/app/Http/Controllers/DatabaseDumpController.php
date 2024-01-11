<?php

namespace App\Http\Controllers;

use Spatie\DbDumper\Databases\MySql;

class DatabaseDumpController extends Controller
{
    public function index()
    {
        MySql::create()
            ->setDumpBinaryPath('/Applications/XAMPP/xamppfiles/bin')
            ->setDbName('assignment_1')
            ->setUserName('root')
            ->setPassword('')
            ->dumpToFile('dump.sql');
        return response()->download('dump.sql');
    }
}
