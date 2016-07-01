.class Ljavafx/scene/control/TreeItem$1;
.super Ljava/lang/Object;
.source "TreeItem.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeItem;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeItem;)V
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$1;, "Ljavafx/scene/control/TreeItem$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeItem;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeItem$1;->this$0:Ljavafx/scene/control/TreeItem;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$1;, "Ljavafx/scene/control/TreeItem$1;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeItem$TreeModificationEvent;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeItem$1;->handle(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem$TreeModificationEvent",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$1;, "Ljavafx/scene/control/TreeItem$1;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<Ljava/lang/Object;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeItem$1;->this$0:Ljavafx/scene/control/TreeItem;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljavafx/scene/control/TreeItem;->access$002(Ljavafx/scene/control/TreeItem;Z)Z

    move-result v2

    .line 356
    return-void
.end method
