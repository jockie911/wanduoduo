package com.wanduoduo.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.JLog;

import java.util.List;

/**
 * Created by jockie on 2016/12/26.
 */

public class JMutiFrameLayout extends ViewGroup {

    private int hoSpace = DensityUtil.dip2px(getContext(),8);
    private int veSpace = DensityUtil.dip2px(getContext(),8);

    public JMutiFrameLayout(Context context) {
        super(context);
    }

    public JMutiFrameLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public JMutiFrameLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs,defStyleAttr);

    }

    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int width = getWidth();

        int currentTotalWidth = 0;
        int currentLines = 0;
        for (int i = 0;i < getChildCount();i++){
            View itemView = getChildAt(i);

            int itemWidth = itemView.getMeasuredWidth();
            int itemHeight = itemView.getMeasuredHeight();

            if(currentTotalWidth + itemWidth < width){
                itemView.layout(currentTotalWidth,( itemHeight + veSpace ) * currentLines,
                        currentTotalWidth + itemWidth,( itemHeight + veSpace ) * currentLines + itemHeight);
                currentTotalWidth = currentTotalWidth + itemWidth + hoSpace;
            }else{
                currentLines ++;
                currentTotalWidth = 0;
                itemView.layout(currentTotalWidth,( itemHeight + veSpace ) * currentLines,
                        currentTotalWidth + itemWidth,( itemHeight + veSpace ) * currentLines + itemHeight);

            }
        }
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int width = MeasureSpec.getSize(widthMeasureSpec);
        int currentTotalWidth = 0;
        int currentLines = 1;
        int itemHeight = 0;
        for (int i = 0;i < getChildCount();i++){
            View itemView = getChildAt(i);

            int itemWidth = itemView.getMeasuredWidth();
            itemHeight = itemView.getMeasuredHeight();

            if(currentTotalWidth + itemWidth < width){
                currentTotalWidth = currentTotalWidth + itemWidth + hoSpace;
            }else{
                currentLines ++;
                currentTotalWidth = 0;
            }
        }
        setMeasuredDimension(resolveSize(width, widthMeasureSpec),
                resolveSize(itemHeight * currentLines + veSpace * (currentLines - 1), heightMeasureSpec));
//        super.onMeasure(widthMeasureSpec,heightMeasureSpec);
        for (int i = 0; i < getChildCount(); i++) {
            measureChild(getChildAt(i),widthMeasureSpec,heightMeasureSpec);
            JLog.e(getChildAt(i).getMeasuredWidth() + "  -- i");
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public void setValues(List<String> values,int drawableResId){
        removeAllViews();
        if(values != null){
            for (String value : values) {
                TextView textView = new TextView(getContext());
                LayoutParams params = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
                textView.setLayoutParams(params);
                textView.setText(value);
                textView.setGravity(Gravity.CENTER);
                textView.setTextColor(getResources().getColor(R.color.white));
                textView.setPadding(DensityUtil.dip2px(getContext(),10),DensityUtil.dip2px(getContext(),5)
                ,DensityUtil.dip2px(getContext(),10),DensityUtil.dip2px(getContext(),5));
                textView.setBackgroundDrawable(getResources().getDrawable(drawableResId));
                addView(textView);
            }
            requestLayout();
        }
    }
}
