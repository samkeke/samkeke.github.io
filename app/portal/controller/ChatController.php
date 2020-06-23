<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 老猫 <thinkcmf@126.com>
// +----------------------------------------------------------------------
namespace app\portal\controller;

use cmf\controller\HomeBaseController;
use app\portal\model\PortalPostModel;
use cmfpage\PageNew;

class ChatController extends HomeBaseController
{
    /**
     * 聊天室
     * @see index
     * @Time 2018/12/29 17:28
     * @author 王晓宇 《wangxiaoyu@zhuge.com》
     * @param
     * @return
     */
    public function index()
    {

        return $this->fetch('/chat');
    }
}
