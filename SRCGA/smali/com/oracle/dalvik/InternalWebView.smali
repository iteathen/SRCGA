.class public Lcom/oracle/dalvik/InternalWebView;
.super Ljava/lang/Object;
.source "InternalWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oracle/dalvik/InternalWebView$MyJavaScriptInterface;
    }
.end annotation


# static fields
.field public static final CONTENTTYPE_RECEIVED:I = 0xd

.field public static final CONTENT_RECEIVED:I = 0xa

.field public static final DOCUMENT_AVAILABLE:I = 0xe

.field public static final ICON_RECEIVED:I = 0xc

.field public static final LOAD_FAILED:I = 0x5

.field public static final LOAD_STOPPED:I = 0x6

.field public static final PAGE_FINISHED:I = 0x1

.field public static final PAGE_REDIRECTED:I = 0x2

.field public static final PAGE_STARTED:I = 0x0

.field public static final PROGRESS_CHANGED:I = 0x1e

.field public static final RESOURCE_FAILED:I = 0x17

.field public static final RESOURCE_FINISHED:I = 0x16

.field public static final RESOURCE_REDIRECTED:I = 0x15

.field public static final RESOURCE_STARTED:I = 0x14

.field private static final TAG:Ljava/lang/String; = "InternalWebView"

.field public static final TITLE_RECEIVED:I = 0xb

.field private static idcounter:I

.field private static views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oracle/dalvik/InternalWebView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private height:I

.field private htmlContent:Ljava/lang/String;

.field private initialized:Z

.field private internalID:I

.field private isLayedOut:Z

.field private nativeWebView:Landroid/webkit/WebView;

.field private pageFinished:Z

.field private url:Ljava/lang/String;

.field private visible:Z

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oracle/dalvik/InternalWebView;->views:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/oracle/dalvik/InternalWebView;->idcounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oracle/dalvik/InternalWebView;->isLayedOut:Z

    .line 64
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oracle/dalvik/InternalWebView;->initialized:Z

    .line 69
    move-object v1, v0

    const-string v2, "text/html"

    iput-object v2, v1, Lcom/oracle/dalvik/InternalWebView;->contentType:Ljava/lang/String;

    .line 70
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/oracle/dalvik/InternalWebView;->encoding:Ljava/lang/String;

    .line 73
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oracle/dalvik/InternalWebView;->pageFinished:Z

    .line 76
    move-object v1, v0

    sget v2, Lcom/oracle/dalvik/InternalWebView;->idcounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move v2, v4

    move v3, v4

    sput v3, Lcom/oracle/dalvik/InternalWebView;->idcounter:I

    iput v2, v1, Lcom/oracle/dalvik/InternalWebView;->internalID:I

    .line 77
    sget-object v1, Lcom/oracle/dalvik/InternalWebView;->views:Ljava/util/List;

    const/4 v2, 0x0

    move-object v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    return-void
.end method

.method private _fireLoadEvent(IIILjava/lang/String;Ljava/lang/String;II)V
    .locals 17

    .prologue
    .line 346
    move-object/from16 v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView;
    move/from16 v1, p1

    .local v1, "id":I
    move/from16 v2, p2

    .local v2, "frameID":I
    move/from16 v3, p3

    .local v3, "state":I
    move-object/from16 v4, p4

    .local v4, "url":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "contentType":Ljava/lang/String;
    move/from16 v6, p6

    .local v6, "progress":I
    move/from16 v7, p7

    .local v7, "errorCode":I
    :try_start_0
    const-string v10, "com.sun.webkit.NativeWebView"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    move-object v8, v10

    .line 347
    .local v8, "clazz":Ljava/lang/Class;
    move-object v10, v8

    const-string v11, "fire_load_event"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Class;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x2

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x3

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x4

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x5

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x6

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v9, v10

    .line 349
    .local v9, "m":Ljava/lang/reflect/Method;
    move-object v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move v15, v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    move v15, v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x2

    move v15, v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x3

    move-object v15, v4

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x4

    move-object v15, v5

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x5

    move v15, v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x6

    move v15, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 354
    .line 355
    .end local v8    # "clazz":Ljava/lang/Class;
    .end local v9    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v10

    move-object v8, v10

    .line 352
    .local v8, "e":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "[JVDBG] Error firing event"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oracle/dalvik/InternalWebView;)I
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    iget v1, v1, Lcom/oracle/dalvik/InternalWebView;->width:I

    move v0, v1

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return v0
.end method

