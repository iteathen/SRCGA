.class public final Lcom/sun/webkit/WebPage;
.super Ljava/lang/Object;
.source "WebPage.java"


# static fields
.field public static DND_DST_DROP:I

.field public static DND_DST_ENTER:I

.field public static DND_DST_EXIT:I

.field public static DND_DST_OVER:I

.field public static DND_SRC_DROP:I


# instance fields
.field private contextMenuEnabled:Z

.field engine:Ljavafx/scene/web/WebEngine;

.field private height:I

.field private final loadListenerClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/webkit/LoadListenerClient;",
            ">;"
        }
    .end annotation
.end field

.field nativeWebView:Lcom/sun/webkit/NativeWebView;

.field private smoothFactor:I

.field private url:Ljava/lang/String;

.field private visible:Z

.field private width:I

.field private x:I

.field private y:I

.field private zoomFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/sun/webkit/WebPage$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/webkit/WebPage$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/web/WebEngine;)V
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move-object v1, p1

    .local v1, "engine":Ljavafx/scene/web/WebEngine;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Lcom/sun/webkit/WebPage;->loadListenerClients:Ljava/util/List;

    .line 69
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/webkit/WebPage;->visible:Z

    .line 72
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/webkit/WebPage;->engine:Ljavafx/scene/web/WebEngine;

    .line 73
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/webkit/WebPage;->createNativePeer()V

    .line 74
    return-void
.end method

.method private createNativePeer()V
    .locals 6

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move-object v1, v0

    new-instance v2, Lcom/sun/webkit/NativeWebView;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/webkit/NativeWebView;-><init>(Lcom/sun/webkit/WebPage;)V

    iput-object v2, v1, Lcom/sun/webkit/WebPage;->nativeWebView:Lcom/sun/webkit/NativeWebView;

    .line 235
    return-void
.end method

.method private getNativePeer()Lcom/sun/webkit/NativeWebView;
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/webkit/WebPage;->nativeWebView:Lcom/sun/webkit/NativeWebView;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/webkit/WebPage;
    return-object v0
.end method

.method private getView()Ljavafx/scene/web/WebView;
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/webkit/WebPage;->engine:Ljavafx/scene/web/WebEngine;

    invoke-virtual {v1}, Ljavafx/scene/web/WebEngine;->getView()Ljavafx/scene/web/WebView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/webkit/WebPage;
    return-object v0
.end method

.method static lockPage()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "Not supported yet."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private repaintAll()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method static unlockPage()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "Not supported yet."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addLoadListenerClient(Lcom/sun/webkit/LoadListenerClient;)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move-object v1, p1

    .local v1, "l":Lcom/sun/webkit/LoadListenerClient;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/webkit/WebPage;->loadListenerClients:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/webkit/WebPage;->loadListenerClients:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 202
    :cond_0
    return-void
.end method

