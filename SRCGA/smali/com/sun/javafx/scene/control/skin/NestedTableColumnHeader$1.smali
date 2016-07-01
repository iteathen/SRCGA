.class final Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$1;
.super Ljava/lang/Object;
.source "NestedTableColumnHeader.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/scene/input/MouseEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/MouseEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$1;->handle(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/input/MouseEvent;)V
    .locals 12

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$1;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/shape/Rectangle;

    move-object v2, v8

    .line 140
    .local v2, "rect":Ljavafx/scene/shape/Rectangle;
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/shape/Rectangle;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v8

    const-string v9, "TableColumn"

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TableColumnBase;

    move-object v3, v8

    .line 141
    .local v3, "column":Ljavafx/scene/control/TableColumnBase;
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/shape/Rectangle;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v8

    const-string v9, "TableColumnHeader"

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-object v4, v8

    .line 143
    .local v4, "header":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v8, v4

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->access$000(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 158
    :goto_0
    return-void

    .line 145
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getClickCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->isPrimaryButtonDown()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 148
    move-object v8, v4

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableViewSkin()Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;

    move-result-object v8

    move-object v9, v3

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;->resizeColumnToFitContent(Ljavafx/scene/control/TableColumnBase;I)V

    .line 157
    :goto_1
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 158
    goto :goto_0

    .line 152
    :cond_1
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/shape/Rectangle;

    move-object v5, v8

    .line 153
    .local v5, "innerRect":Ljavafx/scene/shape/Rectangle;
    move-object v8, v4

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->getTableHeaderRow()Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-result-object v8

    move-object v9, v5

    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/shape/Rectangle;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/scene/shape/Rectangle;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->sceneToLocal(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 154
    .local v6, "startX":D
    move-object v8, v4

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->access$102(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;D)D

    move-result-wide v8

    .line 155
    move-object v8, v4

    move-wide v9, v6

    invoke-static {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->access$200(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;D)V

    goto :goto_1
.end method
