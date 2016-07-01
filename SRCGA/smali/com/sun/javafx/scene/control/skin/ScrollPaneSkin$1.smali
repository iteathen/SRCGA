.class Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;
.super Ljava/lang/Object;
.source "ScrollPaneSkin.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 12

    .prologue
    .line 146
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;
    move-object v2, p1

    .local v2, "valueModel":Ljavafx/beans/Observable;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 147
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/scene/Node;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v8

    move-object v3, v8

    .line 148
    .local v3, "scrollNodeBounds":Ljavafx/geometry/Bounds;
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v8

    move-wide v4, v8

    .line 149
    .local v4, "scrollNodeWidth":D
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v8

    move-wide v6, v8

    .line 155
    .local v6, "scrollNodeHeight":D
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z

    move-result v8

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$300(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z

    move-result v9

    if-ne v8, v9, :cond_1

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$400(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z

    move-result v8

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$500(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z

    move-result v9

    if-ne v8, v9, :cond_1

    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    .line 156
    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$600(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v8

    move-wide v10, v4

    cmpl-double v8, v8, v10

    if-nez v8, :cond_1

    :cond_0
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_3

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    .line 157
    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$700(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v8

    move-wide v10, v6

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_3

    .line 158
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    .line 171
    .end local v3    # "scrollNodeBounds":Ljavafx/geometry/Bounds;
    .end local v4    # "scrollNodeWidth":D
    .end local v6    # "scrollNodeHeight":D
    :cond_2
    :goto_0
    return-void

    .line 165
    .restart local v3    # "scrollNodeBounds":Ljavafx/geometry/Bounds;
    .restart local v4    # "scrollNodeWidth":D
    .restart local v6    # "scrollNodeHeight":D
    :cond_3
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$800(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 166
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$900(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)V

    .line 167
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)V

    goto :goto_0
.end method
