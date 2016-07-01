.class Ljavafx/scene/Scene$54;
.super Lcom/sun/glass/ui/Accessible$EventHandler;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Scene;->getAccessible()Lcom/sun/glass/ui/Accessible;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 6330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$54;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$54;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/Accessible$EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessControlContext()Ljava/security/AccessControlContext;
    .locals 2

    .prologue
    .line 6332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$54;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$54;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v1}, Ljavafx/scene/Scene;->impl_getPeer()Lcom/sun/javafx/tk/TKScene;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$54;
    return-object v0
.end method

.method public varargs getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 6337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$54;
    move-object/from16 v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object/from16 v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v7, Ljavafx/scene/Scene$55;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 6373
    :cond_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-super {v7, v8, v9}, Lcom/sun/glass/ui/Accessible$EventHandler;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Ljavafx/scene/Scene$54;
    :goto_0
    return-object v0

    .line 6339
    .restart local v0    # "this":Ljavafx/scene/Scene$54;
    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$54;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v7

    move-object v3, v7

    .line 6340
    .local v3, "root":Ljavafx/scene/Parent;
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 6341
    const/4 v7, 0x1

    new-array v7, v7, [Ljavafx/scene/Parent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x0

    move-object v10, v3

    aput-object v10, v8, v9

    invoke-static {v7}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 6346
    .end local v3    # "root":Ljavafx/scene/Parent;
    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$54;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v7

    move-object v3, v7

    .line 6347
    .local v3, "w":Ljavafx/stage/Window;
    move-object v7, v3

    instance-of v7, v7, Ljavafx/stage/Stage;

    if-eqz v7, :cond_0

    .line 6348
    move-object v7, v3

    check-cast v7, Ljavafx/stage/Stage;

    invoke-virtual {v7}, Ljavafx/stage/Stage;->getTitle()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 6353
    .end local v3    # "w":Ljavafx/stage/Window;
    :pswitch_2
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$54;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v7

    move-object v3, v7

    .line 6355
    .local v3, "window":Ljavafx/stage/Window;
    move-object v7, v2

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Ljavafx/geometry/Point2D;

    move-object v4, v7

    .line 6356
    .local v4, "pt":Ljavafx/geometry/Point2D;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$54;->this$0:Ljavafx/scene/Scene;

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Scene$54;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v10}, Ljavafx/scene/Scene;->getX()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/stage/Window;->getX()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v10

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/Scene$54;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v12}, Ljavafx/scene/Scene;->getY()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/stage/Window;->getY()D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/Scene;->access$4900(Ljavafx/scene/Scene;DD)Ljavafx/scene/input/PickResult;

    move-result-object v7

    move-object v5, v7

    .line 6357
    .local v5, "res":Ljavafx/scene/input/PickResult;
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 6358
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/input/PickResult;->getIntersectedNode()Ljavafx/scene/Node;

    move-result-object v7

    move-object v6, v7

    .line 6359
    .local v6, "node":Ljavafx/scene/Node;
    move-object v7, v6

    if-eqz v7, :cond_1

    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 6361
    .end local v6    # "node":Ljavafx/scene/Node;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$54;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 6363
    .end local v3    # "window":Ljavafx/stage/Window;
    .end local v4    # "pt":Ljavafx/geometry/Point2D;
    .end local v5    # "res":Ljavafx/scene/input/PickResult;
    :pswitch_3
    sget-object v7, Ljavafx/scene/AccessibleRole;->PARENT:Ljavafx/scene/AccessibleRole;

    move-object v0, v7

    goto/16 :goto_0

    .line 6364
    :pswitch_4
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$54;->this$0:Ljavafx/scene/Scene;

    move-object v0, v7

    goto/16 :goto_0

    .line 6366
    :pswitch_5
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$54;->this$0:Ljavafx/scene/Scene;

    invoke-static {v7}, Ljavafx/scene/Scene;->access$600(Ljavafx/scene/Scene;)Ljavafx/scene/Node;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 6367
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$54;->this$0:Ljavafx/scene/Scene;

    invoke-static {v7}, Ljavafx/scene/Scene;->access$600(Ljavafx/scene/Scene;)Ljavafx/scene/Node;

    move-result-object v7

    sget-object v8, Ljavafx/scene/AccessibleAttribute;->FOCUS_NODE:Ljavafx/scene/AccessibleAttribute;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 6369
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$54;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 6337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
