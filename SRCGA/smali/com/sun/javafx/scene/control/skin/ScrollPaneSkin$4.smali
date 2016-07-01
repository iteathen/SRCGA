.class Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;
.super Ljavafx/scene/layout/StackPane;
.source "ScrollPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->initialize()V
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
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/StackPane;-><init>()V

    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 7

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->getWidth()D

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->getHeight()D

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$2400(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;DD)V

    .line 293
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/scene/Node;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/scene/Node;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node;->isResizable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/scene/Node;

    move-result-object v1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$600(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->snapSize(D)D

    move-result-wide v2

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$700(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->snapSize(D)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavafx/scene/Node;->resize(DD)V

    .line 295
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$300(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z

    move-result v2

    if-ne v1, v2, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$400(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$500(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 296
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    .line 299
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/scene/Node;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 300
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/scene/Node;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavafx/scene/Node;->relocate(DD)V

    .line 302
    :cond_3
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$002(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;Z)Z

    move-result v1

    .line 283
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/StackPane;->requestLayout()V

    .line 287
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    .line 288
    return-void
.end method