.method static synthetic access$100(Lcom/oracle/dalvik/InternalWebView;)I
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    iget v1, v1, Lcom/oracle/dalvik/InternalWebView;->height:I

    move v0, v1

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return v0
.end method

.method static synthetic access$1000(Lcom/oracle/dalvik/InternalWebView;)V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    invoke-direct {v1}, Lcom/oracle/dalvik/InternalWebView;->initialize()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oracle/dalvik/InternalWebView;)I
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    iget v1, v1, Lcom/oracle/dalvik/InternalWebView;->x:I

    move v0, v1

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return v0
.end method

.method static synthetic access$1200(Lcom/oracle/dalvik/InternalWebView;)I
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    iget v1, v1, Lcom/oracle/dalvik/InternalWebView;->y:I

    move v0, v1

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return v0
.end method

.method static synthetic access$1302(Lcom/oracle/dalvik/InternalWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/oracle/dalvik/InternalWebView;->htmlContent:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return-object v0
.end method

.method static synthetic access$200(Lcom/oracle/dalvik/InternalWebView;)Z
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/oracle/dalvik/InternalWebView;->pageFinished:Z

    move v0, v1

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return v0
.end method

.method static synthetic access$202(Lcom/oracle/dalvik/InternalWebView;Z)Z
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/oracle/dalvik/InternalWebView;->pageFinished:Z

    move v0, v2

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return v0
.end method

.method static synthetic access$300(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    iget-object v1, v1, Lcom/oracle/dalvik/InternalWebView;->contentType:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return-object v0
.end method

.method static synthetic access$302(Lcom/oracle/dalvik/InternalWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/oracle/dalvik/InternalWebView;->contentType:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return-object v0
.end method

.method static synthetic access$400(Lcom/oracle/dalvik/InternalWebView;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 14

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move v1, p1

    .local v1, "x1":I
    move/from16 v2, p2

    .local v2, "x2":I
    move-object/from16 v3, p3

    .local v3, "x3":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "x4":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "x5":I
    move/from16 v6, p6

    .local v6, "x6":I
    move-object v7, v0

    move v8, v1

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/oracle/dalvik/InternalWebView;->fireLoadEvent(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/oracle/dalvik/InternalWebView;)Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    iget-object v1, v1, Lcom/oracle/dalvik/InternalWebView;->nativeWebView:Landroid/webkit/WebView;

    move-object v0, v1

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return-object v0
.end method

.method static synthetic access$600(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    iget-object v1, v1, Lcom/oracle/dalvik/InternalWebView;->url:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return-object v0
.end method

.method static synthetic access$700(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    iget-object v1, v1, Lcom/oracle/dalvik/InternalWebView;->content:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return-object v0
.end method

.method static synthetic access$800(Lcom/oracle/dalvik/InternalWebView;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    iget-object v1, v1, Lcom/oracle/dalvik/InternalWebView;->encoding:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return-object v0
.end method

.method static synthetic access$900(Lcom/oracle/dalvik/InternalWebView;)Z
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/oracle/dalvik/InternalWebView;->initialized:Z

    move v0, v1

    .end local v0    # "x0":Lcom/oracle/dalvik/InternalWebView;
    return v0
.end method

.method static createNew()V
    .locals 4

    .prologue
    .line 167
    invoke-static {}, Ljavafxports/android/FXActivity;->getInstance()Ljavafxports/android/FXActivity;

    move-result-object v0

    new-instance v1, Lcom/oracle/dalvik/InternalWebView$4;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/oracle/dalvik/InternalWebView$4;-><init>()V

    invoke-virtual {v0, v1}, Ljavafxports/android/FXActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method public static dispose(I)V
    .locals 7

    .prologue
    .line 317
    move v0, p0

    .local v0, "id":I
    move v2, v0

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->getViewByID(I)Lcom/oracle/dalvik/InternalWebView;

    move-result-object v2

    move-object v1, v2

    .line 318
    .local v1, "iwv":Lcom/oracle/dalvik/InternalWebView;
    move v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/oracle/dalvik/InternalWebView;->setVisible(IZ)V

    .line 320
    invoke-static {}, Ljavafxports/android/FXActivity;->getInstance()Ljavafxports/android/FXActivity;

    move-result-object v2

    new-instance v3, Lcom/oracle/dalvik/InternalWebView$10;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/oracle/dalvik/InternalWebView$10;-><init>(Lcom/oracle/dalvik/InternalWebView;)V

    invoke-virtual {v2, v3}, Ljavafxports/android/FXActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 326
    sget-object v2, Lcom/oracle/dalvik/InternalWebView;->views:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 327
    return-void
.end method

.method private fireLoadEvent(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 15

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView;
    move/from16 v1, p1

    .local v1, "frameID":I
    move/from16 v2, p2

    .local v2, "state":I
    move-object/from16 v3, p3

    .local v3, "url":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "content_type":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "progress":I
    move/from16 v6, p6

    .local v6, "errorCode":I
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/oracle/dalvik/InternalWebView;->internalID:I

    move v9, v1

    move v10, v2

    move-object v11, v3

    if-nez v11, :cond_0

    const-string v11, ""

    :goto_0
    move-object v12, v4

    if-nez v12, :cond_1

    const-string v12, ""

    :goto_1
    move v13, v5

    move v14, v6

    invoke-direct/range {v7 .. v14}, Lcom/oracle/dalvik/InternalWebView;->_fireLoadEvent(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 144
    return-void

    .line 140
    :cond_0
    move-object v11, v3

    goto :goto_0

    :cond_1
    move-object v12, v4

    goto :goto_1
.end method

.method public static getHtmlContent(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 189
    move v0, p0

    .local v0, "id":I
    move v2, v0

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->getViewByID(I)Lcom/oracle/dalvik/InternalWebView;

    move-result-object v2

    move-object v1, v2

    .line 190
    .local v1, "iwv":Lcom/oracle/dalvik/InternalWebView;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/oracle/dalvik/InternalWebView;->getHtmlContent()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "id":I
    return-object v0
.end method

.method private static getViewByID(I)Lcom/oracle/dalvik/InternalWebView;
    .locals 8

    .prologue
    .line 158
    move v0, p0

    .local v0, "id":I
    sget-object v3, Lcom/oracle/dalvik/InternalWebView;->views:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oracle/dalvik/InternalWebView;

    move-object v2, v3

    .line 159
    .local v2, "wvp":Lcom/oracle/dalvik/InternalWebView;
    move v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/oracle/dalvik/InternalWebView;->internalID:I

    if-ne v3, v4, :cond_0

    .line 160
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "id":I
    return-object v0

    .line 162
    .restart local v0    # "id":I
    :cond_0
    goto :goto_0

    .line 163
    .end local v2    # "wvp":Lcom/oracle/dalvik/InternalWebView;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No InternalWebView with id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static indexOf(J)I
    .locals 10

    .prologue
    .line 147
    move-wide v1, p0

    .local v1, "id":J
    const/4 v6, 0x0

    move v3, v6

    .line 148
    .local v3, "i":I
    sget-object v6, Lcom/oracle/dalvik/InternalWebView;->views:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oracle/dalvik/InternalWebView;

    move-object v5, v6

    .line 149
    .local v5, "wvp":Lcom/oracle/dalvik/InternalWebView;
    move-wide v6, v1

    move-object v8, v5

    iget v8, v8, Lcom/oracle/dalvik/InternalWebView;->internalID:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 150
    move v6, v3

    move v1, v6

    .line 154
    .end local v1    # "id":J
    .end local v5    # "wvp":Lcom/oracle/dalvik/InternalWebView;
    :goto_1
    return v1

    .line 152
    .restart local v1    # "id":J
    .restart local v5    # "wvp":Lcom/oracle/dalvik/InternalWebView;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 153
    goto :goto_0

    .line 154
    .end local v5    # "wvp":Lcom/oracle/dalvik/InternalWebView;
    :cond_1
    const/4 v6, -0x1

    move v1, v6

    goto :goto_1
.end method

.method private initialize()V
    .locals 8

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView;
    move-object v2, v0

    new-instance v3, Lcom/oracle/dalvik/InternalWebView$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-static {}, Ljavafxports/android/FXActivity;->getInstance()Ljavafxports/android/FXActivity;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/oracle/dalvik/InternalWebView$1;-><init>(Lcom/oracle/dalvik/InternalWebView;Landroid/content/Context;)V

    iput-object v3, v2, Lcom/oracle/dalvik/InternalWebView;->nativeWebView:Landroid/webkit/WebView;

    .line 92
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView;->nativeWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/oracle/dalvik/InternalWebView$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/oracle/dalvik/InternalWebView$2;-><init>(Lcom/oracle/dalvik/InternalWebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 120
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView;->nativeWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/oracle/dalvik/InternalWebView$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/oracle/dalvik/InternalWebView$3;-><init>(Lcom/oracle/dalvik/InternalWebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 127
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView;->nativeWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move-object v1, v2

    .line 128
    .local v1, "settings":Landroid/webkit/WebSettings;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 129
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 130
    move-object v2, v0

    iget-object v2, v2, Lcom/oracle/dalvik/InternalWebView;->nativeWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/oracle/dalvik/InternalWebView$MyJavaScriptInterface;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/oracle/dalvik/InternalWebView$MyJavaScriptInterface;-><init>(Lcom/oracle/dalvik/InternalWebView;)V

    const-string v4, "HTMLOUT"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oracle/dalvik/InternalWebView;->initialized:Z

    .line 132
    return-void
.end method

.method public static loadContent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 194
    move v0, p0

    .local v0, "id":I
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    move-object v2, p2

    .local v2, "contentType":Ljava/lang/String;
    move v4, v0

    invoke-static {v4}, Lcom/oracle/dalvik/InternalWebView;->getViewByID(I)Lcom/oracle/dalvik/InternalWebView;

    move-result-object v4

    move-object v3, v4

    .line 195
    .local v3, "iwv":Lcom/oracle/dalvik/InternalWebView;
    move-object v4, v3

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/oracle/dalvik/InternalWebView;->setUrl(Ljava/lang/String;)V

    .line 196
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/oracle/dalvik/InternalWebView;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    move-object v4, v3

    iget-boolean v4, v4, Lcom/oracle/dalvik/InternalWebView;->initialized:Z

    if-eqz v4, :cond_0

    move-object v4, v3

    iget-boolean v4, v4, Lcom/oracle/dalvik/InternalWebView;->isLayedOut:Z

    if-eqz v4, :cond_0

    .line 198
    invoke-static {}, Ljavafxports/android/FXActivity;->getInstance()Ljavafxports/android/FXActivity;

    move-result-object v4

    new-instance v5, Lcom/oracle/dalvik/InternalWebView$6;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/oracle/dalvik/InternalWebView$6;-><init>(Lcom/oracle/dalvik/InternalWebView;)V

    invoke-virtual {v4, v5}, Ljavafxports/android/FXActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    :cond_0
    return-void
.end method

.method public static loadUrl(ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 175
    move v0, p0

    .local v0, "id":I
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move v3, v0

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->getViewByID(I)Lcom/oracle/dalvik/InternalWebView;

    move-result-object v3

    move-object v2, v3

    .line 176
    .local v2, "iwv":Lcom/oracle/dalvik/InternalWebView;
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/oracle/dalvik/InternalWebView;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    move-object v3, v2

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/oracle/dalvik/InternalWebView;->setUrl(Ljava/lang/String;)V

    .line 178
    move-object v3, v2

    iget-boolean v3, v3, Lcom/oracle/dalvik/InternalWebView;->initialized:Z

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-boolean v3, v3, Lcom/oracle/dalvik/InternalWebView;->isLayedOut:Z

    if-eqz v3, :cond_0

    .line 179
    invoke-static {}, Ljavafxports/android/FXActivity;->getInstance()Ljavafxports/android/FXActivity;

    move-result-object v3

    new-instance v4, Lcom/oracle/dalvik/InternalWebView$5;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/oracle/dalvik/InternalWebView$5;-><init>(Lcom/oracle/dalvik/InternalWebView;)V

    invoke-virtual {v3, v4}, Ljavafxports/android/FXActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    :cond_0
    return-void
.end method

.method public static moveAndResize(IIIII)V
    .locals 15

    .prologue
    .line 215
    move v0, p0

    .local v0, "id":I
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move v8, v3

    if-eqz v8, :cond_0

    move v8, v4

    if-nez v8, :cond_1

    .line 216
    .line 295
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    move v8, v0

    invoke-static {v8}, Lcom/oracle/dalvik/InternalWebView;->getViewByID(I)Lcom/oracle/dalvik/InternalWebView;

    move-result-object v8

    move-object v7, v8

    .line 220
    .local v7, "iwv":Lcom/oracle/dalvik/InternalWebView;
    move-object v8, v7

    if-nez v8, :cond_2

    .line 221
    goto :goto_0

    .line 223
    :cond_2
    move-object v8, v7

    iget v8, v8, Lcom/oracle/dalvik/InternalWebView;->x:I

    move v9, v1

    if-ne v8, v9, :cond_3

    move-object v8, v7

    iget v8, v8, Lcom/oracle/dalvik/InternalWebView;->y:I

    move v9, v2

    if-ne v8, v9, :cond_3

    move-object v8, v7

    iget v8, v8, Lcom/oracle/dalvik/InternalWebView;->width:I

    move v9, v3

    if-ne v8, v9, :cond_3

    move-object v8, v7

    iget v8, v8, Lcom/oracle/dalvik/InternalWebView;->height:I

    move v9, v4

    if-ne v8, v9, :cond_3

    .line 227
    goto :goto_0

    .line 230
    :cond_3
    move-object v8, v7

    iget v8, v8, Lcom/oracle/dalvik/InternalWebView;->x:I

    move v9, v1

    if-ne v8, v9, :cond_4

    move-object v8, v7

    iget v8, v8, Lcom/oracle/dalvik/InternalWebView;->y:I

    move v9, v2

    if-eq v8, v9, :cond_8

    :cond_4
    const/4 v8, 0x1

    :goto_1
    move v5, v8

    .line 231
    .local v5, "move":Z
    move v8, v5

    if-eqz v8, :cond_5

    .line 232
    move-object v8, v7

    move v9, v1

    iput v9, v8, Lcom/oracle/dalvik/InternalWebView;->x:I

    .line 233
    move-object v8, v7

    move v9, v2

    iput v9, v8, Lcom/oracle/dalvik/InternalWebView;->y:I

    .line 235
    :cond_5
    move-object v8, v7

    iget v8, v8, Lcom/oracle/dalvik/InternalWebView;->width:I

    move v9, v3

    if-ne v8, v9, :cond_6

    move-object v8, v7

    iget v8, v8, Lcom/oracle/dalvik/InternalWebView;->height:I

    move v9, v4

    if-eq v8, v9, :cond_9

    :cond_6
    const/4 v8, 0x1

    :goto_2
    move v6, v8

    .line 236
    .local v6, "resize":Z
    move v8, v6

    if-eqz v8, :cond_7

    .line 237
    move-object v8, v7

    move v9, v3

    iput v9, v8, Lcom/oracle/dalvik/InternalWebView;->width:I

    .line 238
    move-object v8, v7

    move v9, v4

    iput v9, v8, Lcom/oracle/dalvik/InternalWebView;->height:I

    .line 240
    :cond_7
    move-object v8, v7

    iget-boolean v8, v8, Lcom/oracle/dalvik/InternalWebView;->visible:Z

    if-nez v8, :cond_a

    .line 241
    goto :goto_0

    .line 230
    .end local v5    # "move":Z
    .end local v6    # "resize":Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_1

    .line 235
    .restart local v5    # "move":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_2

    .line 244
    .restart local v6    # "resize":Z
    :cond_a
    move-object v8, v7

    iget-boolean v8, v8, Lcom/oracle/dalvik/InternalWebView;->isLayedOut:Z

    if-nez v8, :cond_b

    .line 245
    move-object v8, v7

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/oracle/dalvik/InternalWebView;->isLayedOut:Z

    .line 246
    invoke-static {}, Ljavafxports/android/FXActivity;->getInstance()Ljavafxports/android/FXActivity;

    move-result-object v8

    new-instance v9, Lcom/oracle/dalvik/InternalWebView$7;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v7

    invoke-direct {v10, v11}, Lcom/oracle/dalvik/InternalWebView$7;-><init>(Lcom/oracle/dalvik/InternalWebView;)V

    invoke-virtual {v8, v9}, Ljavafxports/android/FXActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 295
    :goto_3
    goto :goto_0

    .line 278
    :cond_b
    invoke-static {}, Ljavafxports/android/FXActivity;->getInstance()Ljavafxports/android/FXActivity;

    move-result-object v8

    new-instance v9, Lcom/oracle/dalvik/InternalWebView$8;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v5

    move-object v12, v7

    move v13, v6

    invoke-direct {v10, v11, v12, v13}, Lcom/oracle/dalvik/InternalWebView$8;-><init>(ZLcom/oracle/dalvik/InternalWebView;Z)V

    invoke-virtual {v8, v9}, Ljavafxports/android/FXActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method private setContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    move-object v2, p2

    .local v2, "contentType":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/oracle/dalvik/InternalWebView;->content:Ljava/lang/String;

    .line 335
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/oracle/dalvik/InternalWebView;->contentType:Ljava/lang/String;

    .line 336
    return-void
.end method

.method static setEncoding(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 207
    move v0, p0

    .local v0, "id":I
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move v3, v0

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->getViewByID(I)Lcom/oracle/dalvik/InternalWebView;

    move-result-object v3

    move-object v2, v3

    .line 208
    .local v2, "iwv":Lcom/oracle/dalvik/InternalWebView;
    move-object v3, v2

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/oracle/dalvik/InternalWebView;->setEncoding(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private setEncoding(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oracle/dalvik/InternalWebView;->encoding:Ljava/lang/String;

    .line 340
    return-void
.end method

.method private setUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oracle/dalvik/InternalWebView;->url:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public static setVisible(IZ)V
    .locals 9

    .prologue
    .line 298
    move v0, p0

    .local v0, "id":I
    move v1, p1

    .local v1, "visible":Z
    move v3, v0

    invoke-static {v3}, Lcom/oracle/dalvik/InternalWebView;->getViewByID(I)Lcom/oracle/dalvik/InternalWebView;

    move-result-object v3

    move-object v2, v3

    .line 299
    .local v2, "iwv":Lcom/oracle/dalvik/InternalWebView;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 300
    .line 314
    :goto_0
    return-void

    .line 302
    :cond_0
    move-object v3, v2

    iget-boolean v3, v3, Lcom/oracle/dalvik/InternalWebView;->initialized:Z

    if-nez v3, :cond_1

    .line 303
    move-object v3, v2

    move v4, v1

    iput-boolean v4, v3, Lcom/oracle/dalvik/InternalWebView;->visible:Z

    .line 304
    goto :goto_0

    .line 306
    :cond_1
    invoke-static {}, Ljavafxports/android/FXActivity;->getInstance()Ljavafxports/android/FXActivity;

    move-result-object v3

    new-instance v4, Lcom/oracle/dalvik/InternalWebView$9;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    move v7, v1

    invoke-direct {v5, v6, v7}, Lcom/oracle/dalvik/InternalWebView$9;-><init>(Lcom/oracle/dalvik/InternalWebView;Z)V

    invoke-virtual {v3, v4}, Ljavafxports/android/FXActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 314
    goto :goto_0
.end method


# virtual methods
.method public getHtmlContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    iget-object v1, v1, Lcom/oracle/dalvik/InternalWebView;->htmlContent:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oracle/dalvik/InternalWebView;
    return-object v0
.end method

.method public getInternalID()I
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/oracle/dalvik/InternalWebView;
    move-object v1, v0

    iget v1, v1, Lcom/oracle/dalvik/InternalWebView;->internalID:I

    move v0, v1

    .end local v0    # "this":Lcom/oracle/dalvik/InternalWebView;
    return v0
.end method
