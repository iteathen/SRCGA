.class final Ljavafx/scene/web/WebEngine$InspectorClientImpl;
.super Ljava/lang/Object;
.source "WebEngine.java"

# interfaces
.implements Lcom/sun/webkit/InspectorClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InspectorClientImpl"
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
    .line 1323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$InspectorClientImpl;
    move-object v1, p1

    .local v1, "engine":Ljavafx/scene/web/WebEngine;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1324
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/web/WebEngine$InspectorClientImpl;->engine:Ljava/lang/ref/WeakReference;

    .line 1325
    return-void
.end method


# virtual methods
.method public sendMessageToFrontend(Ljava/lang/String;)Z
    .locals 11

    .prologue
    .line 1330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$InspectorClientImpl;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    const/4 v5, 0x0

    move v2, v5

    .line 1331
    .local v2, "result":Z
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebEngine$InspectorClientImpl;->engine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/web/WebEngine;

    move-object v3, v5

    .line 1332
    .local v3, "webEngine":Ljavafx/scene/web/WebEngine;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 1333
    move-object v5, v3

    .line 1334
    invoke-static {v5}, Ljavafx/scene/web/WebEngine;->access$2000(Ljavafx/scene/web/WebEngine;)Ljavafx/scene/web/WebEngine$DebuggerImpl;

    move-result-object v5

    invoke-static {v5}, Ljavafx/scene/web/WebEngine$DebuggerImpl;->access$2100(Ljavafx/scene/web/WebEngine$DebuggerImpl;)Ljavafx/util/Callback;

    move-result-object v5

    move-object v4, v5

    .line 1335
    .local v4, "messageCallback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/String;Ljava/lang/Void;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 1336
    new-instance v5, Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v4

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;-><init>(Ljavafx/scene/web/WebEngine$InspectorClientImpl;Ljavafx/util/Callback;Ljava/lang/String;)V

    move-object v6, v3

    .line 1341
    invoke-static {v6}, Ljavafx/scene/web/WebEngine;->access$400(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/webkit/WebPage;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v6

    .line 1336
    invoke-static {v5, v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v5

    .line 1342
    const/4 v5, 0x1

    move v2, v5

    .line 1345
    .end local v4    # "messageCallback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/String;Ljava/lang/Void;>;"
    :cond_0
    move v5, v2

    move v0, v5

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$InspectorClientImpl;
    return v0
.end method