.method public confirmStartDrag()V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public connectInspectorFrontend()V
    .locals 5

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createBackForwardList()Lcom/sun/webkit/BackForwardList;
    .locals 5

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    new-instance v1, Lcom/sun/webkit/BackForwardList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/webkit/BackForwardList;-><init>(Lcom/sun/webkit/WebPage;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/webkit/WebPage;
    return-object v0
.end method

.method public disconnectInspectorFrontend()V
    .locals 5

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dispatchDragOperation(I[Ljava/lang/String;[Ljava/lang/String;IIIII)I
    .locals 13

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move v1, p1

    .local v1, "wkDndEventType":I
    move-object v2, p2

    .local v2, "toArray":[Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "toArray0":[Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "i":I
    move/from16 v5, p5

    .local v5, "i0":I
    move/from16 v6, p6

    .local v6, "i1":I
    move/from16 v7, p7

    .local v7, "i2":I
    move/from16 v8, p8

    .local v8, "wkDndAction":I
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "Not supported yet."

    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public dispatchInspectorMessageFromFrontend(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/webkit/WebPage;->getNativePeer()Lcom/sun/webkit/NativeWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/webkit/NativeWebView;->dispose()V

    .line 139
    return-void
.end method

.method public dropRenderFrames()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public executeScript(JLjava/lang/String;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 153
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/WebPage;
    move-wide v2, p1

    .local v2, "mainFrame":J
    move-object v4, p3

    .local v4, "script":Ljava/lang/String;
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Not supported yet."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method fireLoadEvent(IILjava/lang/String;Ljava/lang/String;DI)V
    .locals 21

    .prologue
    .line 250
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/webkit/WebPage;
    move/from16 v2, p1

    .local v2, "frameID":I
    move/from16 v3, p2

    .local v3, "state":I
    move-object/from16 v4, p3

    .local v4, "url":Ljava/lang/String;
    move-object/from16 v5, p4

    .local v5, "contentType":Ljava/lang/String;
    move-wide/from16 v6, p5

    .local v6, "progress":D
    move/from16 v8, p7

    .local v8, "errorCode":I
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/webkit/WebPage;->loadListenerClients:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v9, v11

    :goto_0
    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/webkit/LoadListenerClient;

    move-object v10, v11

    .line 251
    .local v10, "l":Lcom/sun/webkit/LoadListenerClient;
    move-object v11, v10

    move v12, v2

    int-to-long v12, v12

    move v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-wide/from16 v17, v6

    move/from16 v19, v8

    invoke-interface/range {v11 .. v19}, Lcom/sun/webkit/LoadListenerClient;->dispatchLoadEvent(JILjava/lang/String;Ljava/lang/String;DI)V

    .line 252
    goto :goto_0

    .line 253
    .end local v10    # "l":Lcom/sun/webkit/LoadListenerClient;
    :cond_0
    return-void
.end method

.method public getAccessControlContext()Ljava/security/AccessControlContext;
    .locals 5

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDocument(J)Lorg/w3c/dom/Document;
    .locals 15

    .prologue
    .line 161
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/WebPage;
    move-wide/from16 v2, p1

    .local v2, "mainFrame":J
    move-object v8, v1

    invoke-direct {v8}, Lcom/sun/webkit/WebPage;->getNativePeer()Lcom/sun/webkit/NativeWebView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/webkit/NativeWebView;->getHtmlContent()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 163
    .local v4, "xmlString":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    move-object v5, v8

    .line 164
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    move-object v8, v5

    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    move-object v6, v8

    .line 165
    .local v6, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object v8, v6

    new-instance v9, Lorg/xml/sax/InputSource;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/io/StringReader;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v4

    invoke-direct {v12, v13}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v8, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v7, v8

    .line 166
    .local v7, "document":Lorg/w3c/dom/Document;
    move-object v8, v7

    move-object v1, v8

    .line 170
    .end local v1    # "this":Lcom/sun/webkit/WebPage;
    .end local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "document":Lorg/w3c/dom/Document;
    :goto_0
    return-object v1

    .line 168
    .restart local v1    # "this":Lcom/sun/webkit/WebPage;
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 169
    .local v5, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot parse "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " due to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    const/4 v8, 0x0

    move-object v1, v8

    goto :goto_0
.end method

.method public getMainFrame()J
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/webkit/WebPage;
    return-wide v0
.end method

.method getPage()J
    .locals 3

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/webkit/WebPage;
    return-wide v0
.end method

.method public getTitle(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 205
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/WebPage;
    move-wide v2, p1

    .local v2, "mainFrame":J
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/webkit/WebPage;->engine:Ljavafx/scene/web/WebEngine;

    invoke-virtual {v4}, Ljavafx/scene/web/WebEngine;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Lcom/sun/webkit/WebPage;
    return-object v1
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isDirty()Z
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/webkit/WebPage;
    return v0
.end method

.method public isDragConfirmed()Z
    .locals 5

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isRepaintPending()Z
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/webkit/WebPage;
    return v0
.end method

.method public load(JLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 146
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/WebPage;
    move-wide v2, p1

    .local v2, "mainFrame":J
    move-object v4, p3

    .local v4, "content":Ljava/lang/String;
    move-object v5, p4

    .local v5, "contentType":Ljava/lang/String;
    move-object v6, v1

    invoke-direct {v6}, Lcom/sun/webkit/WebPage;->getNativePeer()Lcom/sun/webkit/NativeWebView;

    move-result-object v6

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/sun/webkit/NativeWebView;->loadContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public moveAndResize(FFFF)V
    .locals 12

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move v1, p1

    .local v1, "minX":F
    move v2, p2

    .local v2, "minY":F
    move v3, p3

    .local v3, "width":F
    move/from16 v4, p4

    .local v4, "height":F
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/webkit/WebPage;->getView()Ljavafx/scene/web/WebView;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/web/WebView;->getScene()Ljavafx/scene/Scene;

    move-result-object v7

    move-object v5, v7

    .line 221
    .local v5, "scene":Ljavafx/scene/Scene;
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v7

    move-object v6, v7

    .line 222
    .local v6, "window":Ljavafx/stage/Window;
    move-object v7, v0

    move v8, v1

    float-to-double v8, v8

    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/Scene;->getX()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/stage/Window;->getX()D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/sun/webkit/WebPage;->x:I

    .line 223
    move-object v7, v0

    move v8, v2

    float-to-double v8, v8

    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/Scene;->getY()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/stage/Window;->getY()D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/sun/webkit/WebPage;->y:I

    .line 224
    move-object v7, v0

    move v8, v3

    float-to-int v8, v8

    iput v8, v7, Lcom/sun/webkit/WebPage;->width:I

    .line 225
    move-object v7, v0

    move v8, v4

    float-to-int v8, v8

    iput v8, v7, Lcom/sun/webkit/WebPage;->height:I

    .line 226
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/webkit/WebPage;->getNativePeer()Lcom/sun/webkit/NativeWebView;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lcom/sun/webkit/WebPage;->x:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/webkit/WebPage;->y:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/webkit/WebPage;->width:I

    move-object v11, v0

    iget v11, v11, Lcom/sun/webkit/WebPage;->height:I

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/webkit/NativeWebView;->moveAndResize(IIII)V

    .line 227
    return-void
.end method

.method public open(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 195
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/WebPage;
    move-wide v2, p1

    .local v2, "mainFrame":J
    move-object v4, p3

    .local v4, "url":Ljava/lang/String;
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/webkit/WebPage;->getNativePeer()Lcom/sun/webkit/NativeWebView;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/webkit/NativeWebView;->loadUrl(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public refresh(J)V
    .locals 0
    .param p1, "mainFrame"    # J

    .prologue
    .line 150
    return-void
.end method

.method public setContextMenuEnabled(Z)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move v1, p1

    .local v1, "cme":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/webkit/WebPage;->contextMenuEnabled:Z

    .line 94
    return-void
.end method

.method public setDeveloperExtrasEnabled(Z)V
    .locals 6

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move v1, p1

    .local v1, "b":Z
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setFontSmoothingType(I)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move v1, p1

    .local v1, "sf":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/webkit/WebPage;->smoothFactor:I

    .line 90
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 6

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move v1, p1

    .local v1, "get":Z
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move-object v1, p1

    .local v1, "get":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setUserStyleSheetLocation(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move-object v1, p1

    .local v1, "dataUrl":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setVisible(Z)V
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move v1, p1

    .local v1, "visible":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/webkit/WebPage;->visible:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 243
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/webkit/WebPage;->getNativePeer()Lcom/sun/webkit/NativeWebView;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/webkit/NativeWebView;->setVisible(Z)V

    .line 244
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/webkit/WebPage;->visible:Z

    .line 246
    :cond_0
    return-void
.end method

.method public setZoomFactor(FZ)V
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/WebPage;
    move v1, p1

    .local v1, "zf":F
    move v2, p2

    .local v2, "b":Z
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/webkit/WebPage;->zoomFactor:F

    .line 86
    return-void
.end method

.method public stop(J)V
    .locals 9

    .prologue
    .line 157
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/WebPage;
    move-wide v2, p1

    .local v2, "mainFrame":J
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Not supported yet."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
