# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in C:\Users\jockie\AppData\Local\Android\Sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
#    支付宝支付
#-libraryjars libs/alipaySingle-20160825.jar
-keep class com.alipay.android.app.IAlixPay{*;}
-keep class com.alipay.android.app.IAlixPay$Stub{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback$Stub{*;}
-keep class com.alipay.sdk.app.PayTask{ public *;}
-keep class com.alipay.sdk.app.AuthTask{ public *;}

#    微信支付
#-libraryjars libs/libammsdk.jar
-keep class com.tencent.** { *;}

#    我的代码
-keep class com.wanduoduo.bean.** {*;}
-keep class com.wanduoduo.eventclass.** {*;}
-keep class com.wanduoduo.utils.**{*;}
-keepclassmembers class * {
   public <init> (org.json.JSONObject);
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class com.google.gson.examples.android.model.** { *; }
-keep public class com.wanduoduo.R$*{
    public static final int *;
}

#-dontwarn de.greenrobot.event.util.*$Support
#-dontwarn de.greenrobot.event.util.*$SupportManagerFragment

#jiecaovideo
-keep class tv.danmaku.ijk.** { *; }
-dontwarn tv.danmaku.ijk.**


-keepclassmembers class com.wanduoduo.ui.AuthenticationBeginActivity {public *;}
-keepclassmembers class com.wanduoduo.ui.AuthenticationSkillOrCarActivity {public *;}
-keepclassmembers class com.wanduoduo.ui.InfoVipActivity {public *;}
-keepclassmembers class com.wanduoduo.ui.InfoVipChongZhiActivity {public *;}
-keepclassmembers class com.wanduoduo.ui.PlayCoinActivity {public *;}
-keepattributes *Annotation*
-keepattributes *JavascriptInterface*
-keep class com.wanduoduo.adapter.VpTableAdapter{public *;}


-keepclassmembers class fqcn.of.javascript.interface.for.webview {
 public *;
}
-keepattributes Exceptions,InnerClasses

-keepattributes Signature

-keepattributes *Annotation*

-keep class **$Properties
-dontwarn org.eclipse.jdt.annotation.**

#-libraryjars libs/agora-rtc-sdk.jar
#-keep class io.agora.rtc.** {*;}

-keep class io.rong.** {*;}
-keep class io.agora.rtc.** {*; }
-keep class * implements io.rong.imlib.model.MessageContent{*;}
#-dontwarn
#-dontwarn io.rong.push.**
#-dontnote com.xiaomi.**
#-dontnote com.huawei.android.pushagent.**
#-dontnote com.google.android.gms.gcm.**
#-dontnote io.rong.**

-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }

-keepclasseswithmembernames class * {
    @butterknife.* <fields>;
}

-keepclasseswithmembernames class * {
    @butterknife.* <methods>;
}

# = = = = = = = = = = = = = = = = = 图片选择   start= = = = = = = = = = = = = = = = = = = = =
-keep class com.jph.takephoto.** { *; }
-dontwarn com.jph.takephoto.**

-keep class com.darsh.multipleimageselect.** { *; }
-dontwarn com.darsh.multipleimageselect.**

-keep class com.soundcloud.android.crop.** { *; }
-dontwarn com.soundcloud.android.crop.**
#  - - -- - - - -- 图片选择   end - - - - - -- - - - - -- -

# = = = = = = = = = = = = = = = = = EventBus   start= = = = = = = = = = = = = = = = = = = = =
-keep class * implements android.os.Parcelable {
public static final android.os.Parcelable$Creator *;

}
-keepattributes *Annotation*
-keepclassmembers class ** {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }
-keep public enum org.greenrobot.eventbus.ThreadMode { public static *; }
#  - - -- - - - -- EventBus    end - - - - - -- - - - - -- -

-ignorewarnings