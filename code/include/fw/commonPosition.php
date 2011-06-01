<?php
require_once('fw/positionManager.php');
class commonPosition extends positionManager
{
    static protected $page = array
    (
    'index'=>array
    (
        'name'=>'China Adviser','func'=>null,'ssl'=>FALSE,'gnavi'=>'index','snavi'=>null
    ),
    'pr'=>array
    (
        'name'=>'中国4大ポータル記事掲載保証PR','func'=>null,'ssl'=>FALSE,'gnavi'=>null,'snavi'=>null
    ),
    'rapid'=>array
    (
        'name'=>'中国サイト快速サービス','func'=>null,'ssl'=>FALSE,'gnavi'=>null,'snavi'=>null
    ),
    'kujapan'=>array
    (
        'name'=>'日遊酷棒','func'=>null,'ssl'=>FALSE,'gnavi'=>null,'snavi'=>null
    ),
    'tool'=>array
    (
        'input'=>array
        (
            'name'=>'中国向けWEBサイトパフォーマンスツール','func'=>null,'ssl'=>FALSE,'gnavi'=>null,'snavi'=>null
        ),
        'result'=>array
        (
            'name'=>'中国向けWEBサイトパフォーマンスツール','func'=>null,'ssl'=>FALSE,'gnavi'=>null,'snavi'=>null
        ),
    ),
    'inquiry'=>array
    (
        'input'=>array
        (
            'name'=>'お問い合わせ','func'=>null,'ssl'=>FALSE,'gnavi'=>null,'snavi'=>null
        ),
        'finish'=>array
        (
            'name'=>'お問い合わせ完了','func'=>null,'ssl'=>FALSE,'gnavi'=>null,'snavi'=>null
        ),
    ),
    'corp'=>array
    (
        'name'=>'運営','func'=>null,'ssl'=>FALSE,'gnavi'=>'index','snavi'=>null
    ),
    'notfound'=>array
    (
        'name'=>'あなたのアクセスしようとしたページは見つかりませんでした。','func'=>null,'ssl'=>FALSE,'gnavi'=>'index','snavi'=>null
    ),
    );

    static public function makeSitePosition(){
        parent::$page = self::$page;
        parent::makeSitePosition();
    }

    static private $index = 1;

    static public function makeNumberPosition($url,$title,$trim = TRUE){
        parent::$position[self::$index] = parent::makePositionPair($url,$trim ? self::positionTrim($title) : $title);
        self::$index++;
    }

    static public function makeFirstPosition($url,$title,$trim = TRUE){
        parent::$position[1] = parent::makePositionPair($url,$trim ? self::positionTrim($title) : $title);
    }

    static public function makeSecondPosition($url,$title,$trim = TRUE){
        parent::$position[2] = parent::makePositionPair($url,$trim ? self::positionTrim($title) : $title);
    }

    static public function makeThirdPosition($url,$title,$trim = TRUE){
        parent::$position[3] = parent::makePositionPair($url,$trim ? self::positionTrim($title) : $title);
    }

    static public function makeFourPosition($url,$title,$trim = TRUE){
        parent::$position[4] = parent::makePositionPair($url,$trim ? self::positionTrim($title) : $title);
    }

    static public function makeFivePosition($url,$title,$trim = TRUE){
        parent::$position[5] = parent::makePositionPair($url,$trim ? self::positionTrim($title) : $title);
    }

    static public function makeSixPosition($url,$title,$trim = TRUE){
        parent::$position[6] = parent::makePositionPair($url,$trim ? self::positionTrim($title) : $title);
    }
}
?>
