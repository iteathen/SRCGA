.class Ljavafx/scene/control/TableColumn$1$1;
.super Ljavafx/scene/control/TableCell;
.source "TableColumn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TableColumn$1;->call(Ljavafx/scene/control/TableColumn;)Ljavafx/scene/control/TableCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/TableCell",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TableColumn$1;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableColumn$1;)V
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$1$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableColumn$1;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumn$1$1;->this$0:Ljavafx/scene/control/TableColumn$1;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TableCell;-><init>()V

    return-void
.end method


# virtual methods
.method protected updateItem(Ljava/lang/Object;Z)V
    .locals 6

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$1$1;
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;
    move v2, p2

    .local v2, "empty":Z
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumn$1$1;->getItem()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 219
    :goto_0
    return-void

    .line 207
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/TableCell;->updateItem(Ljava/lang/Object;Z)V

    .line 209
    move-object v3, v1

    if-nez v3, :cond_1

    .line 210
    move-object v3, v0

    const/4 v4, 0x0

    invoke-super {v3, v4}, Ljavafx/scene/control/TableCell;->setText(Ljava/lang/String;)V

    .line 211
    move-object v3, v0

    const/4 v4, 0x0

    invoke-super {v3, v4}, Ljavafx/scene/control/TableCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 219
    :goto_1
    goto :goto_0

    .line 212
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/Node;

    if-eqz v3, :cond_2

    .line 213
    move-object v3, v0

    const/4 v4, 0x0

    invoke-super {v3, v4}, Ljavafx/scene/control/TableCell;->setText(Ljava/lang/String;)V

    .line 214
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljavafx/scene/Node;

    invoke-super {v3, v4}, Ljavafx/scene/control/TableCell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_1

    .line 216
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-super {v3, v4}, Ljavafx/scene/control/TableCell;->setText(Ljava/lang/String;)V

    .line 217
    move-object v3, v0

    const/4 v4, 0x0

    invoke-super {v3, v4}, Ljavafx/scene/control/TableCell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_1
.end method
