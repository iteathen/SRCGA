.class Lcom/sun/javafx/scene/control/skin/ContextMenuContent$2;
.super Ljava/lang/Object;
.source "ContextMenuContent.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->createSubmenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V
    .locals 4

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$2;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 855
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$2;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Boolean;>;"
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$2;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1100(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/ContextMenu;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v7

    if-nez v7, :cond_1

    .line 858
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$2;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v5, v7

    .line 859
    .local v5, "node":Ljavafx/scene/Node;
    move-object v7, v5

    instance-of v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    if-eqz v7, :cond_0

    move-object v7, v5

    check-cast v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    .line 860
    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->access$1000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/control/MenuItem;

    move-result-object v7

    instance-of v7, v7, Ljavafx/scene/control/Menu;

    if-eqz v7, :cond_0

    .line 861
    move-object v7, v5

    check-cast v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;->access$1000(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)Ljavafx/scene/control/MenuItem;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/Menu;

    move-object v6, v7

    .line 862
    .local v6, "menu":Ljavafx/scene/control/Menu;
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 863
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/control/Menu;->hide()V

    .line 866
    .end local v6    # "menu":Ljavafx/scene/control/Menu;
    :cond_0
    goto :goto_0

    .line 868
    .end local v5    # "node":Ljavafx/scene/Node;
    :cond_1
    return-void
.end method

.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    move-object v7, v3

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$2;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
