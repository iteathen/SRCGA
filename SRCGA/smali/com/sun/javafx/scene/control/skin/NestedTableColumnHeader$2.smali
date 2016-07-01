.class final Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$2;
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
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$2;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/MouseEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$2;->handle(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/input/MouseEvent;)V
    .locals 8

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader$2;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/shape/Rectangle;

    move-object v2, v5

    .line 164
    .local v2, "rect":Ljavafx/scene/shape/Rectangle;
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v5

    const-string v6, "TableColumn"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TableColumnBase;

    move-object v3, v5

    .line 165
    .local v3, "column":Ljavafx/scene/control/TableColumnBase;
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v5

    const-string v6, "TableColumnHeader"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-object v4, v5

    .line 167
    .local v4, "header":Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;
    move-object v5, v4

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->access$000(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    move-object v5, v4

    move-object v6, v3

    move-object v7, v1

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->access$300(Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/input/MouseEvent;)V

    .line 170
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 171
    goto :goto_0
.end method
