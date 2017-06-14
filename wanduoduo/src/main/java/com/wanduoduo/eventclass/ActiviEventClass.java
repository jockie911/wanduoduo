package com.wanduoduo.eventclass;

/**
 * Created by jockie on 2016/8/24.
 */
public class ActiviEventClass {

    public final static int ITEM_ZAN = 1;
    public final static int ITEM_DISCUSS = 2;
    public final static int ITEM_DELETE = 3;

    private int position;
    private int eventType;
    private int type;
    private boolean isAdd;

    /**
     * @param position  item传过来的位置
     * @param eventType  点赞或者评论
     * @param type      标记是哪个传过来的
     * @param isAdd     增加还是减少
     */
    public ActiviEventClass(int position,int eventType,int type,boolean isAdd){
        this.position = position;
        this.eventType = eventType;
        this.type = type;
        this.isAdd = isAdd;
    }

    public int getPosition() {
        return position;
    }

    public int getType() {
        return type;
    }

    public boolean isAdd() {
        return isAdd;
    }

    public int getEventType() {
        return eventType;
    }
}
