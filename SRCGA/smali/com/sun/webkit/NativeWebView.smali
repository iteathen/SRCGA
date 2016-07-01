.class public Lcom/sun/webkit/NativeWebView;
.super Ljava/lang/Object;
.source "NativeWebView.java"


# static fields
.field private static views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/webkit/NativeWebView;",
            ">;"
        }
    .end annotation
.end field

.field static webViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/oracle/dalvik/InternalWebView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I

.field private page:Lcom/sun/webkit/WebPage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/webkit/NativeWebView;->views:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/webkit/NativeWebView;->webViews:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/sun/webkit/WebPage;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move-object v1, p1

    .local v1, "page":Lcom/sun/webkit/WebPage;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/webkit/NativeWebView;->_createAndroidWebView()I

    move-result v3

    iput v3, v2, Lcom/sun/webkit/NativeWebView;->id:I

    .line 42
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/webkit/NativeWebView;->page:Lcom/sun/webkit/WebPage;

    .line 43
    sget-object v2, Lcom/sun/webkit/NativeWebView;->views:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 44
    return-void
.end method

.method private _createAndroidWebView()I
    .locals 7

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    new-instance v3, Lcom/oracle/dalvik/InternalWebView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/oracle/dalvik/InternalWebView;-><init>()V

    move-object v1, v3

    .line 120
    .local v1, "internalWebView":Lcom/oracle/dalvik/InternalWebView;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/oracle/dalvik/InternalWebView;->getInternalID()I

    move-result v3

    move v2, v3

    .line 121
    .local v2, "id":I
    sget-object v3, Lcom/sun/webkit/NativeWebView;->webViews:Ljava/util/Map;

    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 122
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/webkit/NativeWebView;
    return v0
.end method

.method private _dispose(I)V
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move v1, p1

    .local v1, "id":I
    move v2, v1

    invoke-static {v2}, Lcom/oracle/dalvik/InternalWebView;->dispose(I)V

    .line 141
    return-void
.end method

.method private _loadContent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "content":Ljava/lang/String;
    move-object v3, p3

    .local v3, "contentType":Ljava/lang/String;
    move v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lcom/oracle/dalvik/InternalWebView;->loadContent(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method private _loadUrl(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/oracle/dalvik/InternalWebView;->loadUrl(ILjava/lang/String;)V

    .line 136
    return-void
.end method

.method private _moveAndResize(IIIII)V
    .locals 11

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move v1, p1

    .local v1, "id":I
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Lcom/oracle/dalvik/InternalWebView;->moveAndResize(IIIII)V

    .line 110
    return-void
.end method

.method private _moveToTop(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 128
    return-void
.end method

.method private native _setEncoding(ILjava/lang/String;)V
.end method

.method private _setVisible(IZ)V
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move v1, p1

    .local v1, "id":I
    move v2, p2

    .local v2, "visible":Z
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/oracle/dalvik/InternalWebView;->setVisible(IZ)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/sun/webkit/NativeWebView;)Lcom/sun/webkit/WebPage;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "x0":Lcom/sun/webkit/NativeWebView;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/webkit/NativeWebView;->page:Lcom/sun/webkit/WebPage;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/webkit/NativeWebView;
    return-object v0
.end method

.method public static fire_load_event(IIILjava/lang/String;Ljava/lang/String;II)V
    .locals 19

    .prologue
    .line 92
    move/from16 v0, p0

    .local v0, "id":I
    move/from16 v1, p1

    .local v1, "frameID":I
    move/from16 v2, p2

    .local v2, "state":I
    move-object/from16 v3, p3

    .local v3, "url":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "contenType":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "progress":I
    move/from16 v6, p6

    .local v6, "errorCode":I
    move v8, v0

    invoke-static {v8}, Lcom/sun/webkit/NativeWebView;->getViewByID(I)Lcom/sun/webkit/NativeWebView;

    move-result-object v8

    move-object v7, v8

    .line 93
    .local v7, "nwv":Lcom/sun/webkit/NativeWebView;
    move-object v8, v7

    if-nez v8, :cond_0

    .line 94
    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/sun/webkit/Invoker;->getInvoker()Lcom/sun/webkit/Invoker;

    move-result-object v8

    new-instance v9, Lcom/sun/webkit/NativeWebView$1;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move v11, v5

    move-object v12, v7

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v6

    invoke-direct/range {v10 .. v17}, Lcom/sun/webkit/NativeWebView$1;-><init>(ILcom/sun/webkit/NativeWebView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Lcom/sun/webkit/Invoker;->invokeOnEventThread(Ljava/lang/Runnable;)V

    .line 103
    goto :goto_0
.end method

.method private static getViewByID(I)Lcom/sun/webkit/NativeWebView;
    .locals 7

    .prologue
    .line 80
    move v0, p0

    .local v0, "id":I
    sget-object v3, Lcom/sun/webkit/NativeWebView;->views:Ljava/util/List;

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

    check-cast v3, Lcom/sun/webkit/NativeWebView;

    move-object v2, v3

    .line 81
    .local v2, "wvp":Lcom/sun/webkit/NativeWebView;
    move v3, v0

    move-object v4, v2

    iget v4, v4, Lcom/sun/webkit/NativeWebView;->id:I

    if-ne v3, v4, :cond_0

    .line 82
    move-object v3, v2

    move-object v0, v3

    .line 86
    .end local v0    # "id":I
    .end local v2    # "wvp":Lcom/sun/webkit/NativeWebView;
    :goto_1
    return-object v0

    .line 84
    .restart local v0    # "id":I
    .restart local v2    # "wvp":Lcom/sun/webkit/NativeWebView;
    :cond_0
    goto :goto_0

    .line 85
    .end local v2    # "wvp":Lcom/sun/webkit/NativeWebView;
    :cond_1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Accesing nonexisting/disposed NativewWebView id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method dispose()V
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/webkit/NativeWebView;->id:I

    invoke-direct {v1, v2}, Lcom/sun/webkit/NativeWebView;->_dispose(I)V

    .line 72
    sget-object v1, Lcom/sun/webkit/NativeWebView;->views:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 73
    return-void
.end method

.method getHtmlContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move-object v1, v0

    iget v1, v1, Lcom/sun/webkit/NativeWebView;->id:I

    invoke-static {v1}, Lcom/oracle/dalvik/InternalWebView;->getHtmlContent(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/webkit/NativeWebView;
    return-object v0
.end method

.method loadContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    move-object v2, p2

    .local v2, "contentType":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/webkit/NativeWebView;->id:I

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/webkit/NativeWebView;->_loadContent(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method loadUrl(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/webkit/NativeWebView;->id:I

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/webkit/NativeWebView;->_loadUrl(ILjava/lang/String;)V

    .line 60
    return-void
.end method

.method public moveAndResize(IIII)V
    .locals 11

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/webkit/NativeWebView;->id:I

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/sun/webkit/NativeWebView;->_moveAndResize(IIIII)V

    .line 52
    return-void
.end method

.method public moveToTop()V
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/webkit/NativeWebView;->id:I

    invoke-direct {v1, v2}, Lcom/sun/webkit/NativeWebView;->_moveToTop(I)V

    .line 48
    return-void
.end method

.method setEncoding(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/webkit/NativeWebView;->id:I

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/webkit/NativeWebView;->_setEncoding(ILjava/lang/String;)V

    .line 68
    return-void
.end method

.method public setVisible(Z)V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView;
    move v1, p1

    .local v1, "visible":Z
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/webkit/NativeWebView;->id:I

    move v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/webkit/NativeWebView;->_setVisible(IZ)V

    .line 56
    return-void
.end method
