.class Ljavafx/scene/control/TreeTableColumn$1$1;
.super Ljavafx/scene/control/TreeTableCell;
.source "TreeTableColumn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeTableColumn$1;->call(Ljavafx/scene/control/TreeTableColumn;)Ljavafx/scene/control/TreeTableCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableColumn$1;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableColumn$1;)V
    .locals 4

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$1$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableColumn$1;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeTableColumn$1$1;->this$0:Ljavafx/scene/control/TreeTableColumn$1;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableCell;-><init>()V

    return-void
.end method


# virtual methods
.method protected updateItem(Ljava/lang/Object;Z)V
    .locals 6

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$1$1;
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;
    move v2, p2

    .local v2, "empty":Z
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableColumn$1$1;->getItem()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 210
    :goto_0
    return-void

    .line 198
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/TreeTableCell;->updateItem(Ljava/lang/Object;Z)V

    .line 200
    move-object v3, v1

    if-nez v3, :cond_1

    .line 201
    move-object v3, v0

    const/4 v4, 0x0

    invoke-super {v3, v4}, Ljavafx/scene/control/TreeTableCell;->setText(Ljava/lang/String;)V

    .line 202
    move-object v3, v0

    const/4 v4, 0x0

    invoke-super {v3, v4}, Ljavafx/scene/control/TreeTableCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 210
    :goto_1
    goto :goto_0

    .line 203
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/Node;

    if-eqz v3, :cond_2

    .line 204
    move-object v3, v0

    const/4 v4, 0x0

    invoke-super {v3, v4}, Ljavafx/scene/control/TreeTableCell;->setText(Ljava/lang/String;)V

    .line 205
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljavafx/scene/Node;

    invoke-super {v3, v4}, Ljavafx/scene/control/TreeTableCell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_1

    .line 207
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-super {v3, v4}, Ljavafx/scene/control/TreeTableCell;->setText(Ljava/lang/String;)V

    .line 208
    move-object v3, v0

    const/4 v4, 0x0

    invoke-super {v3, v4}, Ljavafx/scene/control/TreeTableCell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_1
.end method
