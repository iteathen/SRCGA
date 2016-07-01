.class final Ljavafx/scene/web/WebEngine$DebuggerImpl;
.super Ljava/lang/Object;
.source "WebEngine.java"

# interfaces
.implements Lcom/sun/javafx/scene/web/Debugger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DebuggerImpl"
.end annotation


# instance fields
.field private enabled:Z

.field private messageCallback:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/web/WebEngine;


# direct methods
.method private constructor <init>(Ljavafx/scene/web/WebEngine;)V
    .locals 4

    .prologue
    .line 1261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$DebuggerImpl;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebEngine$DebuggerImpl;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/web/WebEngine;Ljavafx/scene/web/WebEngine$1;)V
    .locals 5

    .prologue
    .line 1261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$DebuggerImpl;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/web/WebEngine;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/web/WebEngine$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/web/WebEngine$DebuggerImpl;-><init>(Ljavafx/scene/web/WebEngine;)V

    return-void
.end method

.method static synthetic access$2100(Ljavafx/scene/web/WebEngine$DebuggerImpl;)Ljavafx/util/Callback;
    .locals 2

    .prologue
    .line 1261
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebEngine$DebuggerImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$DebuggerImpl;->messageCallback:Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebEngine$DebuggerImpl;
    return-object v0
.end method


# virtual methods
.method public getMessageCallback()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1302
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$DebuggerImpl;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 1303
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$DebuggerImpl;->messageCallback:Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$DebuggerImpl;
    return-object v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 1269
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$DebuggerImpl;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 1270
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/web/WebEngine$DebuggerImpl;->enabled:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$DebuggerImpl;
    return v0
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1290
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$DebuggerImpl;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 1291
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/web/WebEngine$DebuggerImpl;->enabled:Z

    if-nez v2, :cond_0

    .line 1292
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Debugger is not enabled"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1294
    :cond_0
    move-object v2, v1

    if-nez v2, :cond_1

    .line 1295
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "message is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1297
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine$DebuggerImpl;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v2}, Ljavafx/scene/web/WebEngine;->access$400(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/webkit/WebPage;->dispatchInspectorMessageFromFrontend(Ljava/lang/String;)V

    .line 1298
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 1275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$DebuggerImpl;
    move v1, p1

    .local v1, "enabled":Z
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 1276
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/web/WebEngine$DebuggerImpl;->enabled:Z

    if-eq v2, v3, :cond_0

    .line 1277
    move v2, v1

    if-eqz v2, :cond_1

    .line 1278
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine$DebuggerImpl;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v2}, Ljavafx/scene/web/WebEngine;->access$400(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/webkit/WebPage;->setDeveloperExtrasEnabled(Z)V

    .line 1279
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine$DebuggerImpl;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v2}, Ljavafx/scene/web/WebEngine;->access$400(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/webkit/WebPage;->connectInspectorFrontend()V

    .line 1284
    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/web/WebEngine$DebuggerImpl;->enabled:Z

    .line 1286
    :cond_0
    return-void

    .line 1281
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine$DebuggerImpl;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v2}, Ljavafx/scene/web/WebEngine;->access$400(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/webkit/WebPage;->disconnectInspectorFrontend()V

    .line 1282
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine$DebuggerImpl;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v2}, Ljavafx/scene/web/WebEngine;->access$400(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/webkit/WebPage;->setDeveloperExtrasEnabled(Z)V

    goto :goto_0
.end method

.method public setMessageCallback(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1308
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$DebuggerImpl;
    move-object v1, p1

    .local v1, "callback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/String;Ljava/lang/Void;>;"
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 1309
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebEngine$DebuggerImpl;->messageCallback:Ljavafx/util/Callback;

    .line 1310
    return-void
.end method
