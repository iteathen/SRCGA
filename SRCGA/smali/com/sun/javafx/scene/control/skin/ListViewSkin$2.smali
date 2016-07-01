.class final Lcom/sun/javafx/scene/control/skin/ListViewSkin$2;
.super Ljavafx/scene/control/ListCell;
.source "ListViewSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ListViewSkin;->createDefaultCellImpl()Ljavafx/scene/control/ListCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/ListCell",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin$2;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ListCell;-><init>()V

    return-void
.end method


# virtual methods
.method public updateItem(Ljava/lang/Object;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin$2;
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Ljavafx/scene/control/ListCell;->updateItem(Ljava/lang/Object;Z)V

    .line 300
    move v5, v2

    if-eqz v5, :cond_0

    .line 301
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$2;->setText(Ljava/lang/String;)V

    .line 302
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$2;->setGraphic(Ljavafx/scene/Node;)V

    .line 320
    :goto_0
    return-void

    .line 303
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Ljavafx/scene/Node;

    if-eqz v5, :cond_3

    .line 304
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$2;->setText(Ljava/lang/String;)V

    .line 305
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$2;->getGraphic()Ljavafx/scene/Node;

    move-result-object v5

    move-object v3, v5

    .line 306
    .local v3, "currentNode":Ljavafx/scene/Node;
    move-object v5, v1

    check-cast v5, Ljavafx/scene/Node;

    move-object v4, v5

    .line 307
    .local v4, "newNode":Ljavafx/scene/Node;
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 308
    :cond_1
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$2;->setGraphic(Ljavafx/scene/Node;)V

    .line 310
    :cond_2
    goto :goto_0

    .line 317
    .end local v3    # "currentNode":Ljavafx/scene/Node;
    .end local v4    # "newNode":Ljavafx/scene/Node;
    :cond_3
    move-object v5, v0

    move-object v6, v1

    if-nez v6, :cond_4

    const-string v6, "null"

    :goto_1
    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$2;->setText(Ljava/lang/String;)V

    .line 318
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/ListViewSkin$2;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 317
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method
