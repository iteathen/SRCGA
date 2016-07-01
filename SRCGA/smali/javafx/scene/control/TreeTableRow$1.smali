.class Ljavafx/scene/control/TreeTableRow$1;
.super Ljava/lang/Object;
.source "TreeTableRow.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableRow;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableRow;)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow$1;, "Ljavafx/scene/control/TreeTableRow$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableRow;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeTableRow$1;->this$0:Ljavafx/scene/control/TreeTableRow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow$1;, "Ljavafx/scene/control/TreeTableRow$1;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableRow$1;->this$0:Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v2, v3

    .line 111
    .local v2, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 112
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableRow$1;->this$0:Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableRow;->requestLayout()V

    .line 114
    :cond_0
    return-void
.end method
