.class Ljavafx/scene/control/Tooltip$1;
.super Ljavafx/beans/property/SimpleStringProperty;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Tooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Tooltip;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Tooltip;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Tooltip;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x2":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/Tooltip$1;->this$0:Ljavafx/scene/control/Tooltip;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 6

    .prologue
    .line 189
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Tooltip$1;
    move-object v3, v1

    invoke-super {v3}, Ljavafx/beans/property/SimpleStringProperty;->invalidated()V

    .line 190
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip$1;->get()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 191
    .local v2, "value":Ljava/lang/String;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/Tooltip$1;->this$0:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/control/Tooltip$1;->this$0:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v4}, Ljavafx/scene/control/Tooltip;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/Tooltip$1;->this$0:Ljavafx/scene/control/Tooltip;

    # getter for: Ljavafx/scene/control/Tooltip;->BEHAVIOR:Ljavafx/scene/control/Tooltip$TooltipBehavior;
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$200()Ljavafx/scene/control/Tooltip$TooltipBehavior;

    move-result-object v4

    invoke-static {v4}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->access$300(Ljavafx/scene/control/Tooltip$TooltipBehavior;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Tooltip;->setAnchorX(D)V

    .line 195
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/Tooltip$1;->this$0:Ljavafx/scene/control/Tooltip;

    # getter for: Ljavafx/scene/control/Tooltip;->BEHAVIOR:Ljavafx/scene/control/Tooltip$TooltipBehavior;
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$200()Ljavafx/scene/control/Tooltip$TooltipBehavior;

    move-result-object v4

    invoke-static {v4}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->access$400(Ljavafx/scene/control/Tooltip$TooltipBehavior;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Tooltip;->setAnchorY(D)V

    .line 197
    :cond_0
    return-void
.end method
