<?php

namespace App\Http\Controllers;

use Spatie\DbDumper\Databases\MySql;

class DatabaseDumpController extends Controller
{
    public function index()
    {
        MySql::create()
            ->setDumpBinaryPath('/Applications/XAMPP/xamppfiles/bin')
            ->setDbName(env('DB_DATABASE'))
            ->setUserName(env('DB_USERNAME'))
            ->setPassword(env('DB_PASSWORD'))
            ->dumpToFile('dump.sql');
        return response()->download('dump.sql');
    }
}
