<?php

return [
    [
        'name' => 'Notices',
        'flag' => 'notice.index',
    ],
    [
        'name' => 'Create',
        'flag' => 'notice.create',
        'parent_flag' => 'notice.index',
    ],
    [
        'name' => 'Edit',
        'flag' => 'notice.edit',
        'parent_flag' => 'notice.index',
    ],
    [
        'name' => 'Delete',
        'flag' => 'notice.destroy',
        'parent_flag' => 'notice.index',
    ],
];
