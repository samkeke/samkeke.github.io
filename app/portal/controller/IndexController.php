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

use app\portal\model\PortalPostModel;
use cmf\controller\HomeBaseController;

class IndexController extends HomeBaseController
{
    public function index()
    {
        //获取首页数据
        $portalPostModel = new PortalPostModel();
        $indesList = $portalPostModel->getIndexList();

        //图文推荐数据
        $recommended = $portalPostModel->getIndexList(['recommended' => 1] , ['recommended' => 'desc'] , 1 , 7);

        //获取热门文章
        $hotPortal = $portalPostModel->getIndexList([] , ['post_hits' => 'desc' , 'comment_count' => 'desc'] , 1 , 12);

        $this->assign('indexList' , $indesList);
        $this->assign('recommended' , $recommended);
        $this->assign('hotPortal' , $hotPortal);
        return $this->fetch(':index');
    }
}
