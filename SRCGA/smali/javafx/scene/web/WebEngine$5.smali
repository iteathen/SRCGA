.class Ljavafx/scene/web/WebEngine$5;
.super Ljava/lang/Object;
.source "WebEngine.java"

# interfaces
.implements Ljavafx/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Callback",
        "<",
        "Ljavafx/scene/web/PopupFeatures;",
        "Ljavafx/scene/web/WebEngine;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/web/WebEngine;


# direct methods
.method constructor <init>(Ljavafx/scene/web/WebEngine;)V
    .locals 4

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebEngine;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebEngine$5;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$5;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/web/PopupFeatures;

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebEngine$5;->call(Ljavafx/scene/web/PopupFeatures;)Ljavafx/scene/web/WebEngine;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$5;
    return-object v0
.end method

.method public call(Ljavafx/scene/web/PopupFeatures;)Ljavafx/scene/web/WebEngine;
    .locals 3

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$5;
    move-object v1, p1

    .local v1, "p":Ljavafx/scene/web/PopupFeatures;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine$5;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$5;
    return-object v0
.end method
