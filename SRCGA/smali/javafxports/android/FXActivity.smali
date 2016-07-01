.class public Ljavafxports/android/FXActivity;
.super Landroid/app/Activity;
.source "FXActivity.java"


# static fields
.field private static final ACTIVITY_LIB:Ljava/lang/String; = "activity"

.field private static final APPLICATION_DEX_NAME:Ljava/lang/String; = "Application_dex.jar"

.field private static final APPLICATION_RESOURCES_NAME:Ljava/lang/String; = "Application_resources.jar"

.field private static final BUF_SIZE:I = 0x2000

.field private static final BUILD_TIME_NAME:Ljava/lang/String; = "buildtime"

.field private static final CLASSLOADER_PROPERTIES_NAME:Ljava/lang/String; = "classloader.properties"

.field private static final DEFAULT_LAUNCHER_CLASS:Ljava/lang/String; = "javafxports.android.DalvikLauncher"

.field private static final JFX_BUILD:Ljava/lang/String; = "8.60.7-SNAPSHOT"

.field private static final META_DATA_DEBUG_PORT:Ljava/lang/String; = "debug.port"

.field private static final META_DATA_LAUNCHER_CLASS:Ljava/lang/String; = "launcher.class"

.field private static final META_DATA_MAIN_CLASS:Ljava/lang/String; = "main.class"

.field private static final META_DATA_PRELOADER_CLASS:Ljava/lang/String; = "preloader.class"

.field private static final TAG:Ljava/lang/String; = "FXActivity"

.field private static appDataDir:Ljava/lang/String;

.field public static dexClassPath:Ljava/lang/String;

.field private static instance:Ljavafxports/android/FXActivity;

.field private static intentHandler:Ljavafxports/android/IntentHandler;

.field private static launcher:Ljavafxports/android/Launcher;

.field private static mView:Landroid/view/TextureView;

.field private static mViewGroup:Landroid/widget/FrameLayout;

.field private static final metadata:Landroid/os/Bundle;


# instance fields
.field private SCREEN_ORIENTATION:I

.field private classLoaderProperties:Ljava/util/Properties;

.field private currentBuildStamp:Ljava/lang/String;

.field private dexInternalStoragePath:Ljava/io/File;

.field private fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

.field private launcherClassName:Ljava/lang/String;

.field private mainClassName:Ljava/lang/String;

.field private onConfigurationChangedNativeMethod:Ljava/lang/reflect/Method;

.field private onSurfaceChangedNativeMethod1:Ljava/lang/reflect/Method;

.field private onSurfaceChangedNativeMethod2:Ljava/lang/reflect/Method;

.field private onSurfaceRedrawNeededNativeMethod:Ljava/lang/reflect/Method;

.field private preloaderClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/lang/String;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    sput-object v0, Ljavafxports/android/FXActivity;->dexClassPath:Ljava/lang/String;

    .line 111
    new-instance v0, Landroid/os/Bundle;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Ljavafxports/android/FXActivity;->metadata:Landroid/os/Bundle;

    .line 115
    const-string v0, "FXActivity"

    const-string v1, "Initializing JavaFX Platform, using 8.60.7-SNAPSHOT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 116
    const-string v0, "activity"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXActivity;
    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    .line 101
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Ljavafxports/android/FXActivity;->SCREEN_ORIENTATION:I

    return-void
.end method

.method private native _setDataDir(Ljava/lang/String;)V
.end method

.method public static getDataDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Ljavafxports/android/FXActivity;->appDataDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Ljavafxports/android/FXActivity;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Ljavafxports/android/FXActivity;->instance:Ljavafxports/android/FXActivity;

    return-object v0
.end method

