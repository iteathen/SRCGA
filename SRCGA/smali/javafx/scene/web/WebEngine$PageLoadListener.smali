.class final Ljavafx/scene/web/WebEngine$PageLoadListener;
.super Ljava/lang/Object;
.source "WebEngine.java"

# interfaces
.implements Lcom/sun/webkit/LoadListenerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageLoadListener"
.end annotation


# instance fields
.field private final engine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/web/WebEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/scene/web/WebEngine;)V
    .locals 7

    .prologue
    .line 993
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$PageLoadListener;
    move-object v1, p1

    .local v1, "engine":Ljavafx/scene/web/WebEngine;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 994
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/web/WebEngine$PageLoadListener;->engine:Ljava/lang/ref/WeakReference;

    .line 995
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/web/WebEngine;Ljavafx/scene/web/WebEngine$1;)V
    .locals 5

    .prologue
    .line 988
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$PageLoadListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/web/WebEngine;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/web/WebEngine$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/web/WebEngine$PageLoadListener;-><init>(Ljavafx/scene/web/WebEngine;)V

    return-void
.end method


# virtual methods
.method public dispatchLoadEvent(JILjava/lang/String;Ljava/lang/String;DI)V
    .locals 19

    .prologue
    .line 1001
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$PageLoadListener;
    move-wide/from16 v1, p1

    .local v1, "frame":J
    move/from16 v3, p3

    .local v3, "state":I
    move-object/from16 v4, p4

    .local v4, "url":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "contentType":Ljava/lang/String;
    move-wide/from16 v6, p6

    .local v6, "progress":D
    move/from16 v8, p8

    .local v8, "errorCode":I
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/web/WebEngine$PageLoadListener;->engine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/web/WebEngine;

    move-object v9, v10

    .line 1002
    .local v9, "w":Ljavafx/scene/web/WebEngine;
    move-object v10, v9

    if-eqz v10, :cond_0

    .line 1003
    move-object v10, v9

    invoke-static {v10}, Ljavafx/scene/web/WebEngine;->access$1400(Ljavafx/scene/web/WebEngine;)Ljavafx/scene/web/WebEngine$LoadWorker;

    move-result-object v10

    move-wide v11, v1

    move v13, v3

    move-object v14, v4

    move-object v15, v5

    move-wide/from16 v16, v6

    move/from16 v18, v8

    invoke-static/range {v10 .. v18}, Ljavafx/scene/web/WebEngine$LoadWorker;->access$1000(Ljavafx/scene/web/WebEngine$LoadWorker;JILjava/lang/String;Ljava/lang/String;DI)V

    .line 1006
    :cond_0
    return-void
.end method

.method public dispatchResourceLoadEvent(JILjava/lang/String;Ljava/lang/String;DI)V
    .locals 0
    .param p1, "frame"    # J
    .param p3, "state"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "progress"    # D
    .param p8, "errorCode"    # I

    .prologue
    .line 1012
    return-void
.end method
