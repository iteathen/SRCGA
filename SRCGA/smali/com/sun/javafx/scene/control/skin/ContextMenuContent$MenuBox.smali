.class Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;
.super Ljavafx/scene/layout/VBox;
.source "ContextMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuBox"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V
    .locals 4

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/VBox;-><init>()V

    .line 999
    move-object v2, v0

    sget-object v3, Ljavafx/scene/AccessibleRole;->CONTEXT_MENU:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 1000
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 13

    .prologue
    .line 1003
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$1300(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)D

    move-result-wide v8

    move-wide v2, v8

    .line 1004
    .local v2, "yOffset":D
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v5, v8

    .line 1005
    .local v5, "n":Ljavafx/scene/Node;
    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/Node;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1006
    move-object v8, v1

    move-object v9, v5

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->snapSize(D)D

    move-result-wide v8

    move-wide v6, v8

    .line 1007
    .local v6, "prefHeight":D
    move-object v8, v5

    move-object v9, v1

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getWidth()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->snapSize(D)D

    move-result-wide v9

    move-wide v11, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/Node;->resize(DD)V

    .line 1008
    move-object v8, v5

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->snappedLeftInset()D

    move-result-wide v9

    move-wide v11, v2

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/Node;->relocate(DD)V

    .line 1009
    move-wide v8, v2

    move-wide v10, v6

    add-double/2addr v8, v10

    move-wide v2, v8

    .line 1011
    .end local v6    # "prefHeight":D
    :cond_0
    goto :goto_0

    .line 1012
    .end local v5    # "n":Ljavafx/scene/Node;
    :cond_1
    return-void
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1016
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1019
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/layout/VBox;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;
    :goto_0
    return-object v0

    .line 1017
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$600(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/ContextMenu;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1018
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->access$600(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)Ljavafx/scene/control/ContextMenu;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1016
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
