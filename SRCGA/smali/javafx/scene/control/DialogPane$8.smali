.class Ljavafx/scene/control/DialogPane$8;
.super Ljavafx/beans/property/SimpleBooleanProperty;
.source "DialogPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/DialogPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/DialogPane;


# direct methods
.method constructor <init>(Ljavafx/scene/control/DialogPane;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$8;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/DialogPane;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move v4, p4

    .local v4, "x2":Z
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/DialogPane$8;->this$0:Ljavafx/scene/control/DialogPane;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 4

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$8;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane$8;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v2}, Ljavafx/scene/control/DialogPane;->getExpandableContent()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 656
    .local v1, "expandableContent":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 657
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane$8;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->isExpanded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setVisible(Z)V

    .line 660
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane$8;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v2}, Ljavafx/scene/control/DialogPane;->requestLayout()V

    .line 661
    return-void
.end method
