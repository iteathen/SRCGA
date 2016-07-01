.class Ljavafx/scene/control/TreeCell$3;
.super Ljava/lang/Object;
.source "TreeCell.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeCell;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeCell;)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell$3;, "Ljavafx/scene/control/TreeCell$3;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeCell;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeCell$3;->this$0:Ljavafx/scene/control/TreeCell;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell$3;, "Ljavafx/scene/control/TreeCell$3;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeCell$3;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v2, v3

    .line 152
    .local v2, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 153
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeCell$3;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeCell;->requestLayout()V

    .line 155
    :cond_0
    return-void
.end method
