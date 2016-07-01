.class Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;
.super Ljavafx/beans/property/SimpleBooleanProperty;
.source "TableHeaderRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move v4, p4

    .local v4, "x2":Z
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;->this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 10

    .prologue
    .line 127
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;->this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getReorderingRegion()Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v5

    move-object v2, v5

    .line 128
    .local v2, "r":Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 129
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getNestedColumnHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v5, v2

    .line 130
    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getNestedColumnHeader()Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getHeight()D

    move-result-wide v5

    .line 131
    :goto_0
    move-wide v3, v5

    .line 133
    .local v3, "dragHeaderHeight":D
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;->this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->access$000(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)Ljavafx/scene/layout/StackPane;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;->this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->access$000(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)Ljavafx/scene/layout/StackPane;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v6

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 134
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;->this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->access$000(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)Ljavafx/scene/layout/StackPane;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;->this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getHeight()D

    move-result-wide v6

    move-wide v8, v3

    sub-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setTranslateY(D)V

    .line 136
    .end local v3    # "dragHeaderHeight":D
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;->this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->access$000(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)Ljavafx/scene/layout/StackPane;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;->this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->isReordering()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 137
    return-void

    .line 130
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$1;->this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    .line 131
    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->getReorderingRegion()Lcom/sun/javafx/scene/control/skin/TableColumnHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader;->getHeight()D

    move-result-wide v5

    goto :goto_0
.end method
