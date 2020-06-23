<?php
// +----------------------------------------------------------------------
// | d_comment [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2018 DaliyCode All rights reserved.
// +----------------------------------------------------------------------
// | Author: DaliyCode <3471677985@qq.com> <author_url:dalicode.com>
// +----------------------------------------------------------------------
namespace plugins\d_comment;

use cmf\lib\Plugin;
use think\Db;

class DCommentPlugin extends Plugin {

    public $info = [
        'name'        => 'DComment',
        'title'       => '通用评论',
        'description' => '通用评论。',
        'status'      => 1,
        'author'      => 'daliycode',
        'version'     => '1.1',
        'demo_url'    => 'http://www.daliycode.com',
        'author_url'  => 'http://www.daliycode.com',
    ];

    public $hasAdmin = 1;

    public function install() {
        return true;
    }

    public function uninstall() {
        return true;
    }

    //实现的comment钩子方法
    public function comment($param) {
        $comments = Db::name('comment')->alias('c')
            ->join('__USER__ u', 'c.user_id = u.id', 'left')
            ->join('__USER__ ut', 'c.to_user_id = u.id', 'left')
            ->field('c.*,u.user_nickname as username,ut.user_nickname as to_username')
            ->where('c.delete_time=0 and c.status=1 and object_id=' . (int) $param['object_id'])
            ->order('c.create_time DESC')
            ->paginate();
        if(!empty($comments)){
            $items = $comments->items();
            foreach ($items as $key => $val){
                if($val['parent_id'] != 0){
                    $items[$key]['parent_name'] = Db::name('comment')->field("id,full_name")->where(['id' => $val['parent_id']])->find()['full_name'];
                }else{
                    $items[$key]['parent_name'] = "";
                }
            }
        }
        $this->assign("page", $comments->render());
        $this->assign('comments', $items);

        $config = $this->getConfig();
        $this->assign('total', $comments->total());
        $this->assign($config);
        $this->assign($param);
        return $this->fetch('widget');
    }
}