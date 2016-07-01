.class Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;
.super Ljava/lang/Object;
.source "WebEngine.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/web/WebEngine$InspectorClientImpl;->sendMessageToFrontend(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/web/WebEngine$InspectorClientImpl;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$messageCallback:Ljavafx/util/Callback;


# direct methods
.method constructor <init>(Ljavafx/scene/web/WebEngine$InspectorClientImpl;Ljavafx/util/Callback;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1336
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebEngine$InspectorClientImpl;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;->this$0:Ljavafx/scene/web/WebEngine$InspectorClientImpl;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;->val$messageCallback:Ljavafx/util/Callback;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;->val$message:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1336
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;->run()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 1338
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;->val$messageCallback:Ljavafx/util/Callback;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;->val$message:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1339
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$InspectorClientImpl$1;
    return-object v0
.end method
