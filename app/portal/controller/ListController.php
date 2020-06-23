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
use app\portal\model\PortalCategoryModel;
use app\portal\model\PortalPostModel;
use cmfpage\PageNew;

class ListController extends HomeBaseController
{
    private $limit = 10;
    /**
     * 文章列表数据
     * @see index
     * @Time 2018/12/29 15:48
     * @author 王晓宇 《wangxiaoyu@zhuge.com》
     * @param
     * @return
     */
    public function index()
    {
        $param = $this->request->param();
        $id = $this->request->param('id', 0, 'intval');

        $portalCategoryModel = new PortalCategoryModel();

        $category = $portalCategoryModel->where('id', $id)->where('status', 1)->find();

        $this->assign('category', $category);

        $listTpl = empty($category['list_tpl']) ? 'list' : $category['list_tpl'];

        $portalPostModel = new PortalPostModel();
        //获取首页数据
        $data = $portalPostModel->getIndexList(['create_time'=>['egt',0]] , ['create_time' => 'desc'] , !empty($param['page']) ? $param['page'] : 1 , $this->limit , $id);
        $count = $portalPostModel->getDataCount(['create_time'=>['egt',0]] , $id);

        //分页
        $page = new PageNew($count , $this->limit,$param);

        //图文推荐数据
        $recommended = $portalPostModel->getIndexList(['recommended' => 1] , ['recommended' => 'desc'] , 1 , 7);

        //获取热门文章
        $hotPortal = $portalPostModel->getIndexList([] , ['post_hits' => 'desc' , 'comment_count' => 'desc'] , 1 , 12);

        $this->assign('indexList' , $data);
        $this->assign('recommended' , $recommended);
        $this->assign('hotPortal' , $hotPortal);
        $this->assign('page', $page->fpage());

        return $this->fetch('/' . $listTpl);
    }

}