.method public static getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Ljavafxports/android/FXActivity;->mViewGroup:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXActivity;
    move v1, p1

    .local v1, "requestCode":I
    move v2, p2

    .local v2, "resultCode":I
    move-object v3, p3

    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "FXActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult with requestCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and resultCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 214
    sget-object v4, Ljavafxports/android/FXActivity;->intentHandler:Ljavafxports/android/IntentHandler;

    if-eqz v4, :cond_0

    .line 215
    sget-object v4, Ljavafxports/android/FXActivity;->intentHandler:Ljavafxports/android/IntentHandler;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Ljavafxports/android/IntentHandler;->gotActivityResult(IILandroid/content/Intent;)V

    .line 217
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXActivity;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 240
    const-string v2, "FXActivity"

    const-string v3, "Called onConfigurationChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 241
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXActivity;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    move-object v3, v0

    new-instance v4, Ljavafxports/android/FXDalvikEntity;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljavafxports/android/FXActivity;->metadata:Landroid/os/Bundle;

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Ljavafxports/android/FXDalvikEntity;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    iput-object v4, v3, Ljavafxports/android/FXActivity;->fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

    .line 123
    const-string v3, "FXActivity"

    const-string v4, "onCreate called, using 8.60.7-SNAPSHOT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 124
    sget-object v3, Ljavafxports/android/FXActivity;->launcher:Ljavafxports/android/Launcher;

    if-eqz v3, :cond_0

    .line 125
    const-string v3, "FXActivity"

    const-string v4, "JavaFX application is already running"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 126
    .line 172
    :goto_0
    return-void

    .line 128
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafxports/android/FXActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    move-result v3

    .line 129
    move-object v3, v0

    invoke-virtual {v3}, Ljavafxports/android/FXActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 132
    move-object v3, v0

    invoke-virtual {v3}, Ljavafxports/android/FXActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->setFormat(I)V

    .line 135
    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/FXActivity;->fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

    invoke-virtual {v3}, Ljavafxports/android/FXDalvikEntity;->createView()Landroid/view/TextureView;

    move-result-object v3

    sput-object v3, Ljavafxports/android/FXActivity;->mView:Landroid/view/TextureView;

    .line 137
    new-instance v3, Landroid/widget/FrameLayout;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v3, Ljavafxports/android/FXActivity;->mViewGroup:Landroid/widget/FrameLayout;

    .line 138
    sget-object v3, Ljavafxports/android/FXActivity;->mViewGroup:Landroid/widget/FrameLayout;

    sget-object v4, Ljavafxports/android/FXActivity;->mView:Landroid/view/TextureView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 139
    move-object v3, v0

    sget-object v4, Ljavafxports/android/FXActivity;->mViewGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Ljavafxports/android/FXActivity;->setContentView(Landroid/view/View;)V

    .line 140
    move-object v3, v0

    sput-object v3, Ljavafxports/android/FXActivity;->instance:Ljavafxports/android/FXActivity;

    .line 142
    move-object v3, v0

    invoke-virtual {v3}, Ljavafxports/android/FXActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sput-object v3, Ljavafxports/android/FXActivity;->appDataDir:Ljava/lang/String;

    .line 143
    move-object v3, v0

    sput-object v3, Ljavafxports/android/FXActivity;->instance:Ljavafxports/android/FXActivity;

    .line 144
    move-object v3, v0

    sget-object v4, Ljavafxports/android/FXActivity;->appDataDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljavafxports/android/FXActivity;->_setDataDir(Ljava/lang/String;)V

    .line 146
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Ljavafxports/android/FXActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v4, v0

    .line 147
    invoke-virtual {v4}, Ljavafxports/android/FXActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    .line 146
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v2, v3

    .line 148
    .local v2, "appi":Landroid/content/pm/ApplicationInfo;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 149
    sget-object v3, Ljavafxports/android/FXActivity;->metadata:Landroid/os/Bundle;

    move-object v4, v2

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 157
    .end local v2    # "appi":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_1
    move-object v3, v0

    :try_start_1
    invoke-virtual {v3}, Ljavafxports/android/FXActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v4, v0

    .line 158
    invoke-virtual {v4}, Ljavafxports/android/FXActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    .line 157
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v2, v3

    .line 159
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 160
    sget-object v3, Ljavafxports/android/FXActivity;->metadata:Landroid/os/Bundle;

    move-object v4, v2

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    .line 167
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2
    :goto_2
    sget-object v3, Ljavafxports/android/FXActivity;->metadata:Landroid/os/Bundle;

    const-string v4, "debug.port"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 168
    .local v2, "dport":I
    move v3, v2

    if-lez v3, :cond_3

    .line 169
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 172
    :cond_3
    goto/16 :goto_0

    .line 152
    .end local v2    # "dport":I
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 153
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "FXActivity"

    const-string v4, "Error getting Application info."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 163
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 164
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "FXActivity"

    const-string v4, "Error getting Activity info."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXActivity;
    const-string v1, "FXActivity"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 177
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onDestroy()V

    .line 178
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 179
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXActivity;
    const-string v1, "FXActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 184
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onPause()V

    .line 185
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXActivity;
    const-string v1, "FXActivity"

    const-string v2, "onRestart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 202
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onRestart()V

    .line 203
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXActivity;
    const-string v1, "FXActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 190
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onResume()V

    .line 191
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXActivity;
    const-string v1, "FXActivity"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 196
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onStart()V

    .line 197
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXActivity;
    const-string v1, "FXActivity"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 208
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onStop()V

    .line 209
    return-void
.end method

.method public setOnActivityResultHandler(Ljavafxports/android/IntentHandler;)V
    .locals 3

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXActivity;
    move-object v1, p1

    .local v1, "handler":Ljavafxports/android/IntentHandler;
    move-object v2, v1

    sput-object v2, Ljavafxports/android/FXActivity;->intentHandler:Ljavafxports/android/IntentHandler;

    .line 221
    return-void
.end method
